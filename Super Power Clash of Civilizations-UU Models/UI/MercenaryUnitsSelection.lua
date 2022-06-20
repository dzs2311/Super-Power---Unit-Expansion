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

local g_MercenaryUnitList	= {GameInfoTypes["UNIT_SPUE_FCOMPANY"], 
							   GameInfoTypes["UNIT_SPUE_LIL_BOMBARD"],
							   GameInfoTypes["UNIT_SPUE_SSPRIVATEER"],
							   GameInfoTypes["UNIT_SPUE_GENOAXBOW"],
							   GameInfoTypes["UNIT_SPUE_SWISSGUARD"],
							   GameInfoTypes["UNIT_SPUE_VARANGIAN"]}


local g_MercenaryUnitLeft	= nil
local g_MercenaryUnitRight	= nil

local activePlayerID 		= Game.GetActivePlayer()
local activePlayer	 		= Players[activePlayerID]
--==========================================================================================
-- Main Functions
--==========================================================================================
-- Initializes All Components.
function initializeDialog()

	local pPlayer = activePlayer;	
	local leader = GameInfo.Leaders[pPlayer:GetLeaderType()];
	local unitL = GameInfo.Units[g_MercenaryUnitList[1]]
	local unitR = GameInfo.Units[g_MercenaryUnitList[2]]

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

	Controls.SelectListLeft:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_LEFT")
	Controls.SelectListRight:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_RIGHT")

end

function OnShowHide(bHide, bInit)
	if (not bHide) then
    	UpdateLeftUnitList()
		UpdateRightUnitList()
	end	
end
ContextPtr:SetShowHideHandler(OnShowHide)


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
	for k, v in pairs(g_MercenaryUnitList) do
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
	for k, v in pairs(g_MercenaryUnitList) do
		if g_MercenaryUnitRight ~= v then
			local unit = GameInfo.Units[v]
			local entry = {}
			Controls.SelectListRight:BuildEntry("InstanceOne", entry)

			entry.Button:SetVoid1(Locale.ConvertTextKey(v))
			entry.Button:SetText(Locale.ConvertTextKey(unit.Description))
		end
	end

	Controls.SelectListRight:GetButton():LocalizeAndSetText("TXT_KEY_SPUE_MERCENARY_MENU_UNIT_Right")	
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
		if not player:IsHuman() then
			-- AI Random Select
			local iL = random(1, 5)
			local iR = iL + 1

			local unitL = GameInfo.Units[g_MercenaryUnitList[iL]]
			local unitR = GameInfo.Units[g_MercenaryUnitList[iR]]

			local policyL = unitL.PolicyType
			local policyR = unitR.PolicyType

			player:SetNumFreePolicies(1)
			player:SetNumFreePolicies(0)
			player:SetHasPolicy(GameInfo.Policies[policyL].ID, true)

			player:SetNumFreePolicies(1)
			player:SetNumFreePolicies(0)
			player:SetHasPolicy(GameInfo.Policies[policyR].ID, true)
			return
		else
			showDialog()
		end
	end

end
GameEvents.PlayerAdoptPolicyBranch.Add(OnAdoptPolicyBranch)


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

		activePlayer:SetNumFreePolicies(1)
		activePlayer:SetNumFreePolicies(0)
		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true)

		activePlayer:SetNumFreePolicies(1)
		activePlayer:SetNumFreePolicies(0)
		activePlayer:SetHasPolicy(GameInfo.Policies[policyR].ID, true)

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
end

-- Hide function
function hideDialog()
	ContextPtr:SetHide(true)
end

--==========================================================================================
-- Game Procession Functions
--==========================================================================================
