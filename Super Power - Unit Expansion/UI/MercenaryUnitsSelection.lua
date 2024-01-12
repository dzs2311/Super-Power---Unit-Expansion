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

local g_MercenaryUnitListL	= {	GameInfoTypes["UNIT_SPUE_VARANGIAN"],
								GameInfoTypes["UNIT_SPUE_GENOAXBOW"],
								GameInfoTypes["UNIT_SPUE_SWISSGUARD"],
								GameInfoTypes["UNIT_SPUE_ELMETI"]}

local g_MercenaryUnitListR	= {	GameInfoTypes["UNIT_SPUE_HESSIAN"],
								GameInfoTypes["UNIT_SPUE_SSPRIVATEER"],
								GameInfoTypes["UNIT_SPUE_PRIVATEER"],
								GameInfoTypes["UNIT_SPUE_FUNE"]}
							   
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
-- Initializes All Components.
function initializeDialog()

	local pPlayer = activePlayer;	
	local leader = GameInfo.Leaders[pPlayer:GetLeaderType()];
	local activeCivID 		= pPlayer:GetCivilizationType();
	local activeCiv 		= GameInfo.Civilizations[activeCivID];

	if activeCiv then
		if GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_BYZANTIUM" 
		then
			-- 拜占庭自动获得瓦兰吉卫队和热那亚佣兵建造能力
			local unitL = GameInfo.Units[g_MercenaryUnitListL[1]]
			local unitR = GameInfo.Units[g_MercenaryUnitListL[2]]
	
			local policyL = unitL.PolicyType
			local policyR = unitR.PolicyType
	
			pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true)
			pPlayer:SetHasPolicy(GameInfo.Policies[policyR].ID, true, true)
			
			table.remove(g_MercenaryUnitListL, 1)
			table.remove(g_MercenaryUnitListL, 1)
		elseif GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_FRANCE" 
		then
			-- 法兰西自动获得装甲骑兵建造能力
			local unitL = GameInfo.Units[g_MercenaryUnitListL[4]]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true)
			table.remove(g_MercenaryUnitListL, 4)
		elseif GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_GERMANY" 
		then
			-- 德意志自动获得黑森佣兵建造能力
			local unitL = GameInfo.Units[g_MercenaryUnitListR[1]]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true)
			table.remove(g_MercenaryUnitListR, 1)
		elseif GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_CHINA" 
		then
			-- 中华文明自动获得南洋海盗船建造能力
			local unitL = GameInfo.Units[g_MercenaryUnitListR[2]]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true)
			table.remove(g_MercenaryUnitListR, 2)
		elseif GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_JAPAN" 
		then
			-- 日本文明自动获得倭寇帆船建造能力
			local unitL = GameInfo.Units[g_MercenaryUnitListR[4]]
			local policyL = unitL.PolicyType
			pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true)
			table.remove(g_MercenaryUnitListR, 4)
		end
	end

	local unitL = GameInfo.Units[g_MercenaryUnitListL[1]];
	local unitR = GameInfo.Units[g_MercenaryUnitListR[1]];

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
	for k, v in pairs(g_MercenaryUnitListL) do
		if g_MercenaryUnitRight ~= v then
			local unit = GameInfo.Units[v]
			local entry = {}
			Controls.SelectListLeft:BuildEntry("InstanceOne", entry)

			entry.Button:SetVoid1(Locale.ConvertTextKey(v))
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
	for k, v in pairs(g_MercenaryUnitListR) do
		if g_MercenaryUnitRight ~= v then
			local unit = GameInfo.Units[v]
			local entry = {}
			Controls.SelectListRight:BuildEntry("InstanceOne", entry)

			entry.Button:SetVoid1(Locale.ConvertTextKey(v))
			entry.Button:SetText(Locale.ConvertTextKey(unit.Description))
		end
	end

	Controls.SelectListRight:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_RIGHT")	
	Controls.SelectListRight:CalculateInternals()
	Controls.SelectListRight:RegisterSelectionCallback(OnRightSelected)
end


-- Show the panel when player adopt policy branch commerce.
function OnAdoptPolicyBranch( playerID, policybranchID )
    
    local player = Players[playerID]	

    if player == nil or player:IsBarbarian() then
        return
    end

	if not player:IsHuman() then
		return
	end

	if(GameInfo.PolicyBranchTypes["POLICY_BRANCH_COMMERCE"].ID == policybranchID) then
		showDialog()
	end


end
GameEvents.PlayerAdoptPolicyBranch.Add(OnAdoptPolicyBranch)
-- Show the panel when World Power Mod is active.
if isSPEx then
	function mercenaryUnitsWorldPowerFix(playerID)
		-- 加载强权进入中古时启用选择界面
		local player = Players[playerID]	

    	if player == nil or player:IsBarbarian() then
    	    return
    	end

		if not player:IsHuman() then
			OnAIDoTurn( playerID )
			return
		end

		if player:IsEverAlive() then
			local pEraType = player:GetCurrentEra();
			local pEraID = GameInfo.Eras[pEraType].ID;
			local flagMercenaryUnit = true

			for k, v in pairs(g_MercenaryUnitListL) do 
				local unit = GameInfo.Units[v];
				local policy = unit.PolicyType;
				if player:HasPolicy(GameInfo.Policies[policy].ID) then
					flagMercenaryUnit = false;
					break;
				end
			end

			for k, v in pairs(g_MercenaryUnitListR) do 
				local unit = GameInfo.Units[v];
				local policy = unit.PolicyType;
				if player:HasPolicy(GameInfo.Policies[policy].ID) then
					flagMercenaryUnit = false;
					break;
				end
			end

			if  pEraID >= GameInfo.Eras["ERA_MEDIEVAL"].ID and flagMercenaryUnit then
				showDialog();
			end
		end


	end
	Events.LoadScreenClose.Add(mercenaryUnitsWorldPowerFix)
	GameEvents.TeamSetEra.Add(mercenaryUnitsWorldPowerFix)
end

function OnAIDoTurn( playerID )
    local player = Players[playerID]	
    if player == nil or player:IsBarbarian() or player:IsHuman() then return end
	local unitL = GameInfo.Units[g_MercenaryUnitListL[1]]
	local policyL = unitL.PolicyType
	local pEraType = player:GetCurrentEra();
	local pEraID = GameInfo.Eras[pEraType].ID;	

	if (player:HasPolicy(GameInfo.Policies["POLICY_COMMERCE"].ID)
	and not player:HasPolicy(GameInfo.Policies[policyL].ID))
	or (isSPEx and pEraID >= GameInfo.Eras["ERA_MEDIEVAL"].ID
	and not player:HasPolicy(GameInfo.Policies[policyL].ID))
	then
		for k, v in pairs(g_MercenaryUnitListL) do 
			local unit = GameInfo.Units[v]
			local policy = unit.PolicyType
			if not player:HasPolicy(GameInfo.Policies[policy].ID) then
				player:SetHasPolicy(GameInfo.Policies[policy].ID, true, true)
				print("AI Can Train Policy Units - Mercenary!")
			end
		end
		for k, v in pairs(g_MercenaryUnitListR) do 
			local unit = GameInfo.Units[v]
			local policy = unit.PolicyType
			if not player:HasPolicy(GameInfo.Policies[policy].ID) then
				player:SetHasPolicy(GameInfo.Policies[policy].ID, true, true)
				print("AI Can Train Policy Units - Mercenary!")
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(OnAIDoTurn)


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

		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true)
		activePlayer:SetHasPolicy(GameInfo.Policies[policyR].ID, true, true)

		hideDialog()
	end
end
Controls.OKButton:RegisterCallback(Mouse.eLClick, onApplyButton)
--==========================================================================================
-- Smaller Functions
--==========================================================================================

-- Show function
function showDialog()
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
