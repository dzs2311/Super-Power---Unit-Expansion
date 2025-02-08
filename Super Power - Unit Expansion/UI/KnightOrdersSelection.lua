-- KnightOrdersSelection
-- Author: dzs2311
-- DateCreated: 2022/7/16 22:28:31
--------------------------------------------------------------
include ("IconSupport");
include ("MenuUtils");
print("Piety Units Selection Loaded");

-- Hide dialog by default.
ContextPtr:SetHide(true);
--==========================================================================================
-- Variables
--==========================================================================================
local g_PietyUnitList	=   {GameInfoTypes["UNIT_SPUE_FOOT_KNIGHT_TEMPLAR"], 
						     GameInfoTypes["UNIT_SPUE_KNIGHT_TEMPLAR"],
                             GameInfoTypes["UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER"],
						     GameInfoTypes["UNIT_SPUE_KNIGHT_HOSPITALLER"],
						     GameInfoTypes["UNIT_SPUE_FOOT_KNIGHT_TEUTONIC"],
						     GameInfoTypes["UNIT_SPUE_KNIGHT_TEUTONIC"]};
							
local g_KnightOrderList	=   {"Templar", "Hospitaller", "Teutonic"};

local g_PietyUnitLeft	= nil;
local g_PietyUnitRight	= nil;

local activePlayerID 		= Game.GetActivePlayer();
local activePlayer	 		= Players[activePlayerID];
--==========================================================================================
-- Main Functions
--==========================================================================================
-- Initializes All Components.
function initializeDialog()

	local pPlayer			= activePlayer;	
	local leader			= GameInfo.Leaders[pPlayer:GetLeaderType()];
	local activeCivID 		= pPlayer:GetCivilizationType();
	local activeCiv 		= GameInfo.Civilizations[activeCivID];

	-- 德国自动获得条顿骑士团建造能力
	if activeCiv then
		if activeCiv.Type == "CIVILIZATION_GERMANY" 
		then
			Controls.CreedButton2:SetHide(true);
			g_PietyUnitLeft  = g_PietyUnitList[5];
			g_PietyUnitRight = g_PietyUnitList[6];
		
			if g_PietyUnitLeft ~= nil 
			and g_PietyUnitRight ~= nil
			then
				local unitL = GameInfo.Units[g_PietyUnitLeft];
				local policyL = unitL.PolicyType;
				activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);
			end
			g_PietyUnitLeft		= nil;
			g_PietyUnitRight 	= nil;
		end
	end

	if leader then
		print("initializeDialog: Leader Found: " .. Locale.ConvertTextKey(leader.Description));
		IconHookup(leader.PortraitIndex, 128, leader.IconAtlas, Controls.PietyUnitLeaderPortrait);
	else
		print("Leader not found");
	end

	local i = 0;
	local unitKnightOrderInfo = g_PietyUnitList[i * 2 + 1];
	while unitKnightOrderInfo do
		local unitL = GameInfo.Units[g_PietyUnitList[i * 2 + 1]];
		local unitR = GameInfo.Units[g_PietyUnitList[i * 2 + 2]];

		local PortraitL = Controls["Portrait"..g_KnightOrderList[i + 1].."0"];
		local PortraitR = Controls["Portrait"..g_KnightOrderList[i + 1].."1"];

		if unitL then
			print("initializeDialog: UnitL Found: " .. Locale.ConvertTextKey(unitL.Description));
			IconHookup(unitL.PortraitIndex, 80, unitL.IconAtlas, PortraitL);
		else
			print("UnitL not found");
		end

		if unitR then
			print("initializeDialog: UnitR Found: " .. Locale.ConvertTextKey(unitR.Description));
			IconHookup(unitR.PortraitIndex, 80, unitR.IconAtlas, PortraitR);
		else
			print("UnitR not found");
		end
		
		i = i + 1;
		unitKnightOrderInfo =  g_PietyUnitList[i * 2 + 1];
	end

end


function OnAdoptPolicyBranch( playerID, policybranchID )
    local player = Players[playerID]	
    if player == nil or player:IsBarbarian() then return end
	-- if not player:IsHuman() then
	-- 	return
	-- end

	if(GameInfoTypes["POLICY_BRANCH_PIETY"] == policybranchID) then
		if not player:IsHuman() then
			-- AI Random Select
			-- local iL = math.random(1, 6)

			-- local unitL = GameInfo.Units[g_PietyUnitList[iL]]

			-- local policyL = unitL.PolicyType

			-- player:SetNumFreePolicies(1)
			-- player:SetNumFreePolicies(0)
			-- player:SetHasPolicy(GameInfo.Policies[policyL].ID, true)
			OnAIGetAllUnit(playerID)
			return
		else
			showDialog()
		end
	end

end
GameEvents.PlayerAdoptPolicyBranch.Add(OnAdoptPolicyBranch)

function OnAIGetAllUnit( playerID )
    local player = Players[playerID]	
    if player == nil or player:IsBarbarian() or player:IsHuman() then return end
	local unitL = GameInfo.Units[g_PietyUnitList[1]]
	local policyL = unitL.PolicyType

	if player:HasPolicy(GameInfo.Policies["POLICY_PIETY"].ID)
	and not player:HasPolicy(GameInfo.Policies[policyL].ID)
	then
		for k, v in pairs(g_PietyUnitList) do 
			local unit = GameInfo.Units[v]
			local policy = unit.PolicyType
			if not player:HasPolicy(GameInfo.Policies[policy].ID) then
				--player:SetNumFreePolicies(1)
				--player:SetNumFreePolicies(0)
				player:SetHasPolicy(GameInfo.Policies[policy].ID, true, true)
				print("AI Can Train Policy Units - Piety!")
			end
		end
	end
end

-- Handle the Adopt Button
-- 圣殿
function onAdoptButton0()
	local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end

	g_PietyUnitLeft  = g_PietyUnitList[1];
	g_PietyUnitRight = g_PietyUnitList[2];

	if g_PietyUnitLeft ~= nil 
	and g_PietyUnitRight ~= nil
	then
		
		local unitL = GameInfo.Units[g_PietyUnitLeft];

		local policyL = unitL.PolicyType;

		-- activePlayer:SetNumFreePolicies(1);
		-- activePlayer:SetNumFreePolicies(0);
		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);

		hideDialog();
	end
end
Controls.CreedButton0:RegisterCallback(Mouse.eLClick, onAdoptButton0);

-- 医院
function onAdoptButton1()
	local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end

	g_PietyUnitLeft  = g_PietyUnitList[3];
	g_PietyUnitRight = g_PietyUnitList[4];

	if g_PietyUnitLeft ~= nil 
	and g_PietyUnitRight ~= nil
	then
		
		local unitL = GameInfo.Units[g_PietyUnitLeft];

		local policyL = unitL.PolicyType;

		-- activePlayer:SetNumFreePolicies(1);
		-- activePlayer:SetNumFreePolicies(0);
		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);

		hideDialog();
	end
end
Controls.CreedButton1:RegisterCallback(Mouse.eLClick, onAdoptButton1);

-- 条顿
function onAdoptButton2()
	local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end

	g_PietyUnitLeft  = g_PietyUnitList[5];
	g_PietyUnitRight = g_PietyUnitList[6];

	if g_PietyUnitLeft ~= nil 
	and g_PietyUnitRight ~= nil
	then
		
		local unitL = GameInfo.Units[g_PietyUnitLeft];

		local policyL = unitL.PolicyType;

		-- activePlayer:SetNumFreePolicies(1);
		-- activePlayer:SetNumFreePolicies(0);
		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);

		hideDialog();
	end
end
Controls.CreedButton2:RegisterCallback(Mouse.eLClick, onAdoptButton2);
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

