-- MercenaryUnitsSelection
-- Author: dzs2311
-- C3：每单位专属底图 + 名单列表（大圆环显示当前选中）
--------------------------------------------------------------
include("IconSupport")
print("Mercenary Units Selection Loaded")

ContextPtr:SetHide(true)

--==========================================================================================
-- 数据：单位 与 其专属底图 一一对应
--==========================================================================================
local MED = {
	{ type = "UNIT_SPUE_VARANGIAN",  bg = "BgL1" },
	{ type = "UNIT_SPUE_GENOAXBOW",  bg = "BgL2" },
	{ type = "UNIT_SPUE_SWISSGUARD", bg = "BgL3" },
	{ type = "UNIT_SPUE_ELMETI",     bg = "BgL4" },
	{ type = "UNIT_SPUE_TABOR",      bg = "BgL5" },
}
local ENL = {
	{ type = "UNIT_SPUE_HESSIAN",     bg = "BgR1" },
	{ type = "UNIT_SPUE_SSPRIVATEER", bg = "BgR2" },
	{ type = "UNIT_SPUE_PRIVATEER",   bg = "BgR3" },
	{ type = "UNIT_SPUE_FUNE",        bg = "BgR4" },
}
local MAX_ROWS = 5

-- 运行时状态
local rowsL, rowsR = {}, {}          -- 行号 -> {unit=..., bg=...}
local selL, selR = nil, nil          -- 当前选中的行号
local unitL, unitR = nil, nil        -- 当前选中的单位（GameInfo 行）

local activePlayerID = Game.GetActivePlayer()
local activePlayer   = Players[activePlayerID]

-- 强权检测
local isSPEx = false
local isSPExID = "41450919-c52c-406f-8752-5ea34be32b2d"
for _, mod in pairs(Modding.GetActivatedMods()) do
	if mod.ID == isSPExID then isSPEx = true; break end
end

local function U(name) return GameInfo.Units[name] end
local function Ctl(id) return Controls[id] end

-- 行内数值（不带造价，避免行内换行）：战斗/远程/移动
local function StatShort(unit)
	local s = (unit.Combat or 0) .. "[ICON_STRENGTH]"
	local ranged = unit.RangedCombat or 0
	if ranged > 0 then
		s = s .. "  " .. ranged .. "[ICON_RANGE_STRENGTH]"
	end
	s = s .. "  " .. (unit.Moves or 0) .. "[ICON_MOVES]"
	return s
end

-- 上方选中信息行（带造价）
local function StatLine(unit)
	local melee  = unit.Combat or 0
	local ranged = unit.RangedCombat or 0
	local moves  = unit.Moves or 0
	local cost   = unit.Cost or 0
	if ranged > 0 then
		return Locale.ConvertTextKey("TXT_KEY_SPUE_MERC_STATS_RANGED", melee, ranged, moves, cost)
	end
	return Locale.ConvertTextKey("TXT_KEY_SPUE_MERC_STATS_MELEE", melee, moves, cost)
end

-- 文本键里自带 [COLOR_xxx]…[ENDCOLOR]（如单位名带青色），会盖掉 Label 的 Color0，
-- 这里去掉颜色标记，保留 ICON_ 之类的其它标记，让控件自身颜色生效。
local function PlainText(key)
	if not key then return "" end
	local s = Locale.ConvertTextKey(key)
	if not s then return "" end
	-- 注意 %w 不含下划线，[COLOR_POSITIVE_TEXT] 这类必须用 [%w_]
	s = s:gsub("%[COLOR_[%w_]+%]", "")
	s = s:gsub("%[ENDCOLOR%]", "")
	return s
end

--==========================================================================================
-- 是否已选过
--==========================================================================================
function IsHasChoose(player)
	for _, d in ipairs(MED) do
		local u = U(d.type)
		if u and player:HasPolicy(GameInfoTypes[u.PolicyType]) then return true end
	end
	for _, d in ipairs(ENL) do
		local u = U(d.type)
		if u and player:HasPolicy(GameInfoTypes[u.PolicyType]) then return true end
	end
	return false
end

--==========================================================================================
-- 画面刷新
--==========================================================================================
local function HideAllBg(side)
	local list = (side == "L") and MED or ENL
	for _, d in ipairs(list) do
		local c = Ctl(d.bg)
		if c then c:SetHide(true) end
	end
end

local function ShowBig(side, entry)
	if not entry then return end
	local big = Ctl(side == "L" and "BigIconL" or "BigIconR")
	local nm  = Ctl(side == "L" and "NameL" or "NameR")
	local st  = Ctl(side == "L" and "StatL" or "StatR")
	if big then
		big:SetHide(false)
		-- 环盘 64，图标 64（图集已注册尺寸）
		IconHookup(entry.unit.PortraitIndex, 64, entry.unit.IconAtlas, big)
	end
	if nm then nm:SetText(PlainText(entry.unit.Description)) end
	if st then st:SetText(StatLine(entry.unit)) end
	if side == "L" then
		unitL = entry.unit
	else
		unitR = entry.unit
	end
end

local function HideAllHi(side)
	for i = 1, MAX_ROWS do
		local hi   = Ctl("Row" .. side .. i .. "Hi")
		local sel  = Ctl("Row" .. side .. i .. "Sel")
		local mark = Ctl("Row" .. side .. i .. "Mark")
		if hi   then hi:SetHide(true)   end
		if sel  then sel:SetHide(true)  end
		if mark then mark:SetHide(true) end
	end
end

local function ShowHi(side, row)
	local hi   = Ctl("Row" .. side .. row .. "Hi")
	local sel  = Ctl("Row" .. side .. row .. "Sel")
	local mark = Ctl("Row" .. side .. row .. "Mark")
	if hi   then hi:SetHide(false)   end
	if sel  then sel:SetHide(false)  end
	if mark then mark:SetHide(false) end
end

local function UpdateProgress()
	local n = 0
	if unitL then n = n + 1 end
	if unitR then n = n + 1 end
	local lbl = Ctl("ProgressLabel")
	if lbl then lbl:SetText(Locale.ConvertTextKey("TXT_KEY_SPUE_MERC_PROGRESS", n)) end
end
local function ApplySelection(side, row)
	local rows = (side == "L") and rowsL or rowsR
	local entry = rows[row]
	if not entry then return end

	HideAllBg(side)
	local bg = Ctl(entry.bg)
	if bg then bg:SetHide(false) end

	ShowBig(side, entry)

	HideAllHi(side)
	ShowHi(side, row)

	if side == "L" then selL = row else selR = row end
	UpdateProgress()
end

-- 把可用单位填进名单行，多余的隐藏
local function BuildSide(side, data)
	local rows = {}
	for _, d in ipairs(data) do
		local u = U(d.type)
		if u and not activePlayer:HasPolicy(GameInfoTypes[u.PolicyType]) then
			rows[#rows + 1] = { unit = u, bg = d.bg }
		end
	end

	for i = 1, MAX_ROWS do
		local btn = Ctl("Row" .. side .. i)
		local row = rows[i]
		if btn then
			if row then
				btn:SetHide(false)
				local ic = Ctl("Row" .. side .. i .. "Icon")
				if ic then IconHookup(row.unit.PortraitIndex, 45, row.unit.IconAtlas, ic) end
				local nm = Ctl("Row" .. side .. i .. "Name")
				if nm then nm:SetText(PlainText(row.unit.Description)) end
				local st = Ctl("Row" .. side .. i .. "Stat")
				if st then st:SetText(StatShort(row.unit)) end

				if row.unit.Help then btn:SetToolTipString(Locale.ConvertTextKey(row.unit.Help)) end
			else
				btn:SetHide(true)
			end
		end
	end

	if side == "L" then rowsL = rows; selL = nil; unitL = nil
	else rowsR = rows; selR = nil; unitR = nil end

	-- 组头右侧「N 选 1」
	local cnt = Ctl("Count" .. side)
	if cnt then cnt:SetText(Locale.ConvertTextKey("TXT_KEY_SPUE_MERC_PICK_ONE", #rows)) end

	HideAllHi(side)

	-- 默认选中第一行
	if rows[1] then
		ApplySelection(side, 1)
	else
		HideAllBg(side)
		local nm = Ctl(side == "L" and "NameL" or "NameR")
		if nm then nm:SetText("") end
		local st = Ctl(side == "L" and "StatL" or "StatR")
		if st then st:SetText("") end
		local big = Ctl(side == "L" and "BigIconL" or "BigIconR")
		if big then big:SetHide(true) end
	end
	UpdateProgress()
end

--==========================================================================================
-- 初始化
--==========================================================================================
function initializeDialog()
	local pPlayer = activePlayer
	local leader  = GameInfo.Leaders[pPlayer:GetLeaderType()]
	local civ     = GameInfo.Civilizations[pPlayer:GetCivilizationType()]

	-- 文明自动解锁
	if civ then
		local function grant(name)
			local u = U(name)
			if u then pPlayer:SetHasPolicy(GameInfoTypes[u.PolicyType], true, true) end
		end
		if civ.Type == "CIVILIZATION_BYZANTIUM" then
			grant("UNIT_SPUE_VARANGIAN"); grant("UNIT_SPUE_GENOAXBOW")
		elseif civ.Type == "CIVILIZATION_FRANCE" then
			grant("UNIT_SPUE_ELMETI")
		elseif civ.Type == "CIVILIZATION_GERMANY" or civ.Type == "CIVILIZATION_AUSTRIA" then
			grant("UNIT_SPUE_HESSIAN")
		elseif civ.Type == "CIVILIZATION_CHINA" then
			grant("UNIT_SPUE_SSPRIVATEER")
		elseif civ.Type == "CIVILIZATION_JAPAN" then
			grant("UNIT_SPUE_FUNE")
		end
	end

	if leader then
		IconHookup(leader.PortraitIndex, 128, leader.IconAtlas, Ctl("MercenaryUnitLeaderPortrait"))
	else
		print("Mercenary: leader not found")
	end

	if isSPEx then
		Ctl("IconButtonTop"):SetToolTipString(Locale.ConvertTextKey("TXT_KEY_SPUE_MERCENARY_BUTTON_ICON_LEADER_TOP_WP"))
	end

	BuildSide("L", MED)
	BuildSide("R", ENL)
end

--==========================================================================================
-- AI
--==========================================================================================
function OnAIGetAllUnit(player)
	if player == nil or player:IsBarbarian() or player:IsHuman() then return end
	local first = U(MED[1].type)
	if not first then return end
	local pEraID = player:GetCurrentEra()
	if (player:HasPolicy(GameInfoTypes["POLICY_COMMERCE"]) and not player:HasPolicy(GameInfoTypes[first.PolicyType]))
	or (isSPEx and pEraID >= GameInfoTypes["ERA_MEDIEVAL"] and not player:HasPolicy(GameInfoTypes[first.PolicyType])) then
		for _, d in ipairs(MED) do
			local u = U(d.type)
			if u and not player:HasPolicy(GameInfoTypes[u.PolicyType]) then
				player:SetHasPolicy(GameInfoTypes[u.PolicyType], true, true)
			end
		end
		for _, d in ipairs(ENL) do
			local u = U(d.type)
			if u and not player:HasPolicy(GameInfoTypes[u.PolicyType]) then
				player:SetHasPolicy(GameInfoTypes[u.PolicyType], true, true)
			end
		end
		print("AI Can Train Policy Units - Mercenary!")
	end
end

function OnAdoptPolicyBranch(playerID)
	local player = Players[playerID]
	if player == nil or player:IsBarbarian() then return end
	if not player:IsHuman() then
		OnAIGetAllUnit(player)
		return
	end
	showDialog()
end

GameEvents.PlayerAdoptPolicyBranch.Add(function(playerID, policybranchID)
	if GameInfoTypes["POLICY_BRANCH_COMMERCE"] == policybranchID then
		OnAdoptPolicyBranch(playerID)
	end
end)

if isSPEx then
	GameEvents.PlayerSetEra.Add(function(playerID, era)
		if era >= GameInfoTypes["ERA_MEDIEVAL"] then
			OnAdoptPolicyBranch(playerID)
		end
	end)
end

--==========================================================================================
-- 按钮回调
--==========================================================================================
function onApplyButton()
	-- 允许只剩一列可选时直接确定（避免某列已被自动授予清空后无法关闭）
	if not unitL and not unitR then return end
	if unitL and unitR and unitL.ID == unitR.ID then return end
	if unitL then activePlayer:SetHasPolicy(GameInfoTypes[unitL.PolicyType], true, true) end
	if unitR then activePlayer:SetHasPolicy(GameInfoTypes[unitR.PolicyType], true, true) end
	hideDialog()
end

function showDialog()
	-- 热座/多人下当前玩家可能已切换，开窗前刷新
	activePlayerID = Game.GetActivePlayer()
	activePlayer   = Players[activePlayerID]
	if IsHasChoose(activePlayer) then return end
	ContextPtr:SetHide(false)
	initializeDialog()
end

function hideDialog()
	ContextPtr:SetHide(true)
end

Ctl("OKButton"):RegisterCallback(Mouse.eLclick, onApplyButton)

for i = 1, MAX_ROWS do
	local idx = i
	local bl = Ctl("RowL" .. idx)
	if bl then bl:RegisterCallback(Mouse.eLclick, function() ApplySelection("L", idx) end) end
	local br = Ctl("RowR" .. idx)
	if br then br:RegisterCallback(Mouse.eLclick, function() ApplySelection("R", idx) end) end
end
