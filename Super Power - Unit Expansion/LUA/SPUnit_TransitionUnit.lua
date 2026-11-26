--==========================================================================================================================
-- 超级要塞 · 变形过场单位（dummy）
-- 2026-11-26
--
-- 流程（仅玩家）：真单位 --含属性快照--> 过场单位（播 3.53s 变形）--> 目标真单位
-- 过场单位带 PROMOTION_SPUE_TU_TRANSFORMING 标记：AI 不生成、读档时自动收尾。
-- 资产：Art\Units\Policy\11-Autocracy\TransformUnit\
--==========================================================================================================================
print("SPUnit TransitionUnit Loaded")

local TRANSFORM_MS = 3533          -- TU_FOLD/TU_UNFOLD 时长（106 帧 @30fps = 3.53s）

local MARK          = GameInfoTypes.PROMOTION_SPUE_TU_TRANSFORMING
local SHIP_PROMO    = GameInfoTypes.PROMOTION_SPUE_AUTOCRACY_JUFORTRESSSHIP
local HEAD_PROMO    = GameInfoTypes.PROMOTION_SPUE_AUTOCRACY_JUFORTRESSHEAD
local DUMMY_SEA2AIR = GameInfoTypes.UNIT_SPUE_TU_SEA2AIR
local DUMMY_AIR2SEA = GameInfoTypes.UNIT_SPUE_TU_AIR2SEA
local UNIT_HEAD     = GameInfoTypes.UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD
local UNIT_SHIP     = GameInfoTypes.UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP

local pending = nil   -- { dummy=, target=, snap=, t0=, owner= }

--==========================================================================================
-- 属性快照 / 还原
--==========================================================================================
local function Snapshot(unit)
	local snap = {
		level  = unit:GetLevel(),
		xp     = unit:GetExperience(),
		damage = unit:GetDamage(),
		name   = unit:HasName() and unit:GetNameNoDesc() or nil,
		promos = {},
	}
	for row in GameInfo.UnitPromotions() do
		local pid = row.ID
		-- 不搬"形态身份"和"变形标记"，避免两台单位互相携带对方的身份晋升
		if pid ~= SHIP_PROMO and pid ~= HEAD_PROMO and pid ~= MARK
			and unit:IsHasPromotion(pid) and not row.LostWithUpgrade then
			table.insert(snap.promos, pid)
		end
	end
	return snap
end

local function Restore(unit, snap)
	if not unit or not snap then return end
	unit:SetLevel(snap.level)
	unit:SetExperience(snap.xp)
	if snap.damage and snap.damage > 0 then unit:SetDamage(snap.damage) end
	if snap.name then unit:SetName(snap.name) end
	for _, pid in ipairs(snap.promos) do
		unit:SetHasPromotion(pid, true)
	end
	unit:SetMoves(0)
end

--==========================================================================================
-- 结束一次变形：过场单位 → 目标真单位
--==========================================================================================
local function FinishTransform(dummy, targetType, snap, ownerID, px, py, facing)
	local plot = (px and Map.GetPlot(px, py)) or (dummy and dummy:GetPlot())
	if not plot then return end
	pcall(function() UI.SelectUnit(nil) end)
	local x, y = plot:GetX(), plot:GetY()
	if facing == nil then
		facing = dummy and dummy:GetFacingDirection() or 0
	end
	print("[TU] finish: 目标朝向=" .. tostring(facing) .. " 过场单位朝向=" .. tostring(dummy and dummy:GetFacingDirection()))

	local far = FindFarWaterPlot(x, y)

	-- 过场单位先挪走再销毁（销毁反馈在画面外）
	if dummy and not dummy:IsDead() then
		if far then pcall(function() dummy:SetXY(far:GetX(), far:GetY()) end) end
		dummy:Kill()
	end

	-- 目标单位在画面外生成，再瞬移到位（生成反馈也在画面外）
	local newUnit = nil
	if far then
		newUnit = Players[ownerID]:InitUnit(targetType, far:GetX(), far:GetY(), -1, facing)
		if newUnit then
			local ok = pcall(function() newUnit:SetXY(x, y) end)
			if not ok or newUnit:GetPlot() ~= plot then
				newUnit:Kill()
				newUnit = nil
			end
		end
	end
	if not newUnit then
		newUnit = Players[ownerID]:InitUnit(targetType, x, y, -1, facing)
	end
	if not newUnit then
		print("[TU] ERROR: InitUnit failed for target " .. tostring(targetType))
		return
	end
	Restore(newUnit, snap)
end

--==========================================================================================
-- 开始变形（玩家路径）
--==========================================================================================
-- [实验] 找一个远离镜头的水面空格：只用于"过场单位"的生成，验证闪光是不是位置性的
local function FindFarWaterPlot(x, y)
	for r = 18, 6, -3 do
		for dx = -r, r do
			for dy = -r, r do
				local px, py = x + dx, y + dy
				if px >= 0 and py >= 0 then
					local p = Map.GetPlot(px, py)
					if p and p:IsWater() and p:GetNumUnits() == 0 then
						return p
					end
				end
			end
		end
	end
	return nil
end

local function StartTransform(unit, dummyType, targetType)
	if pending then return end                    -- 同一时间只允许一次
	if not unit or unit:IsDead() or not unit:CanMove() then return end

	local ownerID = unit:GetOwner()
	local plot    = unit:GetPlot()
	if not plot then return end
	local x, y     = plot:GetX(), plot:GetY()
	local facing   = unit:GetFacingDirection()
	local snap     = Snapshot(unit)

	unit:Kill()

	-- [实验] 过场单位改为"画面外生成 + 瞬移到位"，只改这一处
	local dummy = nil
	local far = FindFarWaterPlot(x, y)
	if far then
		dummy = Players[ownerID]:InitUnit(dummyType, far:GetX(), far:GetY(), -1, facing)
		if dummy then
			local ok = pcall(function() dummy:SetXY(x, y) end)
			if ok and dummy:GetPlot() == plot then
				print("[TU][实验] 过场单位在远处生成后瞬移到位")
			else
				print("[TU][实验] 瞬移失败，回退原地生成")
				dummy:Kill()
				dummy = nil
			end
		end
	end
	if not dummy then
		print("[TU][实验] 没有找到远处空格，原地生成")
		dummy = Players[ownerID]:InitUnit(dummyType, x, y, -1, facing)
	end
	if not dummy then
		-- 过场单位生成失败：直接换目标单位，至少保证功能可用
		local fallback = Players[ownerID]:InitUnit(targetType, x, y, -1, facing)
		if fallback then Restore(fallback, snap) end
		return
	end

	dummy:SetMoves(0)
	dummy:SetHasPromotion(MARK, true)
	dummy:SetGraphicalFortify(true)              -- 播 ec=1500：TU_FOLD / TU_UNFOLD

	pending = { dummy = dummy, target = targetType, snap = snap, t0 = os.clock(), owner = ownerID,
	            x = x, y = y, facing = facing }
	print("[TU] transform started: dummy=" .. tostring(dummyType) .. " -> " .. tostring(targetType))
end

--==========================================================================================
-- 计时：逐帧累计，播完再换单位
--==========================================================================================
ContextPtr:SetUpdate(function()
	if not pending then return end
	if (os.clock() - pending.t0) * 1000 < TRANSFORM_MS then return end

	local P = pending
	pending = nil
	local dummy = P.dummy
	if not dummy or dummy:IsDead() then return end
	FinishTransform(dummy, P.target, P.snap, P.owner, P.x, P.y, P.facing)
	print("[TU] transform finished")
end)

--==========================================================================================
-- 两个按钮（只对人类玩家出现；AI 走 SPUnit_Fix.lua 里的静默换单位）
--==========================================================================================
SPUE_TU_Sea2Air_Button = {
	Name = "TU Sea2Air",
	Title = "TXT_KEY_SPUE_AUTOCRACY_JUFORTRESSHEAD_TEXT_SHORT",
	OrderPriority = 205,
	IconAtlas = "SPUE_IDEO_ATLAS",          -- 45/64 两种尺寸都有；SPUE_GAIA_ATLAS 只有 45，按钮会白块
	PortraitIndex = 8,                      -- = 天空堡垒的单位图标
	ToolTip = "TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD_HELP",
	Condition = function(action, unit)
		return unit:GetOwner() == Game.GetActivePlayer()
			and unit:CanMove()
			and unit:IsHasPromotion(SHIP_PROMO)
	end,
	Disabled = function(action, unit) return false end,
	Action = function(action, unit, eClick)
		StartTransform(unit, DUMMY_SEA2AIR, UNIT_HEAD)
	end,
}
LuaEvents.UnitPanelActionAddin(SPUE_TU_Sea2Air_Button)

SPUE_TU_Air2Sea_Button = {
	Name = "TU Air2Sea",
	Title = "TXT_KEY_SPUE_AUTOCRACY_JUFORTRESSSHIP_TEXT_SHORT",
	OrderPriority = 205,
	IconAtlas = "SPUE_IDEO_ATLAS",
	PortraitIndex = 12,                     -- = 海上堡垒的单位图标
	ToolTip = "TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP_HELP",
	Condition = function(action, unit)
		return unit:GetOwner() == Game.GetActivePlayer()
			and unit:CanMove()
			and unit:IsHasPromotion(HEAD_PROMO)
	end,
	Disabled = function(action, unit)
		return not unit:GetPlot():IsWater()      -- 海上堡垒只能落在水里
	end,
	Action = function(action, unit, eClick)
		StartTransform(unit, DUMMY_AIR2SEA, UNIT_SHIP)
	end,
}
LuaEvents.UnitPanelActionAddin(SPUE_TU_Air2Sea_Button)

--==========================================================================================
-- 选中拦截（尽力而为：拦不住也不会让单位被下令，因为它 Moves=0）
--==========================================================================================
Events.UnitSelectionChanged.Add(function(playerID, unitID, i, j, k, isSelected)
	if not isSelected or playerID ~= Game.GetActivePlayer() then return end
	local unit = Players[playerID]:GetUnitByID(unitID)
	if unit and unit:IsHasPromotion(MARK) then
		pcall(function() UI.SelectUnit(nil) end)   -- 成功就取消选中，失败就算了
	end
end)

--==========================================================================================
-- 读档收尾：残留的过场单位直接转成目标形态
--==========================================================================================
local function CleanupOnLoad()
	pending = nil
	for iPlayer = 0, GameDefines.MAX_PLAYERS - 1 do
		local player = Players[iPlayer]
		if player and player:IsAlive() then
			for unit in player:Units() do
				if unit:IsHasPromotion(MARK) then
					local target = nil
					if unit:GetUnitType() == DUMMY_SEA2AIR then target = UNIT_HEAD
					elseif unit:GetUnitType() == DUMMY_AIR2SEA then target = UNIT_SHIP end
					if target then
						FinishTransform(unit, target, nil, iPlayer)
						print("[TU] leftover dummy cleaned up on load")
					else
						unit:Kill()      -- 不认识的过场单位，直接删掉
					end
				end
			end
		end
	end
end

Events.LoadScreenClose.Add(CleanupOnLoad)
