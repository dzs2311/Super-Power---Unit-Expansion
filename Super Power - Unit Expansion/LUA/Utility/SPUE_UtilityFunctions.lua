-- SPUE_UtilityFunctions
-- Author: dzs2311
-- DateCreated: 2023/3/15 8:58:34
--------------------------------------------------------------
include("UtilityFunctions");
--=======================================================================================================================
-- USER SETTING FUNCTIONS
--=======================================================================================================================
-- MOD CHECKS
--------------------------------------------------------------------------------------------------------------------------
-- JFD_IsUsingCPDLL
function JFD_IsUsingCPDLL()
	local cPDLLModID = "d1b6328c-ff44-4b0d-aad7-c657f83610cd"
	for _, mod in pairs(Modding.GetActivatedMods()) do
		if (mod.ID == cPDLLModID) then
			return true
		end
	end
end
local isUsingCPDLL = JFD_IsUsingCPDLL()
--=======================================================================================================================
-- UTILITIES
--=======================================================================================================================
-- GENERAL
--------------------------------------------------------------------------------------------------------------------------
-- JFD_GetRandom
function JFD_GetRandom(lower, upper)
    return Game.Rand((upper + 1) - lower, "") + lower
end

-- JFD_GetUniqueUnit
function JFD_GetUniqueUnit(player, unitClass)
	-- if isUsingCPDLL then
	-- 	return player:GetSpecificUnitType(unitClass)
	-- end
	local unitType = nil
	local civType = GameInfo.Civilizations[player:GetCivilizationType()].Type
	for uniqueUnit in GameInfo.Civilization_UnitClassOverrides{CivilizationType = civType, UnitClassType = unitClass} do
		unitType = uniqueUnit.UnitType
		break
	end
	if (unitType == nil) then
		unitType = GameInfo.UnitClasses[unitClass].DefaultUnit
	end
	return unitType
end

-- JFD_SendNotification
function JFD_SendNotification(playerID, notificationType, description, descriptionShort, global, data1, data2, unitID, data3, metOnly, includesSerialMessage)
	local player = Players[playerID]
	local data1 = data1 or -1
	local data2 = data2 or -1
	local unitID = unitID or -1
	local data3 = data3 or -1
	local sendNotification = false
	local sendSerialMessage = false
	if global then
		if metOnly then
			if Teams[Game.GetActiveTeam()]:IsHasMet(player:GetTeam()) then
				sendNotification = true
			end
		else
			sendNotification = true
		end
	else
		if player:IsHuman() then
			if metOnly then
				if Teams[Game.GetActiveTeam()]:IsHasMet(player:GetTeam()) then
					sendNotification = true
				end
			else
				sendNotification = true
			end
		end
	end
	if sendNotification then
		Players[Game.GetActivePlayer()]:AddNotification(NotificationTypes[notificationType], description, descriptionShort, data1, data2, unitID, data3)
		if includesSerialMessage then
			Events.GameplayAlertMessage(description)
		end
	end
end   


----Get Closed City
function GetCloseCity ( iPlayer, plot )      
	local pPlayer = Players[iPlayer];
	local distance = 1000;
	local closeCity = nil;
	if pPlayer == nil then
		-- print ("nil")
		return nil
	end

	if pPlayer:GetNumCities() <= 0 then 
		-- print ("No Cities!")
		return;
	end

	for pCity in pPlayer:Cities() do
		local distanceToCity = Map.PlotDistance(pCity:GetX(), pCity:GetY(), plot:GetX(), plot:GetY());
		if ( distanceToCity < distance) then
			distance = distanceToCity;
			closeCity = pCity;
			--print("pCity:GetName()"..pCity:GetName())
		end
	end
	return closeCity;
end
--------------------------------------------------------------
-- Map functions 地图相关的函数
--------------------------------------------------------------
--	here (x,y) = (0,0) is bottom left of map in Worldbuilder.
function GetPlot (x,y)                          ------从XY获取地块
	local plot = Map:GetPlotXY(y,x)
	return plot
end

function GetPlotKey ( plot )                   ------获取地块的KEY
	-- set the key string used in cultureMap
	-- structure : g_CultureMap[plotKey] = { { ID = CIV_CULTURAL_ID, Value = cultureForThisCiv }, }
	local x = plot:GetX()
	local y = plot:GetY()
	local plotKey = x..","..y
	return plotKey
end

-- return the plot refered by the key string
function GetPlotFromKey ( plotKey )            -----从KEY获取地块
	local pos = string.find(plotKey, ",")
	local x = string.sub(plotKey, 1 , pos -1)
	local y = string.sub(plotKey, pos +1)
	local plot = Map:GetPlotXY(y,x)
	return plot
end

function GetPlotXYFromKey ( plotKey )     -------获取key对应XY
	local pos = string.find(plotKey, ",")
	local x = string.sub(plotKey, 1 , pos -1)
	local y = string.sub(plotKey, pos +1)
	return x, y
end

function isInArray(t, val)
	for _, v in pairs(t) do
		if v == val then
			return true
		end
	end
	return false
end
--------------------------------------------------------------
-- SP单位伤亡函数
--------------------------------------------------------------
-- Unit death cause population loss -- MOD by CaptainCWB
function UnitDeathCounter(iKerPlayer, iKeePlayer, eUnitType)
	if (PreGame.GetGameOption("GAMEOPTION_SP_CASUALTIES") == 0) then
		print("War Casualties - OFF!");
		return;
	end
	
	if Players[iKeePlayer] == nil or not Players[iKeePlayer]:IsAlive() or Players[iKeePlayer]:GetCapitalCity() == nil
	or Players[iKeePlayer]:IsMinorCiv() or Players[iKeePlayer]:IsBarbarian()
	or GameInfo.Units[eUnitType] == nil
	-- UnCombat units do not count
	or(GameInfo.Units[eUnitType].Combat == 0 and GameInfo.Units[eUnitType].RangedCombat == 0)
	then
		return;
	end
	
	local defPlayer = Players[iKeePlayer];
	local iCasualty = defPlayer:GetCapitalCity():GetNumBuilding(GameInfoTypes["BUILDING_WAR_CASUALTIES"]);
	local sUnitType = GameInfo.Units[eUnitType].Type;
	local iDCounter = 6;
	
	if     GameInfo.Unit_FreePromotions{ UnitType = sUnitType, PromotionType = "PROMOTION_NO_CASUALTIES" }() then
		print ("This unit won't cause Casualties!");
		return;
	elseif GameInfo.Unit_FreePromotions{ UnitType = sUnitType, PromotionType = "PROMOTION_HALF_CASUALTIES" }() then
		iDCounter = iDCounter/2;
	end
	if defPlayer:HasPolicy(GameInfo.Policies["POLICY_CENTRALISATION"].ID) then
		iDCounter = 2*iDCounter/3;
	end
	
	print ("DeathCounter(Max-12): ".. iCasualty .. " + " .. iDCounter);
	if iCasualty + iDCounter < 12 then
		defPlayer:GetCapitalCity():SetNumRealBuilding(GameInfoTypes["BUILDING_WAR_CASUALTIES"], iCasualty + iDCounter);
	else
		defPlayer:GetCapitalCity():SetNumRealBuilding(GameInfoTypes["BUILDING_WAR_CASUALTIES"], 0);
		local PlayerCitiesCount = defPlayer:GetNumCities();
		if PlayerCitiesCount <= 0 then ---- In case of 0 city error
			return;
		end
		local apCities = {};
		local iCounter = 0;
		
		for pCity in defPlayer:Cities() do
			local cityPop = pCity:GetPopulation();
			if ( cityPop > 1 and defPlayer:IsHuman() ) or cityPop > 5 then
				apCities[iCounter] = pCity
				iCounter = iCounter + 1
			end
		end
		
		if (iCounter > 0) then
			local iRandChoice = Game.Rand(iCounter, "Choosing random city")
			local targetCity = apCities[iRandChoice]
			local Cityname = targetCity:GetName()
			local iX = targetCity:GetX();
			local iY = targetCity:GetY();
			
			if targetCity:GetPopulation() > 1 then
				targetCity:ChangePopulation(-1, true)
				print ("population lost!"..Cityname)
			else 
				return;
			end
			if defPlayer:IsHuman() then -- Sending Message
				local text = Locale.ConvertTextKey("TXT_KEY_SP_NOTE_POPULATION_LOSS",targetCity:GetName())
				local heading = Locale.ConvertTextKey("TXT_KEY_SP_NOTE_POPULATION_LOSS_SHORT")
				defPlayer:AddNotification(NotificationTypes.NOTIFICATION_STARVING, text, heading, iX, iY)
			end
		end
	end

end
--------------------------------------------------------------
-- 拥有特殊晋升单位数量
--------------------------------------------------------------
function CountUnitsWithUniquePromotions( iPlayerID, unitPromotionID )
	
	if  Players[ iPlayerID ] and Players[ iPlayerID ]:IsAlive() then
		local pPlayer = Players[ iPlayerID ]
		local num = 0

		if (not pPlayer:IsAlive()) then return end
		if pPlayer:IsBarbarian() then return end
		
		for unit in pPlayer:Units() do
			if unit:IsHasPromotion(unitPromotionID) then
				num = num + 1
			end
		end

		return num

	end
end
--------------------------------------------------------------
-- 检查所有单位拥有某特殊晋升
--------------------------------------------------------------
function CheckUniquePromotions(pPlayer, unitPromotionID)
	-- 十字战车检查
	local GreatCrossCheck = 0;
	for pUnit in pPlayer:Units() do
		if pUnit:IsHasPromotion(unitPromotionID) then
			GreatCrossCheck = 1;
			break
		end
	end
	return GreatCrossCheck;
end
--------------------------------------------------------------
-- 遍历某单位(pUnit)附近单位，判断其是否拥有晋升A，若有则给与当前单位晋升B，没有则去掉当前单位晋升B
--------------------------------------------------------------
function plotDistancePromotion(pPlayer, pUnit, unitPromotionAID, unitPromotionBID, radius, pFlag)
	local Patronage = 0;
	if pFlag then 
		for sUnit in pPlayer:Units() do
			if sUnit:IsHasPromotion(unitPromotionAID) then
				if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), sUnit:GetX(), sUnit:GetY()) < radius + 1 then -- 人类2格
					Patronage = 1;
				end
			end
		end			
		if Patronage == 1 then
			if not pUnit:IsHasPromotion(unitPromotionBID) then
				pUnit:SetHasPromotion(unitPromotionBID, true)
			end
		else
			if pUnit:IsHasPromotion(unitPromotionBID) and not pUnit:IsHasPromotion(unitPromotionAID) then
				pUnit:SetHasPromotion(unitPromotionBID, false)
			end
		end		
	else
		if pUnit:IsHasPromotion(unitPromotionBID) and not pUnit:IsHasPromotion(unitPromotionAID) then
			pUnit:SetHasPromotion(unitPromotionBID, false)
		end
	end

end
--------------------------------------------------------------
-- 统计文明的城邦盟友及各城邦盟友的人口数量还有关系
--------------------------------------------------------------
function SPUE_MajorFavorite_MinorCivsAndCityPops(playerID)
	local g_MinorCivsAndPopWithMajor = {};

	local player = Players[playerID];

	if (not player:IsAlive()) then return end;

	local index = 1;
	if not (player:IsMinorCiv() or player:IsBarbarian()) then
		for iCS = GameDefines.MAX_MAJOR_CIVS, GameDefines.MAX_PLAYERS-2, 1 do
			if  Players[iCS]:IsAlive() and Players[iCS]:IsMinorCiv()
			and Players[iCS]:GetAlly() ~= -1 and Players[Players[iCS]:GetAlly()]:IsAlive()
			and Players[iCS]:GetAlly() == playerID
			then
				local CityPop = Players[iCS]:GetCapitalCity():GetPopulation();
				local iFriendShip = Players[iCS]:GetMinorCivFriendshipWithMajor(playerID);
				g_MinorCivsAndPopWithMajor[index] = {iCS, CityPop, iFriendShip};
				index = index + 1;
			end
		end
		if index == 1 then
			return false;
		end
	end

	return g_MinorCivsAndPopWithMajor;
end
--------------------------------------------------------------
-- 单位购买价钱
--------------------------------------------------------------
function SPUE_UnitPurchaseCost(player, iUnit)
	local goldCost
	if iUnit and iUnit ~= -1 then
		local punit = GameInfo.Units[ iUnit ]
		local productionCost = punit.Cost
		productionCost = player:GetUnitProductionNeeded( iUnit )
		for pCity in player:Cities() do
			if pCity then
				goldCost = pCity:GetUnitPurchaseCost( iUnit )	
			elseif (punit.HurryCostModifier or 0) > 0 then
				goldCost = (productionCost * GameDefines.GOLD_PURCHASE_GOLD_PER_PRODUCTION ) ^ GameDefines.HURRY_GOLD_PRODUCTION_EXPONENT
				goldCost = (punit.HurryCostModifier + 100) * goldCost / 100
				goldCost = goldCost - ( goldCost % GameDefines.GOLD_PURCHASE_VISIBLE_DIVISOR )
			end
		end
	end

	return goldCost;
end
--------------------------------------------------------------
-- 单位精英化按钮：显示函数
--------------------------------------------------------------
function EliteCondition(unit, unitPromotionID, ounitType, nunitType, unitClassType, projectType, Button)
	local player = Players[unit:GetOwner()]

	-- 单位购买价格
	local sUnitType = GetCivSpecificUnit(player, unitClassType)
	local iUnit = GameInfoTypes[sUnitType];
	local iCost = 1000;
	local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
	local dboUnit = GameInfo.Units[ounitType];
	local dbnUnit = GameInfo.Units[nunitType];
	local projectFlag = false;

	local dbProject = GameInfo.Projects[projectType];
	
	if goldCost then iCost = goldCost * 7 end;
	Button.ToolTip = Locale.ConvertTextKey("TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON", 
					 iCost, dboUnit.Description, dbnUnit.Description, dboUnit.Description, dbProject.Description);
		
	return unit:CanMove() and unit:IsHasPromotion(unitPromotionID) 
	and unit:GetUnitType() == GameInfoTypes[ounitType];
end

function EliteConditionAI(unit, unitPromotionID, ounitType, nunitType, unitClassType, projectType)
	local player = Players[unit:GetOwner()]

	-- 单位购买价格
	local sUnitType = GetCivSpecificUnit(player, unitClassType)
	local iUnit = GameInfoTypes[sUnitType];
	local iCost = 1000;
	local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
	local dboUnit = GameInfo.Units[ounitType];
	local dbnUnit = GameInfo.Units[nunitType];
	local projectFlag = false;

	local dbProject = GameInfo.Projects[projectType];
	
	if goldCost then iCost = goldCost * 7 end;
		
	return unit:CanMove() and unit:IsHasPromotion(unitPromotionID) 
	and unit:GetUnitType() == GameInfoTypes[ounitType];
end

--------------------------------------------------------------
-- 单位精英化按钮：条件函数
--------------------------------------------------------------
function EliteDisable(unit, unitPromotion2ID, unitClassType, projectType)
	local player = Players[unit:GetOwner()]

	local sUnitType = GetCivSpecificUnit(player, unitClassType)
	local iUnit = GameInfoTypes[sUnitType];
	local iCost = 1000;
	local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
	 
	local projectFlag = false;
	if projectType == nil then projectFlag = true else projectFlag = player:HasProject(GameInfo.Projects[projectType].ID) end;
	-- local dbProject = GameInfo.Projects[projectType];

	if goldCost then iCost = goldCost * 7 end;
	return CountUnitsWithUniquePromotions(unit:GetOwner(), unitPromotion2ID) > 0 
	or player:GetGold() < iCost 
	or not projectFlag;

end
--------------------------------------------------------------
-- 单位精英化按钮：动作函数
-------------------------------------------------------------
function EliteAction(unit, nunitType, unitClassType)
	local player 	= Players[unit:GetOwner()];

	local plot 		= unit:GetPlot();
	local plotX 	= plot:GetX();
	local plotY 	= plot:GetY();

	local unitLevel = unit:GetLevel();
	local unitEXP   = unit:GetExperience();

	local unitPromotions = {};
	for row in GameInfo.UnitPromotions() do
	  if unit:IsHasPromotion(row.ID) and not row.LostWithUpgrade then
		table.insert(unitPromotions, row.ID);
	  end
	end

	local unitName = nil;
	if unit:HasName() then
	  unitName = unit:GetNameNoDesc();
	end

	unit:Kill();
	local newUnit = nil;
	newUnit = player:InitUnit(GameInfoTypes[nunitType], plot:GetX(), plot:GetY());

	newUnit:SetLevel(unitLevel);
	newUnit:SetExperience(unitEXP);
	newUnit:SetPromotionReady(true);
	if #unitPromotions > 0 then
	  for _, unitPromotionID in ipairs(unitPromotions) do
		newUnit:SetHasPromotion(unitPromotionID, true);
	  end
	end
	if unitName then
	  newUnit:SetName(unitName);
	end

	-- 单位购买价格
	local sUnitType = GetCivSpecificUnit(player, unitClassType);
	local iUnit = GameInfoTypes[sUnitType];
	local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
	local iCost = 1000;

	if goldCost then iCost = goldCost * 7 end;

	Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");	

	player:ChangeGold(-iCost)
	local hex = ToHexFromGrid(Vector2(plotX, plotY))
	Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("-{1_Num}[ICON_GOLD]", iCost))
	Events.GameplayFX(hex.x, hex.y, -1)

end