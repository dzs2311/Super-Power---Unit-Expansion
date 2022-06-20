-- SaveUtils
WARN_NOT_SHARED = false; include( "SaveUtils" ); MY_MOD_NAME = "SPUE";
-- SPCode
include("UtilityFunctions")

include("FLuaVector.lua")

local KnightID = GameInfo.UnitPromotions["PROMOTION_KNIGHT_COMBAT"].ID
local TankID = GameInfo.UnitPromotions["PROMOTION_TANK_COMBAT"].ID

local VARANGIANID = GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN"].ID
local VARANGIANBonusID = GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_SEA"].ID
--------------------------------------------------------------
-- 单位下海模型强制修正
--------------------------------------------------------------
function EmbarkGraphic(playerID)
	for pPlayer=0, GameDefines.MAX_MAJOR_CIVS - 1, 1 do
		local pPlayer = Players[pPlayer]

		if pPlayer:IsEverAlive() then
			local pEraType = pPlayer:GetCurrentEra()
			local activeCivID = pPlayer:GetCivilizationType()
			local activeCiv = GameInfo.Civilizations[activeCivID]
	
			--if (not pPlayer:IsAlive()) then break end
			-- if not pPlayer:IsBarbarian() then break end
	
			local activeCivSuffix = GameInfo.Civilizations[activeCivID].ArtStyleSuffix
			local pEraID = GameInfo.Eras[pEraType].ID;
			-- print("1Suffix="..activeCivSuffix)
			if pEraID >= GameInfo.Eras["ERA_INDUSTRIAL"].ID then
				pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_TRANSPORT")
			end
			if  pEraID >= GameInfo.Eras["ERA_MEDIEVAL"].ID and pEraID < GameInfo.Eras["ERA_INDUSTRIAL"].ID then
				pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEON")
				if activeCivSuffix == '_ASIA' 
				or activeCivSuffix == '_CHINA' 
				then	
					pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEON_ASIA")
				end
			end
			if  pEraID <= GameInfo.Eras["ERA_CLASSICAL"].ID  then
				pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEY")
				if activeCivSuffix == '_ASIA' 
				or activeCivSuffix == '_CHINA'
				then	
					pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEY_ASIA")
				end
			end
		end
	end
end
Events.LoadScreenClose.Add(EmbarkGraphic)
GameEvents.TeamSetEra.Add(EmbarkGraphic)

--------------------------------------------------------------
-- 直射火力无需架设
--------------------------------------------------------------
function NoSetUPforCannons(iPlayerID, iUnitID)
	if  Players[ iPlayerID ] and Players[ iPlayerID ]:IsAlive()
	and Players[ iPlayerID ]:GetUnitByID( iUnitID )
	and not Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsDead()
	and not Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsDelayedDeath()
	and (Players[ iPlayerID ]:GetUnitByID( iUnitID ):GetUnitClassType() == GameInfoTypes.UNITCLASS_CULVERIN 
	or Players[ iPlayerID ]:GetUnitByID( iUnitID ):GetUnitClassType() == GameInfoTypes.UNITCLASS_CANNON 
	or Players[ iPlayerID ]:GetUnitByID( iUnitID ):GetUnitClassType() == GameInfoTypes.UNITCLASS_SPUE_FIELDGUN)
	and Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_MUST_SET_UP"].ID)
	then
		Players[ iPlayerID ]:GetUnitByID( iUnitID ):SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_MUST_SET_UP"].ID, false);
	end
end
Events.SerialEventUnitCreated.Add( NoSetUPforCannons );
--------------------------------------------------------------
-- 世界强权火药步兵
--------------------------------------------------------------
local isSPEx = false
local isSPExID = "41450919-c52c-406f-8752-5ea34be32b2d"

for _, mod in pairs(Modding.GetActivatedMods()) do
	if (mod.ID == isSPExID) then
		isSPEx = true
		break
	end
end

function SPExInfComBat(iPlayerID, iUnitID)
	if  isSPEx 
	and Players[ iPlayerID ] and Players[ iPlayerID ]:IsAlive()
	and Players[iPlayerID ]:GetUnitByID( iUnitID )
	and not Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsDead()
	and not Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsDelayedDeath()
	and Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_GUNPOWDER_INFANTRY_COMBAT"].ID)
	then
		Players[ iPlayerID ]:GetUnitByID( iUnitID ):SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_GUNPOWDER_INFANTRY_COMBAT_APPEND"].ID, true);
	end
end
Events.SerialEventUnitCreated.Add( SPExInfComBat );
--------------------------------------------------------------
-- 飞机在境内且不位于城市时可进行升级
--------------------------------------------------------------
--include('UtilityFunctions.lua')
AirPlanesUpgradeNotInCityButton = {
  Name = "AirPlanesUpgradeNotInCity",
  Title = "TXT_KEY_SPUE_PLANEUPGRADE_SHORT", -- or a TXT_KEY
  OrderPriority = 200, -- default is 200
  IconAtlas = "promoVP_atlas_02", -- 45 and 64 variations required
  PortraitIndex = 14,
  ToolTip = "TXT_KEY_SPUE_PLANEUPGRADE", -- or a TXT_KEY_ or a function
  

  
  Condition = function(action, unit)
	local plot = unit:GetPlot()
	local iUnitType = unit:GetUpgradeUnitType();
    local iGoldToUpgrade = unit:UpgradePrice(iUnitType);
	local player = Players[unit:GetOwner()]
	if unit:GetDomainType() == DomainTypes.DOMAIN_AIR and not unit:CanUpgradeRightNow() and unit:CanMove()
	and plot and Players[plot:GetOwner()] == Players[unit:GetOwner()] and not (plot:GetPlotCity())
	and player:GetGold() >= iGoldToUpgrade
	then

		if GameInfo.Units[unit:GetUpgradeUnitType()] and GameInfo.Units[unit:GetUpgradeUnitType()].PrereqTech
		and Teams[player:GetTeam()]:IsHasTech(GameInfoTypes[GameInfo.Units[unit:GetUpgradeUnitType()].PrereqTech]) then
			return true
		end
	end
  end, -- or nil or a boolean, default is true
  
  Disabled = function(action, unit)   
    return false;
  end, -- or nil or a boolean, default is false
  
  Action = function(action, unit, eClick) 
	
	local pPlayer = Players[unit:GetOwner()];
    local unitX = unit:GetX()
	local unitY = unit:GetY()
	local unitType = unit:GetUnitType()
	local unitAIType = unit:GetUnitAIType()
	local iUnitType = unit:GetUpgradeUnitType();
    local iGoldToUpgrade = unit:UpgradePrice(iUnitType);

	--local unitEXP = unit:GetExperience()

	--unit:Kill()

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
	newUnit = pPlayer:InitUnit(unit:GetUpgradeUnitType(), unitX, unitY, unitAIType)

	newUnit:SetLevel(unitLevel);
	newUnit:SetExperience(unitEXP);
	if #unitPromotions > 0 then
	  for _, unitPromotionID in ipairs(unitPromotions) do
	    newUnit:SetHasPromotion(unitPromotionID, true);
	  end
	end
	if unitName then
	  newUnit:SetName(unitName);
	end

	newUnit:SetDamage(unitDamage)
	newUnit:SetMoves(0)
	player:ChangeGold(-iGoldToUpgrade)
	
    
    print("AirCraft Upgrade Pressed!")

  end
};

LuaEvents.UnitPanelActionAddin(AirPlanesUpgradeNotInCityButton)
---============================================================
-- 政策单位特殊效果
---============================================================
--------------------------------------------------------------
-- 单位过回合效果
--------------------------------------------------------------
function SPUE_OnPlayerDoTurn(playerID)
	local player = Players[playerID]
	local iTeamID = player:GetTeam() 
	local pTeam = Teams[iTeamID]
	
	if player == nil then
		return
	end

	for unit in player:Units() do
		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_VARANGIAN_GUARD"]) then
			local iunit = GameInfo.Units[unit:GetUnitType()] 
			local plot = unit:GetPlot()

			local icombat = 5;

			local bonus = 0;

			local unitCount = plot:GetNumUnits();
			if unitCount >= 1 then
				for i = 0, unitCount-1, 1 do
					local pFoundUnit = plot:GetUnit(i)
					if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
						local pPlayer = Players[pFoundUnit:GetOwner()];
						if pPlayer == player and (pFoundUnit:IsHasPromotion(KnightID) or pFoundUnit:IsHasPromotion(TankID)) then
							bonus = bonus + 1
						end
					end
				end
			end
			for i = 0, 5 do
				local adjPlot = Map.PlotDirection(plot:GetX(), plot:GetY(), i)
				local unitCount = adjPlot:GetNumUnits();
				if unitCount >= 1 then
					for i = 0, unitCount-1, 1 do
						local pFoundUnit = adjPlot:GetUnit(i)
						if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
							local pPlayer = Players[pFoundUnit:GetOwner()];
							if pPlayer == player and (pFoundUnit:IsHasPromotion(KnightID) or pFoundUnit:IsHasPromotion(TankID)) then
								bonus = bonus + 1
							end
						end
					end
				end
	
			end
			unit:SetBaseCombatStrength(iunit.Combat + bonus * icombat)
		end
	end
end--function END
GameEvents.PlayerDoTurn.Add(SPUE_OnPlayerDoTurn)
--------------------------------------------------------------
-- 单位移动效果
--------------------------------------------------------------
function SPUE_UnitSetXY(playerID, unitID)
	local player = Players[playerID]

	if player:GetUnitByID(unitID) == nil then return end

	local unit = player:GetUnitByID(unitID)
	local plot = unit:GetPlot()

	if player == nil then return end
	
	if player:IsBarbarian() or player:IsMinorCiv() then return end

	--if not player:IsHuman() then return end

	local pCapital = player:GetCapitalCity()
	

	local bWeiYang = GameInfoTypes["BUILDING_SPUE_WEIYANG"]

	if plot then

		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_PRAETORIAN"]) then
			-- 罗马禁卫军：集权帝国：驻守首都
			if plot:GetPlotCity() and player:GetCityByID( plot:GetPlotCity() ):IsCapital() then
				-- 首都
				player:SetNumFreePolicies(1)
				player:SetNumFreePolicies(0)
				player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID, true)
			elseif 
			not ( (plot:GetPlotCity()) or ( plot:GetPlotCity() and player:GetCityByID( plot:GetPlotCity() ):IsCapital() ) )
			and player:HasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID) 
			then
				-- 其他地块和城市
				player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID, false)	 
			end
		end

		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_WEIYANG"]) then
			-- 未央宫卫士：驻守首都全局不满-10%
			local pCapPlot = pCapital:Plot()
			if plot:GetPlotCity() and player:GetCityByID( plot:GetPlotCity() ):IsCapital() 
			then
				pCapital:SetNumRealBuilding( bWeiYang, pCapital:GetNumBuilding( bWeiYang ) + 1 )
			elseif 
			not ( (plot:GetPlotCity()) or ( plot:GetPlotCity() and player:GetCityByID( plot:GetPlotCity() ):IsCapital() ) )
			then

				local num_wy_units = 0
				for i = 0, pCapPlot:GetNumUnits() - 1, 1 do
					local fUnit = pCapPlot:GetUnit(i)
					if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_WEIYANG"]) then
						num_wy_units = num_wy_units + 1
					end
				end

				pCapital:SetNumRealBuilding( bWeiYang, num_wy_units )
				
			end
		end

		if unit and ( unit:IsHasPromotion(VARANGIANID) ) then
			-- 瓦兰吉佣兵：海岸加成
			unit:SetHasPromotion(VARANGIANBonusID, false)
			if plot:IsCoastalLand() then
				unit:SetHasPromotion(VARANGIANBonusID, true)
			end
		end

	end 
end
GameEvents.UnitSetXY.Add(SPUE_UnitSetXY)
Events.SerialEventUnitCreated.Add(SPUE_UnitSetXY)
--------------------------------------------------------------
-- 瓦兰吉佣兵永备化成为瓦兰吉卫队
--------------------------------------------------------------
function CountVarangianGuard( iPlayerID )
	
	if  Players[ iPlayerID ] and Players[ iPlayerID ]:IsAlive() then
		local pPlayer = Players[ iPlayerID ]
		local num = 0

		if (not pPlayer:IsAlive()) then return end
		if pPlayer:IsBarbarian() then return end
		
		for unit in pPlayer:Units() do
			if unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_GUARD"].ID) then
				num = num + 1
			end
		end

		return num

	end
end

SPUE_Varangian_Button = {
	Name = "Varangian Guard",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200, -- default is 200
	IconAtlas = "promoVP_atlas_00", -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON", -- or a TXT_KEY_ or a function
	
  
	
	Condition = function(action, unit)

		local player = Players[unit:GetOwner()]
		return unit:CanMove() and unit:IsHasPromotion(VARANGIANID) 
		and unit:GetUnitType() == GameInfoTypes.UNIT_SPUE_VARANGIAN
		and CountVarangianGuard(unit:GetOwner()) == 0
		and player:GetGold() > 1000;
  
	end, -- or nil or a boolean, default is true
	
	Disabled = function(action, unit)   
		return false;
	end, -- or nil or a boolean, default is false
	
	Action = function(action, unit, eClick) 
	  
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
		newUnit = player:InitUnit(GameInfoTypes.UNIT_SPUE_VARANGIAN_GUARD, plot:GetX(), plot:GetY());

		newUnit:SetLevel(unitLevel);
		newUnit:SetExperience(unitEXP);
		if #unitPromotions > 0 then
		  for _, unitPromotionID in ipairs(unitPromotions) do
		    newUnit:SetHasPromotion(unitPromotionID, true);
		  end
		end
		if unitName then
		  newUnit:SetName(unitName);
		end

		player:ChangeGold(-1000)
		local hex = ToHexFromGrid(Vector2(plotX, plotY))
		Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("-1000[ICON_GOLD]"))
		Events.GameplayFX(hex.x, hex.y, -1)
	end
  };
  
LuaEvents.UnitPanelActionAddin(SPUE_Varangian_Button)
--------------------------------------------------------------
-- 王都骑士团：兵士集结
--------------------------------------------------------------
--include('UtilityFunctions.lua')
SPUE_Knight_New_Button = {
  Name = "Knight Rally",
  Title = "TXT_KEY_PROMOTION_SPUE_KNIGHT_NEW", -- or a TXT_KEY
  OrderPriority = 200, -- default is 200
  IconAtlas = "UNIT_ATLAS_1", -- 45 and 64 variations required
  PortraitIndex = 26,
  ToolTip = "TXT_KEY_PROMOTION_SPUE_KNIGHT_NEW_HELP", -- or a TXT_KEY_ or a function
  

  
  Condition = function(action, unit)
	local player = Players[unit:GetOwner()]
	local SPUE_Knight_New_Flag = load( player, "Knight Rally", SPUE_Knight_New_Flag) or 0
	local flag = 0
	if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW"].ID) and SPUE_Knight_New_Flag == 0
	then
		if player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) == 0 then
			flag = 1
		elseif player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) > 0 then
			-- 兵力足够时按钮才会显示
			local iTotalTroops = player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) 
			local iUsedTroops = player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS_USED"]) 
			if iTotalTroops - iUsedTroops > player:GetNumCities() - 1 then
				flag = 1
			end
		end
	end

	return flag == 1;
  end, -- or nil or a boolean, default is true
  
  Disabled = function(action, unit)   
    return false;
  end, -- or nil or a boolean, default is false
  
  Action = function(action, unit, eClick) 
	
	local plot = unit:GetPlot()
	local player = Players[unit:GetOwner()];
    local unitX = unit:GetX()
	local unitY = unit:GetY()
	local unitAIType = unit:GetUnitAIType()

	for city in player:Cities() do
		if not city:IsCapital() then
			-- 从非首都城市召唤采邑骑士
			local cityname = city:GetName()
			local NewUnit = player:InitUnit(GameInfoTypes["UNIT_SPUE_KNIGHT_NEW1"], unitX, unitY, unitAIType)
			NewUnit:SetName("[COLOR_CYAN]"..cityname..Locale.ConvertTextKey("TXT_KEY_UNIT_SPUE_KNIGHT_NEW1_NAME").."[ENDCOLOR]") 
			if plot:GetNumUnits() > 2 then
				NewUnit:JumpToNearestValidPlot()
			end 
		end
	end

	unit:SetMoves(0)

	save( player, "Knight Rally", 1)

  end
};

LuaEvents.UnitPanelActionAddin(SPUE_Knight_New_Button)
--------------------------------------------------------------
-- 羽林禁军：羽林孤儿
--------------------------------------------------------------
function CountYuLin( iPlayerID )
	
	if  Players[ iPlayerID ] and Players[ iPlayerID ]:IsAlive() then
		local pPlayer = Players[ iPlayerID ]
		local num = 0

		if (not pPlayer:IsAlive()) then return end
		if pPlayer:IsBarbarian() then return end
		
		for unit in pPlayer:Units() do
			if unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID) then
				num = num + 1
			end
		end

		return num

	end
end

function OnSPUESetDamageSP( iPlayerID, iUnitID, iDamage, iPreviousDamage )
	if Players[ iPlayerID ] == nil or not Players[ iPlayerID ]:IsAlive()
	or Players[ iPlayerID ]:GetUnitByID( iUnitID ) == nil
	or Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsDead()
	or Players[ iPlayerID ]:GetUnitByID( iUnitID ):IsDelayedDeath()
	then
		return;
	end
	local pUnit = Players[ iPlayerID ]:GetUnitByID( iUnitID );
	local pPlayer = Players[ iPlayerID ]
	local YuLin_Num = CountYuLin(iPlayerID)

	if YuLin_Num and YuLin_Num > 0 
	and not pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID)
	and iDamage - iPreviousDamage > 0 
	then
		for unit in pPlayer:Units() do
			if unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID) then
				unit:ChangeDamage(-(iDamage - iPreviousDamage) / YuLin_Num)
			end
		end
	end
end
Events.SerialEventUnitSetDamage.Add( OnSPUESetDamageSP );
--------------------------------------------------------------
-- 洛汗骠骑：白城烽火
--------------------------------------------------------------
function CountRohanCavalry( iPlayerID )
	
	if  Players[ iPlayerID ] and Players[ iPlayerID ]:IsAlive() then
		local pPlayer = Players[ iPlayerID ]
		local num = 0

		if (not pPlayer:IsAlive()) then return end
		if pPlayer:IsBarbarian() then return end
		
		for unit in pPlayer:Units() do
			if unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ROHAN_CAVALRY"].ID) then
				num = num + 1
			end
		end

		return num

	end
end


SPUE_Rohan_Cavalry_Button = {
  Name = "Rohant Cavalry",
  Title = "TXT_KEY_SPUE_ROHAN_CAVALRY_BUTTON_SHORT", -- or a TXT_KEY
  OrderPriority = 200, -- default is 200
  IconAtlas = "promoVP_atlas_02", -- 45 and 64 variations required
  PortraitIndex = 22,
  ToolTip = "TXT_KEY_SPUE_ROHAN_CAVALRY_BUTTON", -- or a TXT_KEY_ or a function
  

  
  Condition = function(action, unit)
	local player = Players[unit:GetOwner()]
	local flag = 0

	if unit:CanMove() and CountRohanCavalry(unit:GetOwner()) and CountRohanCavalry(unit:GetOwner()) > 0
	and unit:GetUnitClassType() == GameInfo.UnitClasses.UNITCLASS_GREAT_GENERAL.ID
	then
		flag = 1
	end

	return flag == 1;
  end, -- or nil or a boolean, default is true
  
  Disabled = function(action, unit)   
    return false;
  end, -- or nil or a boolean, default is false
  
  Action = function(action, unit, eClick) 
	
	local plot = unit:GetPlot()
	local player = Players[unit:GetOwner()];
    local unitX = unit:GetX()
	local unitY = unit:GetY()
	local unitAIType = unit:GetUnitAIType()

	for iunit in player:Units() do
		if iunit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ROHAN_CAVALRY"].ID) then
			iunit:SetXY(unitX,unitY)
			iunit:SetMoves(iunit:MovesLeft()+GameDefines["MOVE_DENOMINATOR"])
			iunit:ChangeDamage(-10)
			if plot:GetNumUnits() > 2 then
				iunit:JumpToNearestValidPlot()
			end 
		end
	end

	unit:SetMoves(0)

  end
};

LuaEvents.UnitPanelActionAddin(SPUE_Rohan_Cavalry_Button)
--------------------------------------------------------------
-- 探险家：临时热气球
--------------------------------------------------------------
--include('UtilityFunctions.lua')
SPUE_HotAirBalloon_Button = {
  Name = "Hot Air Balloon",
  Title = "TXT_KEY_PROMOTION_SPUE_HOT_AIR_BALLOON_BUTTON_SHORT", -- or a TXT_KEY
  OrderPriority = 200, -- default is 200
  IconAtlas = "SPUE_UNITS_ATLAS", -- 45 and 64 variations required
  PortraitIndex = 29,
  ToolTip = "TXT_KEY_PROMOTION_SPUE_HOT_AIR_BALLOON_BUTTON", -- or a TXT_KEY_ or a function
  

  
  Condition = function(action, unit)
	local player = Players[unit:GetOwner()]

	return unit:CanMove() 
	and unit:GetUnitClassType() == GameInfoTypes.UNITCLASS_EXPLORERX
	and player:HasPolicy(GameInfo.Policies["POLICY_RATIONALISM"].ID);

  end, -- or nil or a boolean, default is true
  
  Disabled = function(action, unit)   
    return false;
  end, -- or nil or a boolean, default is false
  
  Action = function(action, unit, eClick) 
	
	local plot = unit:GetPlot()
	local player = Players[unit:GetOwner()];
    local unitX = unit:GetX()
	local unitY = unit:GetY()
	local unitAIType = unit:GetUnitAIType()


	local NewUnit = player:InitUnit(GameInfoTypes["UNIT_SPUE_HOT_AIR_BALLOON"], unitX, unitY)
	NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON"].ID, true)
	if plot:GetNumUnits() > 2 then
		NewUnit:JumpToNearestValidPlot()
	end 


	unit:SetMoves(0)

  end
};

LuaEvents.UnitPanelActionAddin(SPUE_HotAirBalloon_Button)
--------------------------------------------------------------
-- 临时热气球每回合减少5战斗力，战斗力为0下一回合消失
--------------------------------------------------------------
function CaoWeiBuildTunTian(playerID)
	local player = Players[playerID]

	if player == nil then
		return
	end

	local HotAirBallooCheck = CheckHotAirBalloon(player)

	if HotAirBallooCheck == 1 then
		for unit in player:Units() do
			if unit:GetUnitType() == GameInfoTypes.UNIT_SPUE_HOT_AIR_BALLOON
			and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON"].ID)
			then
				local combat = unit:GetBaseCombatStrength()
				if combat > 0 then
					unit:SetBaseCombatStrength(combat - 5)
				elseif combat == 0 then
					unit:Kill()
				end
			end

		end
	end

end
GameEvents.PlayerDoTurn.Add(CaoWeiBuildTunTian)
--------------------------------------------------------------
-- 十字战车：十字架反对弓月&热气球：高级热气球
--------------------------------------------------------------
--十字战车
local pGreatCrossID = GameInfo.UnitPromotions["PROMOTION_SPUE_GREAT_CROSS"].ID
local pGreatCrossEffectID = GameInfo.UnitPromotions["PROMOTION_SPUE_GREAT_CROSS_EFFECT"].ID
--热气球
local pHotAirBalloonID = GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON_NEW"].ID
local pHotAirBalloonEffectID = GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON_EFFECT"].ID


function CheckGreatCross(pPlayer)
	-- 十字战车检查
	local GreatCrossCheck = 0;
	for pUnit in pPlayer:Units() do
		if pUnit:IsHasPromotion(pGreatCrossID) then
			GreatCrossCheck = 1;
			break
		end
	end
	return GreatCrossCheck;
end


function CheckHotAirBalloon(pPlayer)
	-- 热气球检查
	local HotAirBalloonCheck = 0;
	for pUnit in pPlayer:Units() do
		if pUnit:IsHasPromotion(pHotAirBalloonID) then
			HotAirBalloonCheck = 1;
			break
		end
	end
	return HotAirBalloonCheck;
end

function SPUE_Unit_Effect_Other(playerID)
	local pPlayer = Players[playerID]

	local GreatCrossCheck = CheckGreatCross(pPlayer)

	local HotAirBalloonCheck = CheckHotAirBalloon(pPlayer)

	-- 十字战车：东征十字军
	if GreatCrossCheck == 1 then
		for pUnit in pPlayer:Units() do
			local Patronage = 0;
			if (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND) and pUnit:IsCombatUnit() and not pUnit:IsEmbarked() and not pUnit:IsHasPromotion(pGreatCrossID) then 
				for sUnit in pPlayer:Units() do
					if sUnit:IsHasPromotion(pGreatCrossID) then
						if pPlayer:IsHuman() then
							if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), sUnit:GetX(), sUnit:GetY()) < 2 then -- 人类1格
								Patronage = 1;
							end
						elseif not pPlayer:IsHuman() then
							if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), sUnit:GetX(), sUnit:GetY()) < 3 then -- ai3格
								Patronage = 1;
							end
						end
					end
				end			
				if Patronage == 1 then
					if not pUnit:IsHasPromotion(pGreatCrossEffectID) then
						pUnit:SetHasPromotion(pGreatCrossEffectID, true)
					end
				else
					if pUnit:IsHasPromotion(pGreatCrossEffectID) and not pUnit:IsHasPromotion(pGreatCrossID) then
						pUnit:SetHasPromotion(pGreatCrossEffectID, false)
					end
				end		
			else
				if pUnit:IsHasPromotion(pGreatCrossEffectID) and not pUnit:IsHasPromotion(pGreatCrossID) then
					pUnit:SetHasPromotion(pGreatCrossEffectID, false)
				end
			end
		end
	end

	-- 热气球：气球上的五星期
	if HotAirBalloonCheck == 1 then
		for pUnit in pPlayer:Units() do
			local Patronage = 0;
			print("HotAirBalloonCheck1.1")
			if (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) 
			and pUnit:IsCombatUnit() 
			and not pUnit:IsEmbarked() 
			and not pUnit:IsHasPromotion(pHotAirBalloonID)
			then 
				--print("HotAirBalloonCheck2")
				for sUnit in pPlayer:Units() do
					if sUnit:IsHasPromotion(pHotAirBalloonID) then
						if pPlayer:IsHuman() then
							if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), sUnit:GetX(), sUnit:GetY()) < 1 then -- 人类同格
								--print("HotAirBalloonCheck3")
								Patronage = 1;
							end
						elseif not pPlayer:IsHuman() then
							if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), sUnit:GetX(), sUnit:GetY()) < 2 then -- ai2格
								Patronage = 1;
							end
						end
					end
				end			
				if Patronage == 1 then
					if not pUnit:IsHasPromotion(pHotAirBalloonEffectID) then
						--print("HotAirBalloonCheck4")
						pUnit:SetHasPromotion(pHotAirBalloonEffectID, true)
					end
				else
					if pUnit:IsHasPromotion(pHotAirBalloonEffectID) and not pUnit:IsHasPromotion(pHotAirBalloonID) then
						pUnit:SetHasPromotion(pHotAirBalloonEffectID, false)
					end
				end		
			else
				if pUnit:IsHasPromotion(pHotAirBalloonEffectID) and not pUnit:IsHasPromotion(pHotAirBalloonID) then
					pUnit:SetHasPromotion(pHotAirBalloonEffectID, false)
				end
			end
		end
	end

end
GameEvents.UnitSetXY.Add(SPUE_Unit_Effect_Other) 
Events.SerialEventUnitCreated.Add(SPUE_Unit_Effect_Other)
--------------------------------------------------------------
-- 福船：军事训练
--------------------------------------------------------------
-- 重步兵训练
SPUE_FuChuan_LandInfantry_Button = {
	Name = "FuChuan Land Infantry",
	Title = "TXT_KEY_SPUE_FUCHUAN_INFANTRY_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200, -- default is 200
	IconAtlas = "SP_PROMOTION_ATLAS", -- 45 and 64 variations required
	PortraitIndex = 40,
	ToolTip = "TXT_KEY_SPUE_FUCHUAN_INFANTRY_BUTTON", -- or a TXT_KEY_ or a function
	
  
	
	Condition = function(action, unit)

		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		if Teams[player:GetTeam()]:IsHasTech(GameInfoTypes["TECH_GUNPOWDER"]) then
			SPUE_FuChuan_LandInfantry_Button.Title = "TXT_KEY_SPUE_FUCHUAN_GUNPOWDER_BUTTON_SHORT";
        	SPUE_FuChuan_LandInfantry_Button.ToolTip = "TXT_KEY_SPUE_FUCHUAN_GUNPOWDER_BUTTON";
			SPUE_FuChuan_LandInfantry_Button.PortraitIndex = 41;
		end

		local flag = 0
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID) 
		and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
		then
			if player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) == 0 then
				flag = 1
			elseif player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) > 0 then
				-- 兵力足够时按钮才会显示
				local iTotalTroops = player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) 
				local iUsedTroops = player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS_USED"]) 
				if iTotalTroops - iUsedTroops >  1 then
					flag = 1
				end
			end
		end
  
		return flag == 1;
  
	end, -- or nil or a boolean, default is true
	
	Disabled = function(action, unit)   
		return false;
	end, -- or nil or a boolean, default is false
	
	Action = function(action, unit, eClick) 
	  
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()
		--local iNewUnit = GameInfoTypes.UNIT_EXPLORERX;
		--local overrideUnit = GameInfo.Civilization_UnitClassOverrides{ UnitClassType = "UNITCLASS_EXPLORERX", CivilizationType = GameInfo.Civilizations[player:GetCivilizationType()].Type }();
		--if overrideUnit and overrideUnit.UnitType then
		--	iNewUnit = GameInfoTypes[overrideUnit.UnitType];
		--end

		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SWORDSMAN")
    	local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
        
    	while (sUpgradeUnitType ~= nil) do
    	   sUnitType = sUpgradeUnitType
    	   sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
    	end
		
		local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], plotX, plotY, UNITAI_DEFENSE)
		NewUnit:JumpToNearestValidPlot()
		NewUnit:SetExperience(unitEXP)

		unit:SetMoves(0)
  
	end
  };
  
LuaEvents.UnitPanelActionAddin(SPUE_FuChuan_LandInfantry_Button)
-- 炮兵训练
SPUE_FuChuan_Cannon_Button = {
	Name = "FuChuan Cannons",
	Title = "TXT_KEY_SPUE_FUCHUAN_CANNON_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200, -- default is 200
	IconAtlas = "SP_PROMOTION_ATLAS", -- 45 and 64 variations required
	PortraitIndex = 45,
	ToolTip = "TXT_KEY_SPUE_FUCHUAN_CANNON_BUTTON", -- or a TXT_KEY_ or a function
	
  
	
	Condition = function(action, unit)

		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		local flag = 0
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID) 
		and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
		then
			if player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) == 0 then
				flag = 1
			elseif player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) > 0 then
				-- 兵力足够时按钮才会显示
				local iTotalTroops = player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS"]) 
				local iUsedTroops = player:CountNumBuildings(GameInfoTypes["BUILDING_TROOPS_USED"]) 
				if iTotalTroops - iUsedTroops >  1 then
					flag = 1
				end
			end
		end

		return flag == 1;
  
	end, -- or nil or a boolean, default is true
	
	Disabled = function(action, unit)   
		return false;
	end, -- or nil or a boolean, default is false
	
	Action = function(action, unit, eClick) 
	  
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()
		--local iNewUnit = GameInfoTypes.UNIT_EXPLORERX;
		--local overrideUnit = GameInfo.Civilization_UnitClassOverrides{ UnitClassType = "UNITCLASS_EXPLORERX", CivilizationType = GameInfo.Civilizations[player:GetCivilizationType()].Type }();
		--if overrideUnit and overrideUnit.UnitType then
		--	iNewUnit = GameInfoTypes[overrideUnit.UnitType];
		--end

		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_CULVERIN")
    	local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
        
    	while (sUpgradeUnitType ~= nil) do
    	   sUnitType = sUpgradeUnitType
    	   sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
    	end
		
		local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], plotX, plotY, UNITAI_DEFENSE)
		NewUnit:JumpToNearestValidPlot()
		NewUnit:SetExperience(unitEXP)
		
		unit:SetMoves(0)
  
	end
  };
  
LuaEvents.UnitPanelActionAddin(SPUE_FuChuan_Cannon_Button)
--------------------------------------------------------------
-- 战斗效果
--------------------------------------------------------------
local isSPTP = false
local isSPTPID = "4a11d485-6e59-4392-928e-dc0c24efc083" -- 传统修复mod

for _, mod in pairs(Modding.GetActivatedMods()) do
	if (mod.ID == isSPTPID) then
		isSPTP = true
		break
	end
end

--******************************************************************************* Unit Combat Rules *******************************************************************************
local g_DoNewAttackEffect = nil;
function NewAttackEffectStarted(iType, iPlotX, iPlotY)
	if (PreGame.GetGameOption("GAMEOPTION_SP_NEWATTACK_OFF") == 1) then
		print("SP Attack Effect - OFF!");
		return;
	end
	
	if iType == GameInfoTypes["BATTLETYPE_MELEE"]
	or iType == GameInfoTypes["BATTLETYPE_RANGED"]
	or iType == GameInfoTypes["BATTLETYPE_AIR"]
	or iType == GameInfoTypes["BATTLETYPE_SWEEP"]
	then
		g_DoNewAttackEffect = {
			attPlayerID = -1,
			attUnitID   = -1,
			defPlayerID = -1,
			defUnitID   = -1,
			attODamage  = 0,
			defODamage  = 0,
			PlotX = iPlotX,
			PlotY = iPlotY,
			bIsCity = false,
			defCityID = -1,
			battleType = iType,
		};
	end
end
GameEvents.BattleStarted.Add(NewAttackEffectStarted);
tCaptureSPUnits = {};
function NewAttackEffectJoined(iPlayer, iUnitOrCity, iRole, bIsCity)
	if g_DoNewAttackEffect == nil
	or Players[ iPlayer ] == nil or not Players[ iPlayer ]:IsAlive()
	or (not bIsCity and Players[ iPlayer ]:GetUnitByID(iUnitOrCity) == nil)
	or (bIsCity and (Players[ iPlayer ]:GetCityByID(iUnitOrCity) == nil or iRole == GameInfoTypes["BATTLEROLE_ATTACKER"]))
	or iRole == GameInfoTypes["BATTLEROLE_BYSTANDER"]
	then
		return;
	end
	if bIsCity then
		g_DoNewAttackEffect.defPlayerID = iPlayer;
		g_DoNewAttackEffect.defCityID = iUnitOrCity;
		g_DoNewAttackEffect.bIsCity = bIsCity;
	elseif iRole == GameInfoTypes["BATTLEROLE_ATTACKER"] then
		g_DoNewAttackEffect.attPlayerID = iPlayer;
		g_DoNewAttackEffect.attUnitID = iUnitOrCity;
		g_DoNewAttackEffect.attODamage = Players[ iPlayer ]:GetUnitByID(iUnitOrCity):GetDamage();
	elseif iRole == GameInfoTypes["BATTLEROLE_DEFENDER"] or iRole == GameInfoTypes["BATTLEROLE_INTERCEPTOR"] then
		g_DoNewAttackEffect.defPlayerID = iPlayer;
		g_DoNewAttackEffect.defUnitID = iUnitOrCity;
		g_DoNewAttackEffect.defODamage = Players[ iPlayer ]:GetUnitByID(iUnitOrCity):GetDamage();
	end
	
	-- Prepare for Capture Unit!
	if not bIsCity and g_DoNewAttackEffect.battleType == GameInfoTypes["BATTLETYPE_MELEE"]
	and Players[g_DoNewAttackEffect.attPlayerID] ~= nil and Players[g_DoNewAttackEffect.attPlayerID]:GetUnitByID(g_DoNewAttackEffect.attUnitID) ~= nil
	and Players[g_DoNewAttackEffect.defPlayerID] ~= nil and Players[g_DoNewAttackEffect.defPlayerID]:GetUnitByID(g_DoNewAttackEffect.defUnitID) ~= nil
	then
		local attPlayer = Players[g_DoNewAttackEffect.attPlayerID];
		local attUnit   = attPlayer:GetUnitByID(g_DoNewAttackEffect.attUnitID);
		local defPlayer = Players[g_DoNewAttackEffect.defPlayerID];
		local defUnit   = defPlayer:GetUnitByID(g_DoNewAttackEffect.defUnitID);
	
		if attUnit:GetCaptureChance(defUnit) > 0 then
			local unitClassType = defUnit:GetUnitClassType();
			local unitPlot = defUnit:GetPlot();
			local unitOriginalOwner = defUnit:GetOriginalOwner();
		
			local sCaptUnitName = nil;
			if defUnit:HasName() then
				sCaptUnitName = defUnit:GetNameNoDesc();
			end
			
			local unitLevel = defUnit:GetLevel();
			local unitEXP   = attUnit:GetExperience();
			local attMoves = attUnit:GetMoves();
			print("attacking Unit remains moves:"..attMoves);
		
			tCaptureSPUnits = {unitClassType, unitPlot, g_DoNewAttackEffect.attPlayerID, unitOriginalOwner, sCaptUnitName, unitLevel, unitEXP, attMoves};
		end
	end
end
GameEvents.BattleJoined.Add(NewAttackEffectJoined);
function NewAttackEffect()
	 --Defines and status checks
	if g_DoNewAttackEffect == nil or Players[ g_DoNewAttackEffect.defPlayerID ] == nil
	or Players[ g_DoNewAttackEffect.attPlayerID ] == nil or not Players[ g_DoNewAttackEffect.attPlayerID ]:IsAlive()
	or Players[ g_DoNewAttackEffect.attPlayerID ]:GetUnitByID(g_DoNewAttackEffect.attUnitID) == nil
	-- or Players[ g_DoNewAttackEffect.attPlayerID ]:GetUnitByID(g_DoNewAttackEffect.attUnitID):IsDead()
	or Map.GetPlot(g_DoNewAttackEffect.PlotX, g_DoNewAttackEffect.PlotY) == nil
	then
		return;
	end
	
	local attPlayerID = g_DoNewAttackEffect.attPlayerID;
	local attPlayer = Players[ attPlayerID ];
	local defPlayerID = g_DoNewAttackEffect.defPlayerID;
	local defPlayer = Players[ defPlayerID ];
	
	local attUnit = attPlayer:GetUnitByID(g_DoNewAttackEffect.attUnitID);
	local attPlot = attUnit:GetPlot();
	
	local plotX = g_DoNewAttackEffect.PlotX;
	local plotY = g_DoNewAttackEffect.PlotY;
	local batPlot = Map.GetPlot(plotX, plotY);
	local batType = g_DoNewAttackEffect.battleType;
	
	local bIsCity = g_DoNewAttackEffect.bIsCity;
	local defUnit = nil;
	local defPlot = nil;
	local defCity = nil;
	
	local attFinalUnitDamage = attUnit:GetDamage();
	local defFinalUnitDamage = 0;
	local attUnitDamage = attFinalUnitDamage - g_DoNewAttackEffect.attODamage;
	local defUnitDamage = 0;
	
	if not bIsCity and defPlayer:GetUnitByID(g_DoNewAttackEffect.defUnitID) then
		defUnit = defPlayer:GetUnitByID(g_DoNewAttackEffect.defUnitID);
		defPlot = defUnit:GetPlot();
		defFinalUnitDamage = defUnit:GetDamage();
		defUnitDamage = defFinalUnitDamage - g_DoNewAttackEffect.defODamage;
	elseif bIsCity and defPlayer:GetCityByID(g_DoNewAttackEffect.defCityID) then
		defCity = defPlayer:GetCityByID(g_DoNewAttackEffect.defCityID);
	end
	
	g_DoNewAttackEffect = nil;
	
	--Complex Effects Only for Human VS AI(reduce time and enhance stability)
	if not attPlayer:IsHuman() and not defPlayer:IsHuman() then
		--[[
		--Larger AI's Bonus against Smaller AIs - AI is easier to become a Boss! Player will feel excited fighting Boss!
		--AI will capture another AI's city by ranged attack
		-- AI boss's City cann't be Captured by AI Ranged Unit!
		if not AICanBeBoss(defPlayer) and defCity then
			print ("AI attacking AI's City!")
			if defCity:GetDamage() >= defCity:GetMaxHitPoints() - 1 then
				local cityPop = defCity:GetPopulation()
				if cityPop < 10 or AICanBeBoss(attPlayer) then
					-- attPlayer:AcquireCity(defCity)
					print ("AI Ranged Unit Takes another AI's city!")
				end
			end
		end
		]]
		return;
	end
	-- Not for Barbarins
	if attPlayer:IsBarbarian() then
		return;
	end

	local KillingEffectsID = GameInfo.UnitPromotions["PROMOTION_GAIN_MOVES_AFFER_KILLING"].ID

	-- 玄甲军杀敌回血
	----------- PROMOTION_GAIN_MOVES_AFFER_KILLING Effects
	if not isSPTP and defUnit and attUnit:IsHasPromotion(KillingEffectsID) then
		print ("DefUnit Damage:"..defFinalUnitDamage);
		if defFinalUnitDamage >= 100 then
			local maxattUnitHP = attUnit:GetMaxHitPoints()
			--attUnit:SetMoves(attUnit:MovesLeft()+GameDefines["MOVE_DENOMINATOR"]);
			--attUnit:SetMadeAttack(false);
			attUnit:ChangeDamage(0 - 0.25 * maxattUnitHP)
			print ("Ah, fresh meat!");
		end
 	end

	----------- 达芬奇坦克另类AOE
	if (attUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_DVC_TANK"].ID)) then
	
	for i = 0, 5 do
		local adjPlot = Map.PlotDirection(attPlot:GetX(), attPlot:GetY(), i)
		if (adjPlot ~= nil and not adjPlot:IsCity()) then
			print("Available for AOE Damage!")
			local unitCount = adjPlot:GetNumUnits();
            if unitCount > 0 then
            for i = 0, unitCount-1, 1 do
			local pUnit = adjPlot:GetUnit(i) ------------Find Units affected
			if pUnit and (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) then
				local pCombat = pUnit:GetBaseCombatStrength()
				local pPlayer = Players[pUnit:GetOwner()]
				
				if PlayersAtWar(attPlayer, pPlayer) then
					-- local SplashDamageOri = attUnit:GetRangeCombatDamage(pUnit,nil,false)
					local SplashDamageOri = defUnitDamage
						
					local AOEmod = 1.0   -- the percent of damage reducing to nearby units
						
					local text = nil;
					local attUnitName = attUnit:GetName();
					local defUnitName = pUnit:GetName();
						
					local SplashDamageFinal = math.floor(SplashDamageOri * AOEmod); -- Set the Final Damage
					if     SplashDamageFinal >= pUnit:GetCurrHitPoints() then
						SplashDamageFinal = pUnit:GetCurrHitPoints();
						local eUnitType = pUnit:GetUnitType();
						UnitDeathCounter(attPlayerID, pUnit:GetOwner(), eUnitType);
							
						-- Notification
						if     defPlayerID == Game.GetActivePlayer() then
							-- local heading = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_UNIT_DESTROYED_SHORT")
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE_DEATH", attUnitName, defUnitName);
							-- defPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC , text, heading, plotX, plotY)
						elseif attPlayerID == Game.GetActivePlayer() then
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE_ENEMY_DEATH", attUnitName, defUnitName);
						end
					elseif SplashDamageFinal > 0 then
						-- Notification
						if     defPlayerID == Game.GetActivePlayer() then
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE", attUnitName, defUnitName, SplashDamageFinal);
						elseif attPlayerID == Game.GetActivePlayer() then
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE_ENEMY", attUnitName, defUnitName, SplashDamageFinal);
						end
					end
					if text then
						Events.GameplayAlertMessage( text );
					end
					pUnit:ChangeDamage(SplashDamageFinal, attPlayer)
--					--------------Death Animation
--					pUnit:PushMission(MissionTypes.MISSION_DIE_ANIMATION)
					print("Splash Damage="..SplashDamageFinal)
				end
			end
			end
			end
		end
	end
	end

	----- Charge Damage 瑞士佣兵&瓦兰吉卫队冲锋伤害
	if  not attUnit:IsDead() and (attUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD"].ID) or attUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_GUARD"].ID))
	and not defUnit:IsDead() and batPlot ~= defPlot and defUnitDamage > 0 and batType == GameInfoTypes["BATTLETYPE_MELEE"]
	then
	-- print("Available for Charge Damage!");
	local defFinalUnitDamageChange = 0;
	local ChargeMod = 0.3;	-- The percentage of charging damage to the other unit
	if attUnit:IsHasPromotion(Charge1ID) then
		if attUnit:IsHasPromotion(Charge2ID) then
			defFinalUnitDamageChange = 10;
			ChargeMod = 0.8;
		end
		if attUnit:IsHasPromotion(Charge3ID) then
			defFinalUnitDamageChange = 20;
			ChargeMod = 1.3;
		end
	end
	
	local unitCount = batPlot:GetNumUnits();
	if unitCount >= 1 and batPlot ~= attPlot then
		print ("Our damage done="..defUnitDamage);
		for i = 0, unitCount-1, 1 do
			local pFoundUnit = batPlot:GetUnit(i)
			if pFoundUnit ~= nil and pFoundUnit:GetID() ~= defUnit:GetID() then
				local pPlayer = Players[pFoundUnit:GetOwner()];
				if PlayersAtWar(attPlayer,pPlayer) then
					local attUnitStrength = attUnit:GetMaxAttackStrength(attPlot, defPlot, defUnit);
					print ("attUnitStrength:" .. attUnitStrength);
					local pFoundUnitStrength = pFoundUnit:GetMaxDefenseStrength(batPlot, attUnit);
					print ("pFoundUnitStrength:" .. pFoundUnitStrength);
					local ChargeDamageOri = attUnit:GetCombatDamage(attUnitStrength, pFoundUnitStrength, attFinalUnitDamage, false, false, false);
					print ("ChargeDamageOri:" .. ChargeDamageOri);--we now consider the buff and debuff when caculating the charge damage.---by WM
					-- local ChargeDamageOri = attUnit:GetCombatDamage(attUnitStrength, pUnitStrength, attUnit:GetDamage(),false,false, false)
					
					local text = nil;
					local attUnitName = attUnit:GetName();
					local defUnitName = pFoundUnit:GetName();
					
					print ("ChargeMod:"..ChargeMod)
					local ChargeDamageFinal = math.floor(ChargeDamageOri * ChargeMod);
					if     ChargeDamageFinal >= pFoundUnit:GetCurrHitPoints() then
						local eUnitType = pFoundUnit:GetUnitType();
						UnitDeathCounter(attPlayerID, pFoundUnit:GetOwner(), eUnitType);
						
						-- Notification
						if     defPlayerID == Game.GetActivePlayer() then
							-- local heading = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_UNIT_DESTROYED_SHORT")
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_DEATH", attUnitName, defUnitName);
							-- defPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC , text, heading, plotX, plotY)
						elseif attPlayerID == Game.GetActivePlayer() then
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_ENEMY_DEATH", attUnitName, defUnitName);
						end
						pFoundUnit:Kill();
					elseif ChargeDamageFinal > 0 then
						-- Notification
						if     defPlayerID == Game.GetActivePlayer() then
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE", attUnitName, defUnitName, ChargeDamageFinal);
						elseif attPlayerID == Game.GetActivePlayer() then
							text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_ENEMY", attUnitName, defUnitName, ChargeDamageFinal);
						end
						pFoundUnit:ChangeDamage(ChargeDamageFinal,attPlayer)
						print("Charge Damage="..ChargeDamageFinal)
					end
					if text then
						Events.GameplayAlertMessage( text );
					end
				end
			end
		end
	else
		print ("our unit is in this plot or this plot has no other enemy - don't need to charge!")
	end
	local text = nil;
	local attUnitName = attUnit:GetName();
	local defUnitName = defUnit:GetName();
	
	if     defFinalUnitDamageChange >= defUnit:GetCurrHitPoints() then
		defFinalUnitDamageChange = defUnit:GetCurrHitPoints();
		local eUnitType = defUnit:GetUnitType();
		UnitDeathCounter(attPlayerID, defPlayerID, eUnitType);
		
		-- Notification
		if     defPlayerID == Game.GetActivePlayer() then
			-- local heading = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_UNIT_DESTROYED_SHORT")
			text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_DEATH", attUnitName, defUnitName);
			-- defPlayer:AddNotification(NotificationTypes.NOTIFICATION_GENERIC , text, heading, defUnit:GetX(), defUnit:GetY())
		elseif attPlayerID == Game.GetActivePlayer() then
			text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_ENEMY_DEATH", attUnitName, defUnitName);
		end
	elseif defFinalUnitDamageChange > 0 then
		-- Notification
		if     defPlayerID == Game.GetActivePlayer() then
			text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE", attUnitName, defUnitName, defFinalUnitDamageChange);
		elseif attPlayerID == Game.GetActivePlayer() then
			text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_ENEMY", attUnitName, defUnitName, defFinalUnitDamageChange);
		end
	end
	if text then
		Events.GameplayAlertMessage( text );
	end
	defFinalUnitDamage = defFinalUnitDamage + defFinalUnitDamageChange;
	defUnit:ChangeDamage(defFinalUnitDamageChange);
	if attUnit:CanMoveThrough(batPlot) and batPlot ~= attPlot then
		-- if the target plot has no unit,your unit advances into the target plot!
		attUnit:SetMoves(attUnit:MovesLeft() + GameDefines["MOVE_DENOMINATOR"]);
		attUnit:PushMission(MissionTypes.MISSION_MOVE_TO, plotX, plotY);
	end
	end


end--function END
GameEvents.BattleFinished.Add(NewAttackEffect)

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
-- 南洋海盗船远程劫掠
--------------------------------------------------------------
--print("This is the 'Units - Ranged Pillage' mod script.")

function OnUnitCanRangeAttackAt(iPlayer, iUnit, iX, iY, bNeedWar)
	local pPlayer = Players[iPlayer]
	local pUnit = pPlayer:GetUnitByID(iUnit)
	local pUnitInfo = GameInfo.Units[pUnit:GetUnitType()]	
	
	if (pUnitInfo.RangedPillage > 0) then
		local pPlot = Map.GetPlot(iX, iY)
		local ePlayer = Players[pPlot:GetOwner()]
		local iRangedPillage = pUnitInfo.RangedPillage

    	if (pPlot:GetImprovementType() ~= -1 and PlayersAtWar(ePlayer, pPlayer)) then
      		print(string.format("%s can range pillage the improvement at (%i, %i)", pUnit:GetName(), iX, iY))

      		if (iRangedPillage == 1 or not pPlot:IsImprovementPillaged()) then
        		-- TODO - for an AI player, does this unit want to pillage the tile?  This opens a whole can of worms!
	    		return pPlayer:IsHuman();
	  		end
		elseif (pPlot:IsRoute()) then
      	print(string.format("%s can range pillage the route at (%i, %i)", pUnit:GetName(), iX, iY))

      		if (iRangedPillage == 1 or not pPlot:IsRoutePillaged()) then
        		-- TODO - for an AI player, does this unit want to pillage the tile?  This opens a whole can of worms!
	   	 		return pPlayer:IsHuman();
	  		end
		end
  	end

  return false;
end
GameEvents.UnitCanRangeAttackAt.Add(OnUnitCanRangeAttackAt)

function OnUnitRangeAttackAt(iPlayer, iUnit, iX, iY)
	local pUnit = Players[iPlayer]:GetUnitByID(iUnit)
	local pPlot = Map.GetPlot(iX, iY)
	local pUnitInfo = GameInfo.Units[pUnit:GetUnitType()]
	local iRangedPillage = pUnitInfo.RangedPillage
	

	
	print(string.format("%s is range pillaging the tile at (%i, %i)", pUnit:GetName(), iX, iY))

	-- Doesn't matter how strong the attacking units RangedPillage is, we can always pillage a functioning improvement/route
	-- Four options for the tile - improvement, pillaged improvement, route, pillaged route
	if (pPlot:GetImprovementType() ~= -1 and not pPlot:IsImprovementPillaged()) then
		-- Non-pillaged improvement, at the very least, pillage it
		pPlot:SetImprovementPillaged(true)
		pUnit:ChangeExperience(pUnitInfo.XPValueAttack)
		pUnit:SetDamage(-25)
	elseif (pPlot:IsRoute() and not pPlot:IsRoutePillaged()) then
		-- Non-pillaged route, at the very least, pillage it
		pPlot:SetRoutePillaged(true)
		pUnit:ChangeExperience(pUnitInfo.XPValueAttack)
		pUnit:SetDamage(-25)
	end

	-- Can the attacking unit destroy the improvement/route?

	return 1;
end
GameEvents.UnitRangeAttackAt.Add(OnUnitRangeAttackAt)
--------------------------------------------------------------
-- 政策代表单位升级后命名
--------------------------------------------------------------
-- MOD by CaptainCWB
function SetPolicyUnitsName( iPlayer, iOldUnit,  iNewUnit)
	if Players[ iPlayer ] == nil or not Players[ iPlayer ]:IsAlive()
	or Players[ iPlayer ]:GetUnitByID( iOldUnit ) == nil
	or Players[ iPlayer ]:GetUnitByID( iOldUnit ):IsDead()
	or Players[ iPlayer ]:GetUnitByID( iOldUnit ):IsDelayedDeath()
	or Players[ iPlayer ]:GetUnitByID( iOldUnit ):HasName() 
	then
		return;
	end
	local pUnit = Players[ iPlayer ]:GetUnitByID( iOldUnit );
	if  pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_PRAETORIAN"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_PRAETORIAN");	
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_WEIYANG"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_WEIYANG");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_KNIGHT_NEW");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_YULIN_CAVALRY");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ROHAN_CAVALRY"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID) then
			pUnit:SetName("TXT_KEY_UNIT_SPUE_FUCHUAN");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_DVC_TANK"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_DVC_TANK");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_DVC_TANK"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_SSPRIVATEER");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SSPRIVATEER"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_GENOAXBOW");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_SWISSGUARD");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_DVC_TANK"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_VARANGIAN");
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_GUARD"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD");
	end
end
GameEvents.UnitUpgraded.Add(SetPolicyUnitsName)


