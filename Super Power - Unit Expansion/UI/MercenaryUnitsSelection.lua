-- MercenaryUnitsSelection
-- Author: dzs2311
-- DateCreated: 2022/5/1 14:15:32
--------------------------------------------------------------
include ("IconSupport");
include ("MenuUtils");
print("Mercenary Units Selection Loaded")

-- Hide dialog by default.
ContextPtr:SetHide(true);
--==========================================================================================
-- Variables
--==========================================================================================

local g_MercenaryUnitListL	= {	GameInfo.Units["UNIT_SPUE_VARANGIAN"],
								GameInfo.Units["UNIT_SPUE_GENOAXBOW"],
								GameInfo.Units["UNIT_SPUE_SWISSGUARD"],
								GameInfo.Units["UNIT_SPUE_ELMETI"],
								GameInfo.Units["UNIT_SPUE_TABOR"]}

local g_MercenaryUnitListR	= {	GameInfo.Units["UNIT_SPUE_HESSIAN"],
								GameInfo.Units["UNIT_SPUE_SSPRIVATEER"],
								GameInfo.Units["UNIT_SPUE_PRIVATEER"],
								GameInfo.Units["UNIT_SPUE_FUNE"]}
							   
local g_MercenaryUnitLeft	= nil
local g_MercenaryUnitRight	= nil

local activePlayerID 		= Game.GetActivePlayer()
local activePlayer	 		= Players[activePlayerID]

-- 检测强权是否加载
local isSPEx = false
local isSPExID = "41450919-c52c-406f-8752-5ea34be32b2d"

for _, mod in pairs(Modding.GetActivatedMods()) do
	if (mod.ID == isSPExID) then
		isSPEx = true
		break
	end
end
--==========================================================================================
-- Main Functions
--==========================================================================================
-- Is ready choose?
function IsHasChoose(player)
	for k, unit in pairs(g_MercenaryUnitListL) do 
		local policy = unit.PolicyType;
		if player:HasPolicy(GameInfoTypes[policy]) then
			return true;
		end
	end

	for k, unit in pairs(g_MercenaryUnitListR) do 
		local policy = unit.PolicyType;
		if player:HasPolicy(GameInfoTypes[policy]) then
			return true;
		end
	end
	return false;
end
-- Initializes All Components.
function initializeDialog()

	local pPlayer = activePlayer;	
	local leader = GameInfo.Leaders[pPlayer:GetLeaderType()];
	local activeCivID 		= pPlayer:GetCivilizationType();
	local activeCiv 		= GameInfo.Civilizations[activeCivID];

	if activeCiv then
		if activeCiv.Type == "CIVILIZATION_BYZANTIUM" 
		then
			-- 拜占庭自动获得瓦兰吉卫队和热那亚佣兵建造能力
			local unitL = g_MercenaryUnitListL[1]
			local unitR = g_MercenaryUnitListL[2]
	
			local policyL = unitL.PolicyType
			local policyR = unitR.PolicyType
	
			pPlayer:SetHasPolicy(GameInfoTypes[policyL], true, true)
			pPlayer:SetHasPolicy(GameInfoTypes[policyR], true, true)
		elseif activeCiv.Type == "CIVILIZATION_FRANCE" 
		then
			-- 法兰西自动获得装甲骑兵建造能力
			local unitL = g_MercenaryUnitListL[4]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfoTypes[policyL], true, true)
		elseif (activeCiv.Type == "CIVILIZATION_GERMANY"
		or activeCiv.Type == "CIVILIZATION_AUSTRIA") 
		then
			-- 德意志奥地利自动获得黑森佣兵建造能力
			local unitL = g_MercenaryUnitListR[1]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfoTypes[policyL], true, true)
		elseif activeCiv.Type == "CIVILIZATION_CHINA" 
		then
			-- 中华文明自动获得南洋海盗船建造能力
			local unitL = g_MercenaryUnitListR[2]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfoTypes[policyL], true, true)
		elseif activeCiv.Type == "CIVILIZATION_JAPAN" 
		then
			-- 日本文明自动获得倭寇帆船建造能力
			local unitL = g_MercenaryUnitListR[4]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfoTypes[policyL], true, true)
		end
	end

	-- 找到第一个可选单位
	local unitL = nil
	local unitR = nil
	for k, unit in pairs(g_MercenaryUnitListL) do 
		local policy = unit.PolicyType;
		if not pPlayer:HasPolicy(GameInfoTypes[policy]) then
			unitL = g_MercenaryUnitListL[k];
			break;
		end
	end
	for k, unit in pairs(g_MercenaryUnitListR) do 
		local policy = unit.PolicyType;
		if not pPlayer:HasPolicy(GameInfoTypes[policy]) then
			unitR = g_MercenaryUnitListR[k];
			break;
		end
	end

	if leader then
		print("initializeDialog: Leader Found: " .. Locale.ConvertTextKey(leader.Description))
	
		-- Build CIV LEADER Potrair
		IconHookup(leader.PortraitIndex, 128, leader.IconAtlas, Controls.MercenaryUnitLeaderPortrait)
	else
		print("Leader not found")
	end
	
	if unitL then
		print("initializeDialog: Unit Found: " .. Locale.ConvertTextKey(unitL.Description))
	
		-- Build Unit Potrair
		IconHookup(unitL.PortraitIndex, 256, unitL.IconAtlas, Controls.PortraitLeft)
	else
		print("Unit not found")
	end

	if unitR then
		print("initializeDialog: Unit Found: " .. Locale.ConvertTextKey(unitR.Description))
	
		-- Build Unit Potrair
		IconHookup(unitR.PortraitIndex, 256, unitR.IconAtlas, Controls.PortraitRight)
	else
		print("Unit not found")
	end

	if isSPEx then
		Controls.IconButtonTop:SetToolTipString(Locale.ConvertTextKey("TXT_KEY_SPUE_MERCENARY_BUTTON_ICON_LEADER_TOP_WP"))
	end

	Controls.SelectListLeft:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_LEFT")
	Controls.SelectListRight:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_RIGHT")

end

function OnShowHide(bHide, bInit)
	if (not bHide) then
    	UpdateLeftUnitList()
		UpdateRightUnitList()
	end	
end
-- ContextPtr:SetShowHideHandler(OnShowHide)


-- Left pulldown list unit select.
function OnLeftSelected(unitID)
	local unit = GameInfo.Units[unitID]
	Controls.SelectListLeft:GetButton():SetText(Locale.ConvertTextKey(unit.Description))

	g_MercenaryUnitLeft = unitID
	Controls.IconButtonLeft:SetToolTipString(Locale.ConvertTextKey(unit.Help))
	IconHookup(unit.PortraitIndex, 256, unit.IconAtlas, Controls.PortraitLeft);

end


-- Left pulldown list update.
function UpdateLeftUnitList()
  	local iTeam = Game.GetActiveTeam()

  	Controls.SelectListLeft:ClearEntries()
	for k, unit in pairs(g_MercenaryUnitListL) do
		if g_MercenaryUnitRight ~= unit.ID 
		and not activePlayer:HasPolicy(GameInfoTypes[unit.PolicyType]) 
		then
			local entry = {}
			Controls.SelectListLeft:BuildEntry("InstanceOne", entry)

			entry.Button:SetVoid1(Locale.ConvertTextKey(unit.ID))
			entry.Button:SetText(Locale.ConvertTextKey(unit.Description))
		end
	end

	Controls.SelectListLeft:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_LEFT")	
	Controls.SelectListLeft:CalculateInternals()
	Controls.SelectListLeft:RegisterSelectionCallback(OnLeftSelected)
end


-- Right pulldown list unit select.
function OnRightSelected(unitID)
	local unit = GameInfo.Units[unitID]
	Controls.SelectListRight:GetButton():SetText(Locale.ConvertTextKey(unit.Description))

	g_MercenaryUnitRight = unitID
	Controls.IconButtonRight:SetToolTipString(Locale.ConvertTextKey(unit.Help))
	IconHookup(unit.PortraitIndex, 256, unit.IconAtlas, Controls.PortraitRight)

end


-- Right pulldown list update.
function UpdateRightUnitList()
  	local iTeam = Game.GetActiveTeam()

  	Controls.SelectListRight:ClearEntries()
	for k, unit in pairs(g_MercenaryUnitListR) do
		if g_MercenaryUnitRight ~= unit.ID
		and not activePlayer:HasPolicy(GameInfoTypes[unit.PolicyType]) 
		then
			local entry = {}
			Controls.SelectListRight:BuildEntry("InstanceOne", entry)

			entry.Button:SetVoid1(Locale.ConvertTextKey(unit.ID))
			entry.Button:SetText(Locale.ConvertTextKey(unit.Description))
		end
	end

	Controls.SelectListRight:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_RIGHT")	
	Controls.SelectListRight:CalculateInternals()
	Controls.SelectListRight:RegisterSelectionCallback(OnRightSelected)
end

-- AI Can Train All Policy Units
function OnAIGetAllUnit( player )
    if player == nil or player:IsBarbarian() or player:IsHuman() then return end
	local unitL = g_MercenaryUnitListL[1]
	local policyL = unitL.PolicyType
	local pEraID = player:GetCurrentEra();

	if (player:HasPolicy(GameInfoTypes["POLICY_COMMERCE"])
	and not player:HasPolicy(GameInfoTypes[policyL]))
	or (isSPEx and pEraID >= GameInfoTypes["ERA_MEDIEVAL"]
	and not player:HasPolicy(GameInfoTypes[policyL]))
	then
		for k, unit in pairs(g_MercenaryUnitListL) do 
			local policy = unit.PolicyType
			if not player:HasPolicy(GameInfoTypes[policy]) then
				player:SetHasPolicy(GameInfoTypes[policy], true, true)
				print("AI Can Train Policy Units - Mercenary!")
			end
		end
		for k, unit in pairs(g_MercenaryUnitListR) do 
			local policy = unit.PolicyType
			if not player:HasPolicy(GameInfoTypes[policy]) then
				player:SetHasPolicy(GameInfoTypes[policy], true, true)
				print("AI Can Train Policy Units - Mercenary!")
			end
		end
	end
end
-- Show the panel when player adopt policy branch commerce.
function OnAdoptPolicyBranch(playerID)
    local player = Players[playerID]	
    if player == nil or player:IsBarbarian() then
        return
    end

	if not player:IsHuman() then
		OnAIGetAllUnit( player )
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
		-- Show the panel when World Power Mod is active.
		if era >= GameInfoTypes["ERA_MEDIEVAL"] then
			OnAdoptPolicyBranch(playerID)
		end
	end)
end

-- Handle the Apply Button
function onApplyButton()
	if g_MercenaryUnitLeft ~= nil 
	and g_MercenaryUnitRight ~= nil
	and g_MercenaryUnitLeft ~= g_MercenaryUnitRight
	then
		
		local unitL = GameInfo.Units[g_MercenaryUnitLeft]
		local unitR = GameInfo.Units[g_MercenaryUnitRight]

		local policyL = unitL.PolicyType
		local policyR = unitR.PolicyType

		activePlayer:SetHasPolicy(GameInfoTypes[policyL], true, true)
		activePlayer:SetHasPolicy(GameInfoTypes[policyR], true, true)

		hideDialog()
	end
end
Controls.OKButton:RegisterCallback(Mouse.eLClick, onApplyButton)
--==========================================================================================
-- Smaller Functions
--==========================================================================================

-- Show function
function showDialog()
	if IsHasChoose(activePlayer) then return end
	-- Show panel
	ContextPtr:SetHide(false)

	-- Initialize
	initializeDialog()
	UpdateLeftUnitList()
	UpdateRightUnitList()

end

-- Hide function
function hideDialog()
	ContextPtr:SetHide(true)
end

--==========================================================================================
-- Game Procession Functions
--==========================================================================================
