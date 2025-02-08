-- SPUE_Wonder
-- Author: dzs-local
-- DateCreated: 2024/1/11 20:45:53
--------------------------------------------------------------
--[[
----------------------------------------------------------------------------------------------------------------------------
-- 天朝奇观：政策及回合效果
----------------------------------------------------------------------------------------------------------------------------
local Electricity = GameInfoTypes["TECH_ELECTRICITY"]
function ChinaWonderBonus(playerID)
	local player = Players[playerID]
	local pTeam = Teams[player:GetTeam()]
	local Level = 0
	
	if player == nil or player:IsBarbarian() or player:IsMinorCiv() or player:GetNumCities() <= 0 then
		return
	end
    
	-- 未央宫：根据市政厅等级赋予加成
	if player:CountNumBuildings(GameInfoTypes["BUILDING_SPUE_WEIYANG_PALACE"]) > 0 then
		for city in player:Cities() do
			if city:IsHasBuilding(GameInfoTypes["BUILDING_CITY_HALL_LV1"]) then
				city:SetNumRealBuilding(GameInfoTypes["BUILDING_SPUE_TUIENLING"],1)
			else
				city:SetNumRealBuilding(GameInfoTypes["BUILDING_SPUE_TUIENLING"],0)
			end

			if city:IsHasBuilding(GameInfoTypes["BUILDING_CITY_HALL_LV2"]) then
				city:SetNumRealBuilding(GameInfoTypes["BUILDING_SPUE_ZHANGSHIFU"],1)
			else
				city:SetNumRealBuilding(GameInfoTypes["BUILDING_SPUE_ZHANGSHIFU"],0)
			end

			if city:IsHasBuilding(GameInfoTypes["BUILDING_CITY_HALL_LV3"]) then
				city:SetNumRealBuilding(GameInfoTypes["BUILDING_SPUE_DUHUFU"],1)
			else
				city:SetNumRealBuilding(GameInfoTypes["BUILDING_SPUE_DUHUFU"],0)
			end
		end
	end
end
GameEvents.PlayerDoTurn.Add(ChinaWonderBonus)
----------------------------------------------------------------------------------------------------------------------------
-- 天朝奇观：建造前提
----------------------------------------------------------------------------------------------------------------------------
function ChinaWonderCanConstruct(iPlayer, iCity, iBuilding)
	if (iBuilding == GameInfoTypes.BUILDING_SPUE_WEIYANG_PALACE) then
		local pPlayer = Players[iPlayer]
		local pCity = pPlayer:GetCityByID(iCity)
		if pCity:IsCapital() or pCity:IsOriginalCapital() then	
			return true
		end	
		return false
	end
	return true
end
GameEvents.CityCanConstruct.Add(ChinaWonderCanConstruct)
]]