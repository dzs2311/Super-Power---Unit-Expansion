-- EmperorPathSelection
-- Author: dzs-local
-- DateCreated: 2022/11/26 15:02:35
--------------------------------------------------------------
-- EmperorPathSelection
-- Author: dzs2311
-- DateCreated: 2022/7/16 22:28:31
--------------------------------------------------------------
include ("IconSupport");
include ("MenuUtils");
print("Patronage Units Selection Loaded");

-- Hide dialog by default.
ContextPtr:SetHide(true);
--==========================================================================================
-- Variables
--==========================================================================================
local g_PatronageUnitList	=   {GameInfoTypes["UNIT_SPUE_GENERAL_BODYGUARD"], 
								 GameInfoTypes["UNIT_SPUE_SOCII_HASTATI"],
						     	 GameInfoTypes["UNIT_SPUE_VASSAL_BOWMAN"],
                             	 
								 GameInfoTypes["UNIT_SPUE_BUCELLARII_GUARD"],
								 GameInfoTypes["UNIT_SPUE_OCEAN_FIRE"],
						     	 GameInfoTypes["UNIT_SPUE_FIRE_THROWER"],

						     	 GameInfoTypes["UNIT_SPUE_TREASURE_FLEET"],
						     	 GameInfoTypes["UNIT_SPUE_CORVETTE"],
						     	 GameInfoTypes["UNIT_SPUE_SHENJI_MUSKETEER"]};
							
local g_EmperorPathList	=   {"Augustus", "Baselius", "Emperor"};

local g_PatronageUnitLeft	= nil;
local g_PatronageUnitMid	= nil;
local g_PatronageUnitRight	= nil;

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

	-- 罗马自动获得奥古斯都之路
	if activeCiv then
		if activeCiv.Type == "CIVILIZATION_ROME" 
		or activeCiv.Type == "CIVILIZATION_CAESAR"
		then
			Controls.CreedButton0:SetHide(true);
			g_PatronageUnitLeft  = g_PatronageUnitList[1];
			g_PatronageUnitMid   = g_PatronageUnitList[2];
			g_PatronageUnitRight = g_PatronageUnitList[3];
		
			if g_PatronageUnitLeft ~= nil 
			and g_PatronageUnitRight ~= nil
			and g_PatronageUnitMid ~= nil
			then		
				local unitL = GameInfo.Units[g_PatronageUnitLeft];		
				local policyL = unitL.PolicyType;
				pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);
			end

			g_PatronageUnitLeft		= nil;
			g_PatronageUnitMid		= nil;
			g_PatronageUnitRight 	= nil;
		end
	end

	-- 拜占庭自动获得巴西琉斯之道
	if activeCiv then
		if activeCiv.Type == "CIVILIZATION_BYZANTIUM" then
			Controls.CreedButton1:SetHide(true);
			g_PatronageUnitLeft  = g_PatronageUnitList[4];
			g_PatronageUnitMid   = g_PatronageUnitList[5];
			g_PatronageUnitRight = g_PatronageUnitList[6];
		
			if g_PatronageUnitLeft ~= nil 
			and g_PatronageUnitRight ~= nil
			and g_PatronageUnitMid ~= nil
			then		
				local unitL = GameInfo.Units[g_PatronageUnitLeft];		
				local policyL = unitL.PolicyType;
				pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);
			end

			g_PatronageUnitLeft		= nil;
			g_PatronageUnitMid		= nil;
			g_PatronageUnitRight 	= nil;
		end
	end
	
	-- 中国自动获得神州天子之权
	if activeCiv then
		if activeCiv.Type == "CIVILIZATION_CHINA" 
		then
			Controls.CreedButton2:SetHide(true);
			g_PatronageUnitLeft  = g_PatronageUnitList[7];
			g_PatronageUnitMid   = g_PatronageUnitList[8];
			g_PatronageUnitRight = g_PatronageUnitList[9];
		
			if g_PatronageUnitLeft ~= nil 
			and g_PatronageUnitRight ~= nil
			and g_PatronageUnitMid ~= nil
			then		
				local unitL = GameInfo.Units[g_PatronageUnitLeft];		
				local policyL = unitL.PolicyType;
				pPlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);
			end

			g_PatronageUnitLeft		= nil;
			g_PatronageUnitMid		= nil;
			g_PatronageUnitRight 	= nil;
		end
	end

	if leader then
		print("initializeDialog: Leader Found: " .. Locale.ConvertTextKey(leader.Description));
		IconHookup(leader.PortraitIndex, 128, leader.IconAtlas, Controls.PatronageUnitLeaderPortrait);
	else
		print("Leader not found");
	end

	local i = 0;
	local unitEmperorPathInfo = g_PatronageUnitList[i * 3 + 1];
	while unitEmperorPathInfo do
		local unitL = GameInfo.Units[g_PatronageUnitList[i * 3 + 1]];
		local unitM = GameInfo.Units[g_PatronageUnitList[i * 3 + 2]];
		local unitR = GameInfo.Units[g_PatronageUnitList[i * 3 + 3]];

		local PortraitL = Controls["Portrait"..g_EmperorPathList[i + 1].."0"];
		local PortraitM = Controls["Portrait"..g_EmperorPathList[i + 1].."1"];
		local PortraitR = Controls["Portrait"..g_EmperorPathList[i + 1].."2"];

		if unitL then
			print("initializeDialog: UnitL Found: " .. Locale.ConvertTextKey(unitL.Description));
			IconHookup(unitL.PortraitIndex, 80, unitL.IconAtlas, PortraitL);
		else
			print("UnitL not found");
		end

		if unitM then
			print("initializeDialog: UnitM Found: " .. Locale.ConvertTextKey(unitM.Description));
			IconHookup(unitM.PortraitIndex, 80, unitM.IconAtlas, PortraitM);
		else
			print("UnitM not found");
		end

		if unitR then
			print("initializeDialog: UnitR Found: " .. Locale.ConvertTextKey(unitR.Description));
			IconHookup(unitR.PortraitIndex, 80, unitR.IconAtlas, PortraitR);
		else
			print("UnitR not found");
		end
		
		i = i + 1;
		unitEmperorPathInfo =  g_PatronageUnitList[i * 3 + 1];
	end

end


function OnAdoptPolicyBranch( playerID, policybranchID )
    local player = Players[playerID]	
    if player == nil or player:IsBarbarian() then return end
	-- if not player:IsHuman() then
	-- 	return
	-- end

	if(GameInfoTypes["POLICY_BRANCH_PATRONAGE"] == policybranchID) then
		if not player:IsHuman() then
			-- AI Random Select
			-- local iL = math.random(1, 6)

			-- local unitL = GameInfo.Units[g_PatronageUnitList[iL]]

			-- local policyL = unitL.PolicyType

			-- player:SetNumFreePolicies(1)
			-- player:SetNumFreePolicies(0)
			-- player:SetHasPolicy(GameInfo.Policies[policyL].ID, true)
			OnAIGetAllUnit( playerID )
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
	local unitL = GameInfo.Units[g_PatronageUnitList[1]]
	local policyL = unitL.PolicyType

	if player:HasPolicy(GameInfo.Policies["POLICY_PATRONAGE"].ID)
	and not player:HasPolicy(GameInfo.Policies[policyL].ID)
	then
		for k, v in pairs(g_PatronageUnitList) do 
			local unit = GameInfo.Units[v]
			local policy = unit.PolicyType
			if not player:HasPolicy(GameInfo.Policies[policy].ID) then
				-- player:SetNumFreePolicies(1)
				-- player:SetNumFreePolicies(0)
				player:SetHasPolicy(GameInfo.Policies[policy].ID, true, true)
				print("AI Can Train Policy Units - Patronage!")
			end
		end
	end
end


-- Handle the Adopt Button
-- 奥古斯都
function onAdoptButton0()
	local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end

	g_PatronageUnitLeft  = g_PatronageUnitList[1];
	g_PatronageUnitMid   = g_PatronageUnitList[2];
	g_PatronageUnitRight = g_PatronageUnitList[3];

	if g_PatronageUnitLeft ~= nil 
	and g_PatronageUnitRight ~= nil
	and g_PatronageUnitMid ~= nil
	then
		
		local unitL = GameInfo.Units[g_PatronageUnitLeft];

		local policyL = unitL.PolicyType;

		-- activePlayer:SetNumFreePolicies(1);
		-- activePlayer:SetNumFreePolicies(0);
		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);

		hideDialog();
	end
end
Controls.CreedButton0:RegisterCallback(Mouse.eLClick, onAdoptButton0);

-- 巴西琉斯
function onAdoptButton1()
	local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end

	g_PatronageUnitLeft  = g_PatronageUnitList[4];
	g_PatronageUnitMid   = g_PatronageUnitList[5];
	g_PatronageUnitRight = g_PatronageUnitList[6];

	if g_PatronageUnitLeft ~= nil 
	and g_PatronageUnitRight ~= nil
	and g_PatronageUnitMid ~= nil
	then
		
		local unitL = GameInfo.Units[g_PatronageUnitLeft];

		local policyL = unitL.PolicyType;

		-- activePlayer:SetNumFreePolicies(1);
		-- activePlayer:SetNumFreePolicies(0);
		activePlayer:SetHasPolicy(GameInfo.Policies[policyL].ID, true, true);

		hideDialog();
	end
end
Controls.CreedButton1:RegisterCallback(Mouse.eLClick, onAdoptButton1);

-- 神州天子
function onAdoptButton2()
	local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end

	g_PatronageUnitLeft  = g_PatronageUnitList[7];
	g_PatronageUnitMid   = g_PatronageUnitList[8];
	g_PatronageUnitRight = g_PatronageUnitList[9];

	if g_PatronageUnitLeft ~= nil 
	and g_PatronageUnitRight ~= nil
	and g_PatronageUnitMid ~= nil
	then
		
		local unitL = GameInfo.Units[g_PatronageUnitLeft];

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

