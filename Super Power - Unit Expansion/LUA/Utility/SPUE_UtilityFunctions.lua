-- SPUE_UtilityFunctions
-- Author: dzs2311
-- DateCreated: 2023/3/15 8:58:34
--------------------------------------------------------------
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