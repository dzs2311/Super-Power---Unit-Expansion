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
local function FinishTransform(dummy, targetType, snap, ownerID)
	local plot = dummy and dummy:GetPlot()
	if not plot then return end
	local x, y = plot:GetX(), plot:GetY()
	local facing = dummy:GetFacingDirection()
	dummy:Kill()
	local newUnit = Players[ownerID]:InitUnit(targetType, x, y, -1, facing)
	if not newUnit then
		print("[TU] ERROR: InitUnit failed for target " .. tostring(targetType))
		return
	end
	Restore(newUnit, snap)
	pcall(function() UI.SelectUnit(newUnit) end)   -- 面板跟着切到新单位
end

--==========================================================================================
-- 开始变形（玩家路径）
--==========================================================================================
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

	local dummy = Players[ownerID]:InitUnit(dummyType, x, y, -1, facing)
	if not dummy then
		-- 过场单位生成失败：直接换目标单位，至少保证功能可用
		local fallback = Players[ownerID]:InitUnit(targetType, x, y, -1, facing)
		if fallback then Restore(fallback, snap) end
		return
	end

	dummy:SetMoves(0)
	dummy:SetHasPromotion(MARK, true)
	dummy:SetGraphicalFortify(true)              -- 播 ec=1500：TU_FOLD / TU_UNFOLD

	pending = { dummy = dummy, target = targetType, snap = snap, t0 = os.clock(), owner = ownerID }
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
	FinishTransform(dummy, P.target, P.snap, P.owner)
	print("[TU] transform finished")
end)

--==========================================================================================
-- 两个按钮（只对人类玩家出现；AI 走 SPUnit_Fix.lua 里的静默换单位）
--==========================================================================================
SPUE_TU_Sea2Air_Button = {
	Name = "TU Sea2Air",
	Title = "TXT_KEY_SPUE_AUTOCRACY_JUFORTRESSHEAD_TEXT_SHORT",
	OrderPriority = 205,
	IconAtlas = "SPUE_GAIA_ATLAS",
	PortraitIndex = 0,
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
	IconAtlas = "SPUE_GAIA_ATLAS",
	PortraitIndex = 1,
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
