-- SaveUtils
WARN_NOT_SHARED = false; include("SaveUtils"); MY_MOD_NAME = "SPUE";
-- SPCode
include("UtilityFunctions")
include("FLuaVector.lua")
include("CombatPercent_Misc_SPUE.lua")
include("SPUE_UtilityFunctions.lua")


local KnightID  = GameInfo.UnitPromotions["PROMOTION_KNIGHT_COMBAT"].ID
local TankID    = GameInfo.UnitPromotions["PROMOTION_TANK_COMBAT"].ID

local Charge1ID = GameInfo.UnitPromotions["PROMOTION_CHARGE_1"].ID
local Charge2ID = GameInfo.UnitPromotions["PROMOTION_CHARGE_2"].ID
local Charge3ID = GameInfo.UnitPromotions["PROMOTION_CHARGE_3"].ID


-- 王城骑士
local KingsKnightID               = GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW"].ID
local KingsKnightBID              = GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_B"].ID
local KingsKnightCID              = GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_C"].ID

-- local KingsKnightPops				= 0
local g_KingsKnightPops           = { GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_A000"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_A020"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_A040"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_A060"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_A080"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW_A100"].ID }

-- 瓦兰吉	
local VARANGIANID                 = GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN"].ID
local VARANGIANBonusID            = GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_SEA"].ID
local VARANGIANGuardID            = GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_GUARD"].ID

-- 铁人军	
local IronTroopID                 = GameInfo.UnitPromotions["PROMOTION_SPUE_IRON_TROOP"].ID

-- 朱斯蒂尼亚尼弩手
local unitPromotionGenoaID        = GameInfo.UnitPromotions["PROMOTION_SPUE_GENOAXBOW"].ID
local unitPromotionGenoaEliteID   = GameInfo.UnitPromotions["PROMOTION_SPUE_GENOAXBOW_ELITE"].ID
local unitPromotionGenoaEffectID  = GameInfo.UnitPromotions["PROMOTION_SPUE_GENOAXBOW_ELITE_EFFECT"].ID

-- 瑞士卫队
local unitPromotionSwissID        = GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD"].ID
local unitPromotionSwissEliteID   = GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD_ELITE"].ID

-- 敕令骑士
local unitPromotionElmetiID       = GameInfo.UnitPromotions["PROMOTION_SPUE_ELMETI"].ID
local unitPromotionElmetiEliteID  = GameInfo.UnitPromotions["PROMOTION_SPUE_ELMETI_ELITE"].ID

-- 黑森
local unitPromotionHessianID      = GameInfo.UnitPromotions["PROMOTION_SPUE_HESSIAN"].ID
local unitPromotionHessianEliteID = GameInfo.UnitPromotions["PROMOTION_SPUE_HESSIAN_ELITE"].ID

-- 私掠舰
local unitPromotionPrivateerID    = GameInfo.UnitPromotions["PROMOTION_SPUE_PRIVATEER"].ID

-- 倭寇帆船
local unitPromotionFuneID         = GameInfo.UnitPromotions["PROMOTION_SPUE_FUNE"].ID


-- 十字战车	
local pGreatCrossID                 = GameInfo.UnitPromotions["PROMOTION_SPUE_GREAT_CROSS"].ID
local pGreatCrossEffectID           = GameInfo.UnitPromotions["PROMOTION_SPUE_GREAT_CROSS_EFFECT"].ID

-- 热气球	
local pHotAirBalloonID              = GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON_NEW"].ID
local pHotAirBalloonEffectID        = GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON_EFFECT"].ID
local pHotAirBalloonEffectLv1ID     = GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON_EFFECT_LV1"].ID
local pHotAirBalloonEffectLv2ID     = GameInfo.UnitPromotions["PROMOTION_SPUE_HOT_AIR_BALLOON_EFFECT_LV2"].ID

-- 三大骑士团	
local TemplarKnightID               = GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_TEMPLAR"].ID
local TeutonicKnightID              = GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_TEUTONIC"].ID
local HospitallerKnightID           = GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_HOSPITALLER"].ID
local HospitallerEffectID           = GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_HOSPITALLER_EFFECT"].ID

-- 涌泉守卫	
local unitPromotionGondorID         = GameInfo.UnitPromotions["PROMOTION_SPUE_GONDORGUARD"].ID

-- 奥古斯都之路
local unitPromotionAugustusID       = GameInfo.UnitPromotions["PROMOTION_SPUE_AUGUSTUS"].ID
local unitPromotionAugustusCombatID = GameInfo.UnitPromotions["PROMOTION_SPUE_AUGUSTUS_COMBAT"].ID

-- 巴西琉斯之道
local unitPromotionBaseliusID       = GameInfo.UnitPromotions["PROMOTION_SPUE_BASELIUS"].ID
local g_BaseliusDefense             = { GameInfo.UnitPromotions["PROMOTION_SPUE_BASELIUS_DEFENSE1"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_BASELIUS_DEFENSE2"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_BASELIUS_DEFENSE3"].ID,
	GameInfo.UnitPromotions["PROMOTION_SPUE_BASELIUS_DEFENSE4"].ID, }

-- 神州天子之权
local unitPromotionEmperorID        = GameInfo.UnitPromotions["PROMOTION_SPUE_EMPEROR"].ID
local unitPromotionEmperorFlag      = 0

-- 靖抚甲骑
local unitPromotionBucellariID      = GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD"].ID
local unitPromotionBucellariEliteID = GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD_ELITE"].ID

-- 海洋之火
local unitPromotionOceanFireID      = GameInfo.UnitPromotions["PROMOTION_SPUE_OCEAN_FIRE"].ID
local unitPromotionGreekFireID      = GameInfo.UnitPromotions["PROMOTION_SPUE_FIRE_THROWER"].ID

local unitPromotionOceanFireE02ID   = GameInfo.UnitPromotions["PROMOTION_SPUE_OCEAN_FIRE_02"].ID
local unitPromotionOceanFireE01ID   = GameInfo.UnitPromotions["PROMOTION_SPUE_OCEAN_FIRE_01"].ID

-- 鹰击055	
local unitPromotion055ID            = GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055"].ID
local unitPromotion055EffectID      = GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_EFFECT"].ID

-- 鹰击21	
local unitPromotion055Missile1ID    = GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_MISSILE"].ID
local unitPromotion055Missile2ID    = GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_MISSILE2"].ID
local unitPromotion055Missile3ID    = GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_MISSILE3"].ID
local g_055Missiles 				= {GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_MISSILE"].ID,
									   GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_MISSILE2"].ID,
									   GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_SUPER_055_MISSILE3"].ID}


-- 炎黄坦克
local unitPromotionOvrlordID        = GameInfo.UnitPromotions["PROMOTION_SPUE_NVOVRLORD"].ID
local unitPromotionOvrlordEffectID  = GameInfo.UnitPromotions["PROMOTION_SPUE_NVOVRLORD_EFFECT"].ID
local unitPromotionOvrlordNuclearID = GameInfo.UnitPromotions["PROMOTION_SPUE_NVOVRLORD_NUCLEAR"].ID

-- 空天母舰
local unitPromotionHeliCarrierID    = GameInfo.UnitPromotions["PROMOTION_SPUE_FREEDOM_HELICARRIER"].ID
local unitPromotionHeliFighterID    = GameInfo.UnitPromotions["PROMOTION_SPUE_FREEDOM_HELICARRIER_FIGHTER"].ID

-- 装甲掷弹兵
local unitPromotionPanzerID         = GameInfo.UnitPromotions["PROMOTION_SPUE_AUTOCRACY_PANZERG"].ID
local unitPromotionPanzerEffectID   = GameInfo.UnitPromotions["PROMOTION_SPUE_AUTOCRACY_PANZERG_EFFECT"].ID

-- 坦克
local TankID                        = GameInfo.UnitPromotions["PROMOTION_TANK_COMBAT"].ID

-- 超级要塞
local unitPromotionGAIAID           = GameInfo.UnitPromotions["PROMOTION_SPUE_AUTOCRACY_JUFORTRESS"].ID
local unitPromotionGAIA_ShipID      = GameInfo.UnitPromotions["PROMOTION_SPUE_AUTOCRACY_JUFORTRESSSHIP"].ID
local unitPromotionGAIA_HeadID      = GameInfo.UnitPromotions["PROMOTION_SPUE_AUTOCRACY_JUFORTRESSHEAD"].ID

local GAIAShipHasAttackedThisTurn   = 0

-- 舰载机	
local CarrierFighterID              = GameInfo.UnitPromotions["PROMOTION_CARRIER_FIGHTER"].ID

-- 战斗机	
local IntercepterAircraftUnitID     = GameInfo.UnitPromotions["PROMOTION_ANTI_AIR_II"].ID

-- 航母	
local AirCraftCarrierID             = GameInfo.UnitPromotions["PROMOTION_CARRIER_UNIT"].ID

local AntiDebuffID                  = GameInfo.UnitPromotions["PROMOTION_ANTI_DEBUFF"].ID


-- UU单位
local unitPromotionChineseICID   = GameInfo.UnitPromotions["PROMOTION_SPUE_CHINA_IRON_CAVALRY"].ID
local unitPromotionConnecticutID = GameInfo.UnitPromotions["PROMOTION_SPUE_AMERICA_CONNECTICUT"].ID
local unitPromotionSemyonovID    = GameInfo.UnitPromotions["PROMOTION_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT"].ID
local unitPromotionSeaDogID      = GameInfo.UnitPromotions["PROMOTION_SPUE_ENGLAND_GRAND_CARRACK"].ID


--------------------------------------------------------------
-- 单位下海模型强制修正
--------------------------------------------------------------
function EmbarkGraphic(playerID)
	for pPlayer = 0, GameDefines.MAX_MAJOR_CIVS - 1, 1 do
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
			if pEraID >= GameInfo.Eras["ERA_MEDIEVAL"].ID and pEraID < GameInfo.Eras["ERA_INDUSTRIAL"].ID then
				pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEON")
				if activeCivSuffix == '_ASIA'
					or activeCivSuffix == '_CHINA'
				then
					pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEON_ASIA")
				end
				if GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_POLYNESIAN" then
					pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_U_POLYNESIAN_WAR_CANOE")
				end
			end
			if pEraID <= GameInfo.Eras["ERA_CLASSICAL"].ID then
				pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEY")
				if activeCivSuffix == '_ASIA'
					or activeCivSuffix == '_CHINA'
				then
					pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEY_ASIA")
				end
				if GameInfo.Civilizations[activeCivID].Type == "CIVILIZATION_POLYNESIAN" then
					pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_U_POLYNESIAN_WAR_CANOE")
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
	if Players[iPlayerID] and Players[iPlayerID]:IsAlive()
		and Players[iPlayerID]:GetUnitByID(iUnitID)
		and not Players[iPlayerID]:GetUnitByID(iUnitID):IsDead()
		and not Players[iPlayerID]:GetUnitByID(iUnitID):IsDelayedDeath()
		and (Players[iPlayerID]:GetUnitByID(iUnitID):GetUnitClassType() == GameInfoTypes.UNITCLASS_CULVERIN
			or Players[iPlayerID]:GetUnitByID(iUnitID):GetUnitClassType() == GameInfoTypes.UNITCLASS_CANNON
			or Players[iPlayerID]:GetUnitByID(iUnitID):GetUnitClassType() == GameInfoTypes.UNITCLASS_SPUE_FIELDGUN)
		and Players[iPlayerID]:GetUnitByID(iUnitID):IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_MUST_SET_UP"].ID)
	then
		Players[iPlayerID]:GetUnitByID(iUnitID):SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_MUST_SET_UP"].ID,
			false);
	end
end

Events.SerialEventUnitCreated.Add(NoSetUPforCannons);
--------------------------------------------------------------
-- 世界强权开启
--------------------------------------------------------------
local isSPEx = false
local isSPExID = "41450919-c52c-406f-8752-5ea34be32b2d"

for _, mod in pairs(Modding.GetActivatedMods()) do
	if (mod.ID == isSPExID) then
		isSPEx = true
		break
	end
end
--------------------------------------------------------------
-- 飞机在境内且不位于城市时可进行升级
--------------------------------------------------------------
--include('UtilityFunctions.lua')
AirPlanesUpgradeNotInCityButton = {
	Name = "AirPlanesUpgradeNotInCity",
	Title = "TXT_KEY_SPUE_PLANEUPGRADE_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                     -- default is 200
	IconAtlas = "promoVP_atlas_02",          -- 45 and 64 variations required
	PortraitIndex = 14,
	ToolTip = "TXT_KEY_SPUE_PLANEUPGRADE",   -- or a TXT_KEY_ or a function



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
		local pPlayer        = Players[unit:GetOwner()];
		local unitX          = unit:GetX()
		local unitY          = unit:GetY()
		local unitDamage     = unit:GetDamage()
		local unitType       = unit:GetUnitType()
		local unitAIType     = unit:GetUnitAIType()
		local iUnitType      = unit:GetUpgradeUnitType();
		local iGoldToUpgrade = unit:UpgradePrice(iUnitType);

		--local unitEXP = unit:GetExperience()

		--unit:Kill()

		local unitLevel      = unit:GetLevel();
		local unitEXP        = unit:GetExperience();

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
		pPlayer:ChangeGold(-iGoldToUpgrade)


		print("AirCraft Upgrade Pressed!")
	end
};

LuaEvents.UnitPanelActionAddin(AirPlanesUpgradeNotInCityButton)
--------------------------------------------------------------
-- 文明选取意识形态时赠送标识政策
--------------------------------------------------------------
function SPUE_OnAdoptPolicyBranch(playerID, policyID)
	local player = Players[playerID]
	if player == nil then return end
	if policyID == nil then return end
	local policy = GameInfo.Policies[policyID]

	if policy.PolicyBranchType == GameInfo.PolicyBranchTypes["POLICY_BRANCH_ORDER"].Type
		and not player:HasPolicy(GameInfo.Policies["POLICY_SPUE_ORDER"].ID)
	then
		player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_ORDER"].ID, true, true)
		return
	elseif policy.PolicyBranchType == GameInfo.PolicyBranchTypes["POLICY_BRANCH_FREEDOM"].Type
		and not player:HasPolicy(GameInfo.Policies["POLICY_SPUE_FREEDOM"].ID)
	then
		player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_FREEDOM"].ID, true, true)
		return
	elseif policy.PolicyBranchType == GameInfo.PolicyBranchTypes["POLICY_BRANCH_AUTOCRACY"].Type
		and not player:HasPolicy(GameInfo.Policies["POLICY_SPUE_AUTOCRACY"].ID)
	then
		player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_AUTOCRACY"].ID, true, true)
		return
	end

	--Revolution BUG Fix
	if player:HasPolicy(GameInfo.Policies["POLICY_SPUE_ORDER"].ID)
		and not player:HasPolicyBranch(GameInfo.PolicyBranchTypes["POLICY_BRANCH_ORDER"].Type)
	then
		player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_ORDER"].ID, false)
	elseif player:HasPolicy(GameInfo.Policies["POLICY_SPUE_FREEDOM"].ID)
		and not player:HasPolicyBranch(GameInfo.PolicyBranchTypes["POLICY_BRANCH_FREEDOM"].Type)
	then
		player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_FREEDOM"].ID, false)
	elseif player:HasPolicy(GameInfo.Policies["POLICY_SPUE_AUTOCRACY"].ID)
		and not player:HasPolicyBranch(GameInfo.PolicyBranchTypes["POLICY_BRANCH_AUTOCRACY"].Type)
	then
		player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_AUTOCRACY"].ID, false)
	end
end

GameEvents.PlayerAdoptPolicy.Add(SPUE_OnAdoptPolicyBranch)
--------------------------------------------------------------
-- 根据意识形态锁定精英计划&根据政策锁定精英计划
--------------------------------------------------------------
function SPUE_IdeoProjectOnly(playerID, cityID, projectTypeID)
	local player = Players[playerID]
	if player == nil or player:IsBarbarian() then return end
	--local city = player:GetCityByID(cityID)
	-- 秩序
	if (projectTypeID == GameInfo.Projects["PROJECT_SPUE_ORDER"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_ORDER"].ID)
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_ORDER_TANK"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_ORDER"].ID)
		-- 自由
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_FREEDOM"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_FREEDOM"].ID)
		-- 独裁
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_AUTOCRACY"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_AUTOCRACY"].ID)
		-- 巴西琉斯之道：贝利撒留甲骑兵
	elseif (projectTypeID == GameInfo.Projects["PROJECT_BUCELLARII_TRAINING"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_BASELIUS"].ID)
		-- 商业：瓦兰吉卫队
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_VARANGIAN_TRAINING"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_VARANGIAN"].ID)
		-- 商业：朱斯蒂尼亚尼弩手
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_GENOAXBOW_TRAINING"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_GENOAXBOW"].ID)
		-- 商业：教皇近卫军
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_SWISSGUARD_TRAINING"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_SWISSGUARD"].ID)
		-- 商业：王家敕令骑士
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_ELMETI_TRAINING"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_ELMETI"].ID)
		-- 商业：巨人掷弹兵团
	elseif (projectTypeID == GameInfo.Projects["PROJECT_SPUE_HESSIAN_TRAINING"].ID) then
		return player:HasPolicy(GameInfo.Policies["POLICY_SPUE_HESSIAN"].ID)
	end

	return true
end

GameEvents.CityCanCreate.Add(SPUE_IdeoProjectOnly)
---============================================================
-- 政策单位特殊效果
---============================================================
--------------------------------------------------------------
-- 空天航母晋升传递
--------------------------------------------------------------
function CarrierPromotionTransfer(player, unit)
	local plot = unit:GetPlot();
	if plot and unit:IsHasPromotion(AirCraftCarrierID) and unit:HasCargo() then
		print("Found the carrier!")
		local unitCount = plot:GetNumUnits()

		for i = 0, unitCount - 1, 1 do
			local pCargoUnit = plot:GetUnit(i);
			if pCargoUnit:IsCargo() and pCargoUnit:GetTransportUnit() == unit then
				print("Found the aircraft on the carrier!")
				pCargoUnit:SetHasPromotion(unitPromotionHeliFighterID, unit:IsHasPromotion(unitPromotionHeliCarrierID));
			end
		end
	end
end

function NewUnitCreationRules() ------------------------Human Player's units rule & AI units assistance--
	for playerID, player in pairs(Players) do
		if player and player:IsAlive() and not player:IsMinorCiv() and player:GetNumUnits() > 0 then --  and not player:IsBarbarian() then
			for unit in player:Units() do
				if unit:IsHasPromotion(unitPromotionHeliCarrierID) then
					CarrierPromotionTransfer(player, unit)
				end
			end
		end
	end
end ------function end

Events.ActivePlayerTurnStart.Add(NewUnitCreationRules)
--------------------------------------------------------------
-- 鹰击21装载
--------------------------------------------------------------
function SPUE_YJ21Setup_UnitPromoted(playerID, unitID)
	-- 单位晋升
	local player = Players[playerID];
	if player == nil then return end
	;

	local unit = player:GetUnitByID(unitID);

	if unit:IsHasPromotion(unitPromotion055ID) then
		if unit:IsHasPromotion(unitPromotion055Missile3ID) then
			if player:IsHuman() then
				local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S_FULL");
				Events.GameplayAlertMessage(text1s);
			end
		elseif unit:IsHasPromotion(unitPromotion055Missile2ID) then
			unit:SetHasPromotion(unitPromotion055Missile2ID, false);
			unit:SetHasPromotion(unitPromotion055Missile3ID, true);
			if player:IsHuman() then
				local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S");
				Events.GameplayAlertMessage(text1s);
			end
		elseif unit:IsHasPromotion(unitPromotion055Missile1ID) then
			unit:SetHasPromotion(unitPromotion055Missile1ID, false);
			unit:SetHasPromotion(unitPromotion055Missile2ID, true);
			if player:IsHuman() then
				local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S");
				Events.GameplayAlertMessage(text1s);
			end
		else
			unit:SetHasPromotion(unitPromotion055Missile1ID, true);
			if player:IsHuman() then
				local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S");
				Events.GameplayAlertMessage(text1s);
			end
		end
	end
end

GameEvents.UnitPromoted.Add(SPUE_YJ21Setup_UnitPromoted)
function SPUE_YJ21Setup_AdoptPolicy(playerID, policyID)
	-- 选取秩序意识形态政策
	local player = Players[playerID]
	if player == nil then return end
	if policyID == nil then return end
	local policy = GameInfo.Policies[policyID]

	if policy.PolicyBranchType == GameInfo.PolicyBranchTypes["POLICY_BRANCH_ORDER"].Type then
		for unit in player:Units() do
			if unit:IsHasPromotion(unitPromotion055ID) then
				if unit:IsHasPromotion(unitPromotion055Missile3ID) then
					if player:IsHuman() then
						local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S_FULL");
						Events.GameplayAlertMessage(text1s);
					end
				elseif unit:IsHasPromotion(unitPromotion055Missile2ID) then
					unit:SetHasPromotion(unitPromotion055Missile2ID, false);
					unit:SetHasPromotion(unitPromotion055Missile3ID, true);
					if player:IsHuman() then
						local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S");
						Events.GameplayAlertMessage(text1s);
					end
				elseif unit:IsHasPromotion(unitPromotion055Missile1ID) then
					unit:SetHasPromotion(unitPromotion055Missile1ID, false);
					unit:SetHasPromotion(unitPromotion055Missile2ID, true);
					if player:IsHuman() then
						local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S");
						Events.GameplayAlertMessage(text1s);
					end
				else
					unit:SetHasPromotion(unitPromotion055Missile1ID, true);
					if player:IsHuman() then
						local text1s = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1S");
						Events.GameplayAlertMessage(text1s);
					end
				end
			end
		end
	end
end

GameEvents.PlayerAdoptPolicy.Add(SPUE_YJ21Setup_AdoptPolicy)
--------------------------------------------------------------
-- 单位出生效果
--------------------------------------------------------------
function SPUE_OnUnitCreated(iPlayerID, iUnitID)
	if Players[iPlayerID] == nil or not Players[iPlayerID]:IsAlive()
		or Players[iPlayerID]:GetUnitByID(iUnitID) == nil
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDead()
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDelayedDeath()
	then
		return;
	end
	local pUnit = Players[iPlayerID]:GetUnitByID(iUnitID);
	local pPlayer = Players[pUnit:GetOwner()];

	-- 055：装载鹰击21导弹
	if pUnit:IsHasPromotion(unitPromotion055ID) then
		-- 统计秩序政策数
		local OrderPolicyCount = 0;

		for policy in GameInfo.Policies() do
			if policy.PolicyBranchType == GameInfo.PolicyBranchTypes["POLICY_BRANCH_ORDER"].Type
				and pPlayer:HasPolicy(policy.ID)
			then
				OrderPolicyCount = OrderPolicyCount + 1;
			end
		end

		if OrderPolicyCount > 0 then
			-- 055：装载鹰击21导弹
			local numMissile = math.min(3, OrderPolicyCount);
			pUnit:SetHasPromotion(g_055Missiles[numMissile], true)
		end
	end

	-- 巴西琉斯之道：根据城邦盟友首都人口总数获得经验&盟友城邦提供防御加成
	if pUnit:IsHasPromotion(unitPromotionBaseliusID) then
		local g_MinorCivsAndPopWithMajor = SPUE_MajorFavorite_MinorCivsAndCityPops(iPlayerID);
		for i = 1, #g_BaseliusDefense, 1 do
			if pUnit:IsHasPromotion(g_BaseliusDefense[i]) then
				pUnit:SetHasPromotion(g_BaseliusDefense[i], false);
			end
		end

		if g_MinorCivsAndPopWithMajor then
			local pops = 0;
			local numAllies = math.min(#g_BaseliusDefense, #g_MinorCivsAndPopWithMajor);

			for i = 1, #g_MinorCivsAndPopWithMajor, 1 do
				pops = pops + g_MinorCivsAndPopWithMajor[i][2];
			end
			pUnit:ChangeExperience(pops * 2);
			pUnit:SetHasPromotion(g_BaseliusDefense[numAllies], true);
		end
	end

	-- 南洋海盗船送铁人军
	if pUnit:GetUnitType() == GameInfoTypes["UNIT_SPUE_SSPRIVATEER"] then
		local unitType = GameInfoTypes["UNIT_SPUE_IRON_TROOP"]
		local unitX = pUnit:GetX()
		local unitY = pUnit:GetY()
		local pPlayer = Players[pUnit:GetOwner()]
		-- local numUnit = CountUnitsWithUniquePromotions(pUnit:GetOwner(), IronTroopID)
		local numUnit = pPlayer:GetUnitCountFromHasPromotion(IronTroopID);
		if numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_IRON_TROOP"].MaxPlayerInstances then
			local NewUnit = pPlayer:InitUnit(unitType, unitX, unitY, UNITAI_ATTACK)
			NewUnit:JumpToNearestValidPlot()
			if pPlayer:GetNumCities() > 0 then
				local city = GetCloseCity(pUnit:GetOwner(), pUnit:GetPlot());
				local domainLandID = GameInfo.Domains["DOMAIN_LAND"].ID;
				local LandTotal = city:GetFreeExperience() + city:GetDomainFreeExperience(domainLandID);
				NewUnit:ChangeExperience(LandTotal);
			end
		end
	end
end

GameEvents.UnitCreated.Add(SPUE_OnUnitCreated)
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

	-- 超级要塞特殊效果初始化
	GAIAShipHasAttackedThisTurn = 0
end --function END

GameEvents.PlayerDoTurn.Add(SPUE_OnPlayerDoTurn)

function SPUE_OnPlayerUnitDoTurn(playerID, unitID, iPlotX, iPlotY)
	if Players[playerID] == nil or not Players[playerID]:IsAlive()
		or Players[playerID]:GetUnitByID(unitID) == nil
		or Players[playerID]:GetUnitByID(unitID):IsDead()
		or Players[playerID]:GetUnitByID(unitID):IsDelayedDeath()
	then
		return;
	end

	local player = Players[playerID];
	local unit = Players[playerID]:GetUnitByID(unitID);
	local pEraType = player:GetCurrentEra();
	local pEraID = GameInfo.Eras[pEraType].ID;



	-- 瓦兰吉卫队
	if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_VARANGIAN_GUARD"]) then
		local iunit = GameInfo.Units[unit:GetUnitType()]
		local plot = unit:GetPlot()
		local icombat = math.ceil(0.2 * iunit.Combat);

		local bonus = 0;
		local unitCount = plot:GetNumUnits();
		local uniqueRange = 4;
		if unitCount >= 1 then
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = plot:GetUnit(i)
				if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
					local pPlayer = Players[pFoundUnit:GetOwner()];
					if pPlayer == player and (pFoundUnit:IsHasPromotion(KnightID) or pFoundUnit:IsHasPromotion(TankID)) then
						bonus = bonus + 1
					end
				end
			end
		end
		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
				if (adjPlot ~= nil) then
					local unitCount = adjPlot:GetNumUnits();
					if unitCount >= 1 then
						for i = 0, unitCount - 1, 1 do
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
			end
		end
		-- unit:SetBaseCombatStrength(100 * bonus * icombat / iunit.Combat)
		SPUEAddCombatBonus(unit, math.ceil(100 * bonus * icombat / iunit.Combat))
		unit:SetMoves(unit:GetMoves() + 2 * bonus * GameDefines["MOVE_DENOMINATOR"]);
		local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
		Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", bonus * 2));
	end

	-- 宣慰使军
	if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_SHENJI_MUSKETEER3"]) and unit:IsGarrisoned() then
		local plot = unit:GetPlot()
		unit:ChangeMoves(60);
		local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
		Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", 1));
		Events.GameplayFX(hex.x, hex.y, -1);
	end

	--SU47
	if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_ORDER_SU47"]) then
		-- 统计秩序政策数
		local OrderPolicyCount = 0

		for policy in GameInfo.Policies() do
			if policy.PolicyBranchType == GameInfo.PolicyBranchTypes["POLICY_BRANCH_ORDER"].Type
				and player:HasPolicy(policy.ID)
			then
				OrderPolicyCount = OrderPolicyCount + 1
			end
		end
		local plot = unit:GetPlot();
		if plot:GetPlotCity() then
			local city = plot:GetPlotCity();
			local specialistScientistID = GameInfoTypes["SPECIALIST_SCIENTIST"];
			local cityScientistProgress = city:GetSpecialistGreatPersonProgressTimes100();
			local unitLevel = unit:GetLevel();
			local iExpBonus = OrderPolicyCount * 2;
			-- 为城市提供大科点数
			city:ChangeSpecialistGreatPersonProgressTimes100(specialistScientistID,
				(unitLevel / 100) * cityScientistProgress);
			if player:IsHuman() then
				local plotX = unit:GetX();
				local plotY = unit:GetY();
				Events.AddPopupTextEvent(HexToWorld(ToHexFromGrid(Vector2(plotX, plotY))),
					Locale.ConvertTextKey("[ICON_GREAT_SCIENTIST][ICON_GREAT_SCIENTIST][ICON_GREAT_SCIENTIST]"), true);
			end

			-- 为自身外的空军单位提供经验
			for sunit in player:Units() do
				if not sunit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_ORDER_SU47"]) and sunit:IsHasPromotion(IntercepterAircraftUnitID) then
					sunit:ChangeExperience(iExpBonus)
				end
			end
		end
	end

	-- 贝利撒留甲骑兵：根据两格内敌方单位数量增加移动力
	if unit:IsHasPromotion(unitPromotionBucellariEliteID) then
		local iunit = GameInfo.Units[unit:GetUnitType()];
		local plot = unit:GetPlot();
		local imove_bonus = 0;
		local unitCount = plot:GetNumUnits();
		local uniqueRange = 2
		if unitCount >= 1 then
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = plot:GetUnit(i)
				if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
					local pPlayer = Players[pFoundUnit:GetOwner()];
					if PlayersAtWar(player, pPlayer) then
						imove_bonus = imove_bonus + 1;
					end
				end
			end
		end
		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
				if (adjPlot ~= nil) then
					unitCount = adjPlot:GetNumUnits();
					if unitCount >= 1 then
						for i = 0, unitCount - 1, 1 do
							local pFoundUnit = adjPlot:GetUnit(i)
							if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
								local pPlayer = Players[pFoundUnit:GetOwner()];
								if PlayersAtWar(player, pPlayer) then
									imove_bonus = imove_bonus + 1;
								end
							end
						end
					end
				end
			end
		end
		unit:SetMoves(unit:GetMoves() + imove_bonus * GameDefines["MOVE_DENOMINATOR"]);
		if player:IsHuman() then
			local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
			Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", imove_bonus));
			Events.GameplayFX(hex.x, hex.y, -1);
		end
	end

	-- 海洋之火：希腊火灼烧蔓延
	if (unit:IsHasPromotion(unitPromotionOceanFireE02ID)) then
		local uniqueRange = 1
		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(unit:GetX(), unit:GetY(), dx, dy, uniqueRange);
				if (adjPlot ~= nil and not adjPlot:IsCity()) then
					local unitCount = adjPlot:GetNumUnits();
					if unitCount > 0 then
						for i = 0, unitCount - 1, 1 do
							local pUnit = adjPlot:GetUnit(i) ------------Find Units affected
							if pUnit
								and pUnit:GetID() ~= unit:GetID()
								and (pUnit:GetDomainType() == unit:GetDomainType())
								and not pUnit:IsHasPromotion(unitPromotionOceanFireE02ID)
								and not pUnit:IsHasPromotion(unitPromotionOceanFireE01ID)
								and not pUnit:IsHasPromotion(AntiDebuffID)
							then
								local pPlayer = Players[pUnit:GetOwner()]

								if pPlayer == player then
									pUnit:SetHasPromotion(unitPromotionOceanFireE01ID, true);
									local hex = ToHexFromGrid(Vector2(pUnit:GetX(), pUnit:GetY()));
									Events.AddPopupTextEvent(HexToWorld(hex),
										Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_OCEAN_FIRE_01"));
								end
							end
						end
					end
				end
			end
		end
	end

	-- 奥古斯都之路：增长城邦影响力
	if unit:IsHasPromotion(unitPromotionAugustusID) then
		if SPUE_IsInCityStateBorders(unit) then
			local minorPlayerID = unit:GetPlot():GetOwner();
			local minorPlayer = Players[minorPlayerID];
			local numUnits = unit:GetPlot():GetNumUnits();
			local ConnecticutInfluence = 2 + pEraID * 1;
			for i = 0, numUnits - 1, 1 do
				local pFoundUnit = unit:GetPlot():GetUnit(i);
				if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
					local pPlayer = Players[pFoundUnit:GetOwner()];
					if pPlayer == player then
						if pFoundUnit:IsHasPromotion(unitPromotionAugustusID) then
							ConnecticutInfluence = ConnecticutInfluence + 2 + pEraID * 1;
						end
					end
				end
			end
			minorPlayer:ChangeMinorCivFriendshipWithMajor(playerID, ConnecticutInfluence);
			if player:IsHuman() then
				local hex = ToHexFromGrid(Vector2(unit:GetX(), unit:GetY()));
				Events.AddPopupTextEvent(HexToWorld(hex),
					Locale.ConvertTextKey("[ICON_WHITE]+{1_Num}[ENDCOLOR] [ICON_INFLUENCE]", ConnecticutInfluence), true);
			end
		end
	end

	-- 巴西琉斯之道：盟友城邦提供防御加成
	if unit:IsHasPromotion(unitPromotionBaseliusID) then
		for i = 1, #g_BaseliusDefense, 1 do
			if unit:IsHasPromotion(g_BaseliusDefense[i]) then
				unit:SetHasPromotion(g_BaseliusDefense[i], false);
			end
		end
		local g_MinorCivsAndPopWithMajor = SPUE_MajorFavorite_MinorCivsAndCityPops(playerID);
		if g_MinorCivsAndPopWithMajor then
			local numAllies = math.min(#g_BaseliusDefense, #g_MinorCivsAndPopWithMajor);
			unit:SetHasPromotion(g_BaseliusDefense[numAllies], true);
		end
	end

	--王家敕令骑士
	if unit and (unit:IsHasPromotion(unitPromotionElmetiEliteID)) then
		local unitMaxCombatStrength = 0;
		local unitBaseCombatStrength = unit:GetBaseCombatStrength();
		SPUEAddCombatBonus(unit, 0);
		if unit:IsHasPromotion(KnightID) then
			unitMaxCombatStrength = plotDistanceGetMaxCombatStrength(unit, KnightID, 2);
		elseif unit:IsHasPromotion(TankID) then
			unitMaxCombatStrength = plotDistanceGetMaxCombatStrength(unit, TankID, 2);
		end
		if unitMaxCombatStrength > unitBaseCombatStrength then
			unitMaxCombatStrength = unitMaxCombatStrength - unitBaseCombatStrength;
			SPUEAddCombatBonus(unit, math.ceil(100 * unitMaxCombatStrength / unitBaseCombatStrength));
		else
			SPUEAddCombatBonus(unit, 0);
		end
	end

	-- 铁骑：根据两格内敌方单位数量增加移动力
	if unit:IsHasPromotion(unitPromotionChineseICID) then
		local iunit = GameInfo.Units[unit:GetUnitType()];
		local plot = unit:GetPlot();
		local imove_bonus = 0;
		local unitCount = plot:GetNumUnits();
		local uniqueRange = 2
		if unitCount >= 1 then
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = plot:GetUnit(i)
				if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
					local pPlayer = Players[pFoundUnit:GetOwner()];
					if PlayersAtWar(player, pPlayer) then
						imove_bonus = imove_bonus + 1;
					end
				end
			end
		end

		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
				if (adjPlot ~= nil) then
					unitCount = adjPlot:GetNumUnits();
					if unitCount >= 1 then
						for i = 0, unitCount - 1, 1 do
							local pFoundUnit = adjPlot:GetUnit(i)
							if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
								local pPlayer = Players[pFoundUnit:GetOwner()];
								if PlayersAtWar(player, pPlayer) then
									imove_bonus = imove_bonus + 1;
								end
							end
						end
					end
				end
			end
		end
		unit:SetMoves(unit:GetMoves() + imove_bonus * GameDefines["MOVE_DENOMINATOR"]);


		local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
		Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", imove_bonus));
		-- Events.GameplayFX(hex.x, hex.y, -1);
	end

	-- 美国无畏舰：大白舰队增长城邦影响力
	if unit:IsHasPromotion(unitPromotionConnecticutID) then
		if SPUE_IsInCityStateBorders(unit) then
			local minorPlayerID = unit:GetPlot():GetOwner();
			local minorPlayer = Players[minorPlayerID];
			local ConnecticutInfluence = 25;
			minorPlayer:ChangeMinorCivFriendshipWithMajor(playerID, ConnecticutInfluence);
			if player:IsHuman() then
				local hex = ToHexFromGrid(Vector2(unit:GetX(), unit:GetY()));
				Events.AddPopupTextEvent(HexToWorld(hex),
					Locale.ConvertTextKey("[ICON_WHITE]+{1_Num}[ENDCOLOR] [ICON_INFLUENCE]", ConnecticutInfluence), true);
			end
		end
	end

	-- 谢苗诺夫斯基近卫步兵
	if unit:IsHasPromotion(unitPromotionSemyonovID) then
		if unit:GetFortifyTurns() > 0 then
			local isAdjLeibGuard = false
			local plot = unit:GetPlot()
			for i = 0, 5 do
				local adjPlot = Map.PlotDirection(plot:GetX(), plot:GetY(), i)
				local unitCount = adjPlot:GetNumUnits();
				if unitCount >= 1 then
					for i = 0, unitCount - 1, 1 do
						local pFoundUnit = adjPlot:GetUnit(i)
						if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
							local pPlayer = Players[pFoundUnit:GetOwner()];
							if pPlayer == player and (pFoundUnit:IsHasPromotion(unitPromotionSemyonovID)) then
								isAdjLeibGuard = true
								break;
							end
						end
					end
				end
			end

			if isAdjLeibGuard then
				unit:ChangeMoves(120)
			else
				unit:ChangeMoves(60)
			end
		end
	end
end

GameEvents.UnitDoTurn.Add(SPUE_OnPlayerUnitDoTurn)
function SPUE_PlayerDoneTurn(playerID)
	local player = Players[playerID]; -----获取player
	if player == nil then return end;
	if (not player:IsAlive()) then return end;
	if player:IsBarbarian() or player:IsMinorCiv() then return end;
	local pEraType = player:GetCurrentEra();
	local pEraID = GameInfo.Eras[pEraType].ID;

	for unit in player:Units() do
		-- 医院骑士团：两格内己方单位数量回复20血量
		if unit:IsHasPromotion(HospitallerKnightID) then
			local iunit = GameInfo.Units[unit:GetUnitType()];
			local plot = unit:GetPlot();
			local ihealth_bonus = 0;

			local unitCount = plot:GetNumUnits();
			local uniqueRange = 2;
			if unitCount >= 1 then
				for i = 0, unitCount - 1, 1 do
					local pFoundUnit = plot:GetUnit(i)
					if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
						local pPlayer = Players[pFoundUnit:GetOwner()];
						if pPlayer == player then
							pFoundUnit:ChangeDamage(-20);
						end
					end
				end
			end

			for dx = -uniqueRange, uniqueRange, 1 do
				for dy = -uniqueRange, uniqueRange, 1 do
					local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
					if (adjPlot ~= nil) then
						unitCount = adjPlot:GetNumUnits();
						if unitCount >= 1 then
							for i = 0, unitCount - 1, 1 do
								local pFoundUnit = adjPlot:GetUnit(i);
								if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
									local pPlayer = Players[pFoundUnit:GetOwner()];
									if pPlayer == player then
										pFoundUnit:ChangeDamage(-20);
									end
								end
							end
						end
					end
				end
			end
		end

		-- 涌泉守卫：根据两格内敌方单位数量增加战斗力
		if unit:IsHasPromotion(unitPromotionGondorID) then
			local iunit = GameInfo.Units[unit:GetUnitType()];
			local plot = unit:GetPlot();
			local icombat_bonus = 0;

			local unitCount = plot:GetNumUnits();
			local uniqueRange = 2
			if unitCount >= 1 then
				for i = 0, unitCount - 1, 1 do
					local pFoundUnit = plot:GetUnit(i)
					if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
						local pPlayer = Players[pFoundUnit:GetOwner()];
						if PlayersAtWar(player, pPlayer) then
							icombat_bonus = icombat_bonus + 1;
						end
					end
				end
			end

			for dx = -uniqueRange, uniqueRange, 1 do
				for dy = -uniqueRange, uniqueRange, 1 do
					local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
					if (adjPlot ~= nil) then
						unitCount = adjPlot:GetNumUnits();
						if unitCount >= 1 then
							for i = 0, unitCount - 1, 1 do
								local pFoundUnit = adjPlot:GetUnit(i)
								if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
									local pPlayer = Players[pFoundUnit:GetOwner()];
									if PlayersAtWar(player, pPlayer) then
										icombat_bonus = icombat_bonus + 1;
									end
								end
							end
						end
					end
				end
			end
			local iunit = GameInfo.Units[unit:GetUnitType()];
			local icombat = math.ceil(0.1 * iunit.Combat);
			-- unit:SetBaseCombatStrength(iunit.Combat + icombat * icombat_bonus);
			SPUEAddCombatBonus(unit, math.ceil(100 * icombat_bonus * icombat / iunit.Combat))
			local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
			Events.AddPopupTextEvent(HexToWorld(hex),
				Locale.ConvertTextKey("+{1_Num}[ICON_STRENGTH]", icombat * icombat_bonus));
			-- Events.GameplayFX(hex.x, hex.y, -1);
		end

		-- 罗马禁卫军：集权帝国：驻守首都
		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_PRAETORIAN"]) then
			local plot = unit:GetPlot();
			if plot:GetPlotCity()
				and plot:GetPlotCity():IsCapital()
			then
				local city = plot:GetPlotCity();
				local iCapitalBonus = 4 * pEraID;
				-- 首都
				city:SetOverflowProduction(city:GetOverflowProduction() + iCapitalBonus);
				city:ChangeFood(iCapitalBonus);
				player:ChangeJONSCulture(iCapitalBonus);
				unit:ChangeExperience(2);

				-- iCapitalBonus = 4 * (1 + pEraID);
				if iCapitalBonus > 0 then
					local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
					Events.AddPopupTextEvent(HexToWorld(hex),
						Locale.ConvertTextKey(
						"[COLOR_CITY_BROWN]+{1_Num}[ENDCOLOR][ICON_PRODUCTION][NEWLINE][COLOR_YIELD_FOOD]+{2_Num}[ENDCOLOR][ICON_FOOD][NEWLINE][COLOR_MAGENTA]+{3_Num}[ENDCOLOR][ICON_CULTURE]",
							iCapitalBonus, iCapitalBonus, iCapitalBonus));
					Events.GameplayFX(hex.x, hex.y, -1);
				end
			end
		end

		-- 海洋之火效果
		if unit:IsHasPromotion(unitPromotionOceanFireE02ID) then
			if unit:GetPlot():IsFriendlyTerritory(playerID) then
				unit:ChangeDamage(35);
			end

			unit:SetHasPromotion(unitPromotionOceanFireE02ID, false)
			unit:SetHasPromotion(unitPromotionOceanFireE01ID, true)
			-- local hex = ToHexFromGrid(Vector2(unit:GetX(), unit:GetY()));
			-- Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_OCEAN_FIRE_01"));
		elseif unit:IsHasPromotion(unitPromotionOceanFireE01ID) then
			if unit:GetPlot():IsFriendlyTerritory(playerID) then
				unit:ChangeDamage(25);
			end
			unit:SetHasPromotion(unitPromotionOceanFireE01ID, false)
		end

		-- 西班牙大帆船
		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_CORVETTE"]) then
			local plot = unit:GetPlot();
			local fromGPT = 0;
			local numPolices = player:GetNumPolicies();
			if plot and plot:GetImprovementType() == GameInfo.Improvements["IMPROVEMENT_FORT"].ID then
				local outgoingRoutes = {};
				local outgoingRoutes = player:GetTradeRoutes();
				for i, route in ipairs(outgoingRoutes) do
					fromGPT = route.FromCity;
				end
				fromGPT = fromGPT / 100
				player:ChangeGold(math.ceil(0.05 * fromGPT * numPolices));
				local hex = ToHexFromGrid(Vector2(plot:GetX(), plot:GetY()));
				Events.AddPopupTextEvent(HexToWorld(hex),
					Locale.ConvertTextKey("+{1_Num}[ICON_GOLD]", math.ceil(0.05 * fromGPT * numPolices)));
				Events.GameplayFX(hex.x, hex.y, -1);
			end
		end

		-- 长滩：回合结束回30血
		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_FREEDOM_LONG_BEACH"]) then
			unit:ChangeDamage(-30);
		end

		-- 超级要塞&炎黄坦克：回合结束回满血
		if unit:IsHasPromotion(unitPromotionGAIAID)
			or unit:IsHasPromotion(unitPromotionOvrlordID)
		then
			unit:ChangeDamage(-1060);
		end

		-- 炎黄坦克：冲锋号角回血
		if unit:IsHasPromotion(unitPromotionOvrlordEffectID)
		then
			unit:ChangeDamage(-0.5 * unit:GetMaxHitPoints());
		end

		-- 铁骑：根据两格内己方单位数量回复血量
		if unit:IsHasPromotion(unitPromotionChineseICID) then
			local iunit = GameInfo.Units[unit:GetUnitType()];
			local plot = unit:GetPlot();
			local ihealth_bonus = 0;

			local unitCount = plot:GetNumUnits();
			local uniqueRange = 2;
			if unitCount >= 1 then
				for i = 0, unitCount - 1, 1 do
					local pFoundUnit = plot:GetUnit(i)
					if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
						local pPlayer = Players[pFoundUnit:GetOwner()];
						if pPlayer == player then
							ihealth_bonus = ihealth_bonus + 1;
						end
					end
				end
			end

			for dx = -uniqueRange, uniqueRange, 1 do
				for dy = -uniqueRange, uniqueRange, 1 do
					local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
					if (adjPlot ~= nil) then
						unitCount = adjPlot:GetNumUnits();
						if unitCount >= 1 then
							for i = 0, unitCount - 1, 1 do
								local pFoundUnit = adjPlot:GetUnit(i);
								if pFoundUnit ~= nil and pFoundUnit:GetID() ~= unit:GetID() then
									local pPlayer = Players[pFoundUnit:GetOwner()];
									if pPlayer == player then
										ihealth_bonus = ihealth_bonus + 1;
									end
								end
							end
						end
					end
				end
			end

			unit:SetDamage(-5 * ihealth_bonus);
		end
	end
end

GameEvents.PlayerDoneTurn.Add(SPUE_PlayerDoneTurn);
--------------------------------------------------------------
-- AI单位过回合效果
--------------------------------------------------------------
function SPUE_OnAIUnitDoTurn(playerID, unitID, iPlotX, iPlotY)
	if Players[playerID] == nil or not Players[playerID]:IsAlive()
		or Players[playerID]:GetUnitByID(unitID) == nil
		or Players[playerID]:GetUnitByID(unitID):IsDead()
		or Players[playerID]:GetUnitByID(unitID):IsDelayedDeath()
	then
		return;
	end

	local player = Players[playerID];
	local unit = Players[playerID]:GetUnitByID(unitID);
	local iTeamID = player:GetTeam();
	local pTeam = Teams[iTeamID];
	if player == nil then return end
	;

	-- AI使用技能系列
	if not player:IsHuman() then
		local plot = unit:GetPlot()
		-- 采邑骑士
		local SPUE_Knight_New_Flag = load(player, "Knight Rally", SPUE_Knight_New_Flag) or 0
		local knightFlag = 0
		-- 福船标识
		local fuchuanFlag = SPUE_GetRandom(1, 2)
		-- 宝船旗舰标识
		local treasureFleetFlag = SPUE_GetRandom(1, 2)
		--*****************************AI召唤采邑骑士*****************************--
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW"].ID)
			and SPUE_Knight_New_Flag == 0
		then
			knightFlag = TroopsLeftFlag(player, math.min(5, player:GetNumCities() - 1));
			if knightFlag == 1 then
				local plot = unit:GetPlot()
				local unitX = unit:GetX()
				local unitY = unit:GetY()
				local unitAIType = unit:GetUnitAIType()
				local numKnights = 0

				for city in player:Cities() do
					if not city:IsCapital() then
						-- 从非首都城市召唤采邑骑士
						local cityname = city:GetName()
						local NewUnit = player:InitUnit(GameInfoTypes["UNIT_SPUE_KNIGHT_NEW1"], unitX, unitY, unitAIType)
						NewUnit:SetName("[COLOR_CYAN]" ..
						cityname .. Locale.ConvertTextKey("TXT_KEY_UNIT_SPUE_KNIGHT_NEW1_NAME") .. "[ENDCOLOR]")
						numKnights = numKnights + 1;
						if plot:GetNumUnits() > 2 then
							NewUnit:JumpToNearestValidPlot()
						end
						if numKnights >= math.min(6, player:GetNumCities() - 1) then
							break;
						end
					end
				end
				unit:SetMoves(0)
				save(player, "Knight Rally", 1)
				SPUE_Knight_New_Flag = 1
			end
		end
		--*****************************AI福船制造单位*****************************--
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID)
			and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
		then
			if fuchuanFlag < 2 then
				-- 重步兵训练
				local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SWORDSMAN")
				local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
				while (sUpgradeUnitType ~= nil) do
					sUnitType = sUpgradeUnitType
					sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
				end
				local iUnit = GameInfoTypes[sUnitType]

				local fuchuanInfantryFlag = TroopsLeftFlag(player, 1);

				if fuchuanInfantryFlag == 1 then
					local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], unit:GetX(), unit:GetY(), UNITAI_DEFENSE)
					NewUnit:JumpToNearestValidPlot()
					NewUnit:SetExperience(unit:GetExperience())
					unit:SetMoves(0)
				end
			else
				-- 炮兵训练
				local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_CULVERIN")
				local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
				while (sUpgradeUnitType ~= nil) do
					sUnitType = sUpgradeUnitType
					sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
				end
				local iUnit = GameInfoTypes[sUnitType]

				local fuchuanCannonFlag = TroopsLeftFlag(player, 1);

				if fuchuanCannonFlag == 1 then
					local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], unit:GetX(), unit:GetY(), UNITAI_DEFENSE)
					NewUnit:JumpToNearestValidPlot()
					NewUnit:SetExperience(unit:GetExperience())
					unit:SetMoves(0)
				end
			end
		end
		--*****************************AI转化甲骑兵*****************************--
		EliteUnitTransferAI(unit, unitPromotionBucellariID, "UNIT_SPUE_BUCELLARII_GUARD",
			"UNIT_SPUE_BUCELLARII_GUARD_ELITE",
			"UNITCLASS_SPUE_BUCELLARII_GUARD", "PROJECT_BUCELLARII_TRAINING", unitPromotionBucellariEliteID);
		--*****************************AI转化瓦兰吉卫队*****************************--		
		EliteUnitTransferAI(unit, VARANGIANID, "UNIT_SPUE_VARANGIAN", "UNIT_SPUE_VARANGIAN_GUARD",
			"UNITCLASS_SPUE_VARANGIAN", "PROJECT_SPUE_VARANGIAN_TRAINING", VARANGIANGuardID);
		--*****************************AI转化教皇近卫军*****************************--
		EliteUnitTransferAI(unit, unitPromotionSwissID, "UNIT_SPUE_SWISSGUARD", "UNIT_SPUE_SWISSGUARD_ELITE",
			"UNITCLASS_SPUE_SWISSGUARD", "PROJECT_SPUE_SWISSGUARD_TRAINING", unitPromotionSwissEliteID);
		--*****************************AI转化朱斯蒂尼亚尼弩手*****************************--
		EliteUnitTransferAI(unit, unitPromotionGenoaID, "UNIT_SPUE_GENOAXBOW", "UNIT_SPUE_GENOAXBOW_ELITE",
			"UNITCLASS_SPUE_GENOAXBOW", "PROJECT_SPUE_GENOAXBOW_TRAINING", unitPromotionGenoaEliteID);
		--*****************************AI转化王家敕令骑士*****************************--
		EliteUnitTransferAI(unit, unitPromotionElmetiID, "UNIT_SPUE_ELMETI", "UNIT_SPUE_ELMETI_ELITE",
			"UNITCLASS_SPUE_ELMETI", "PROJECT_SPUE_ELMETI_TRAINING", unitPromotionElmetiEliteID);
		--*****************************AI转化巨人掷弹兵*****************************--
		EliteUnitTransferAI(unit, unitPromotionHessianID, "UNIT_SPUE_HESSIAN", "UNIT_SPUE_HESSIAN_ELITE",
			"UNITCLASS_SPUE_HESSIAN", "PROJECT_SPUE_HESSIAN_TRAINING", unitPromotionHessianEliteID);
		--*****************************AI宝船旗舰*****************************--
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_TREASURE_FLEET"].ID)
			and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
		then
			local numInfantry = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_SHENJI_MUSKETEER"]);
			local numCorvette = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_CORVETTE"]);
			if numInfantry < GameInfo.UnitClasses["UNITCLASS_SPUE_SHENJI_MUSKETEER"].MaxPlayerInstances
				and treasureFleetFlag < 2
			then
				local flag = TroopsLeftFlag(player, 1);
				if flag == 1 then
					local plotX = unit:GetX()
					local plotY = unit:GetY()
					local unitEXP = unit:GetExperience()

					local newUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_SHENJI_MUSKETEER");
					local NewUnit = player:InitUnit(GameInfoTypes[newUnitType], plotX, plotY, UNITAI_DEFENSE);
					NewUnit:JumpToNearestValidPlot();
					NewUnit:SetExperience(unitEXP);
					unit:SetMoves(0);

					if unit:GetOwner() == unit:GetPlot():GetOwner()
					then
						local Ccity = GetCloseCity(unit:GetOwner(), unit:GetPlot());
						if Ccity:IsCapital() or Ccity:IsOriginalMajorCapital() then
							NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER1"].ID, true);
						else
							NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID, true);
						end
					else
						NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER3"].ID, true);
					end
				end
			elseif numInfantry < GameInfo.UnitClasses["UNITCLASS_SPUE_CORVETTE"].MaxPlayerInstances
				and treasureFleetFlag > 1
			then
				local flag = 0
				local iCost = 700
				if iCost > 0 and player:GetGold() >= iCost then
					flag = TroopsLeftFlag(player, 1);
				end
				if flag == 1 then
					local plot = unit:GetPlot()
					local plotX = unit:GetX()
					local plotY = unit:GetY()
					local unitEXP = unit:GetExperience()
					local newUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_CORVETTE");
					local NewUnit = player:InitUnit(GameInfoTypes[newUnitType], plotX, plotY, UNITAI_DEFENSE)
					if plot:GetNumUnits() > 2 then
						NewUnit:JumpToNearestValidPlot();
					end
					NewUnit:SetExperience(unitEXP)
					unit:SetMoves(0)
					player:ChangeGold(-iCost)
				end
			end
		end
		--*****************************AI超级要塞转化为大头*****************************--
		-- 陆军单位过少时变为大头
		if unit:CanMove() and unit:IsHasPromotion(unitPromotionGAIA_ShipID)
		then
			-- 统计陆海军单位
			local numLandUnits = 0;
			local numSeaUnits = 0;

			for pUnit in player:Units() do
				if pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND then
					numLandUnits = numLandUnits + 1;
				elseif pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA then
					numSeaUnits = numSeaUnits + 1;
				end
			end
			if numLandUnits < numSeaUnits * 2 then
				local plot           = unit:GetPlot();
				local plotX          = plot:GetX();
				local plotY          = plot:GetY();
				local unitLevel      = unit:GetLevel();
				local unitEXP        = unit:GetExperience();
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
				newUnit = player:InitUnit(GameInfoTypes.UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD, plot:GetX(), plot:GetY());

				newUnit:SetMoves(0);
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
			end
		end
		-- 海军单位过少时变为超级要塞
		if unit:CanMove() and unit:IsHasPromotion(unitPromotionGAIA_HeadID) and not unit:GetPlot():IsWater()
		then
			-- 统计陆海军单位
			local numLandUnits = 0;
			local numSeaUnits = 0;

			for pUnit in player:Units() do
				if pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND then
					numLandUnits = numLandUnits + 1;
				elseif pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA then
					numSeaUnits = numSeaUnits + 1;
				end
			end

			if numLandUnits >= numSeaUnits * 2 then
				local plot           = unit:GetPlot();
				local plotX          = plot:GetX();
				local plotY          = plot:GetY();

				local unitLevel      = unit:GetLevel();
				local unitEXP        = unit:GetExperience();

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
				newUnit = player:InitUnit(GameInfoTypes.UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP, plot:GetX(), plot:GetY());

				newUnit:SetMoves(0);
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
			end
		end
	end
end --function END

GameEvents.UnitDoTurn.Add(SPUE_OnAIUnitDoTurn)
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
	local pEraType   = player:GetCurrentEra();
	local pEraID     = GameInfo.Eras[pEraType].ID;

	local pCapital   = player:GetCapitalCity();

	local bWeiYang   = GameInfoTypes["BUILDING_SPUE_WEIYANG"];
	local bGenoaXBow = GameInfoTypes["BUILDING_SPUE_GENOAXBOW"];

	if plot then
		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_PRAETORIAN"]) then
			-- 罗马禁卫军：集权帝国：驻守首都
			player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID, false)
			if plot:GetPlotCity()
				and plot:GetPlotCity():IsCapital()
			then
				-- 首都
				player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID, true, true)
			elseif
				not (plot:GetPlotCity() and plot:GetPlotCity():IsCapital())
				and player:HasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID)
			then
				-- 其他地块和城市
				player:SetHasPolicy(GameInfo.Policies["POLICY_SPUE_PRAETORIAN"].ID, false)
			end
		end

		if unit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_WEIYANG"]) then
			-- 未央宫卫士：驻守首都全局不满-5%
			local pCapPlot = pCapital:Plot()
			if plot:GetPlotCity() and plot:GetPlotCity():IsCapital()
			then
				local num_wy_units = 0
				for i = 0, pCapPlot:GetNumUnits() - 1, 1 do
					local fUnit = pCapPlot:GetUnit(i)
					if fUnit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_WEIYANG"]) then
						num_wy_units = num_wy_units + 1
					end
				end
				pCapital:SetNumRealBuilding(bWeiYang, num_wy_units)
			else
				local num_wy_units = 0
				for i = 0, pCapPlot:GetNumUnits() - 1, 1 do
					local fUnit = pCapPlot:GetUnit(i)
					if fUnit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_WEIYANG"]) then
						num_wy_units = num_wy_units + 1
					end
				end
				pCapital:SetNumRealBuilding(bWeiYang, num_wy_units)
			end
		end

		if unit and (unit:IsHasPromotion(VARANGIANID)) then
			-- 瓦兰吉佣兵：海岸加成
			unit:SetHasPromotion(VARANGIANBonusID, false)
			if plot:IsCoastalLand() then
				unit:SetHasPromotion(VARANGIANBonusID, true)
			end
		end

		if unit and (unit:IsHasPromotion(unitPromotionAugustusID)) then
			-- 奥古斯都之路:城邦战力加成
			unit:SetHasPromotion(unitPromotionAugustusCombatID, false)
			if SPUE_IsInCityStateBorders(unit) then
				unit:SetHasPromotion(unitPromotionAugustusCombatID, true)
			end
		end

		-- 朱斯蒂尼亚尼弩手
		if unit and (unit:IsHasPromotion(unitPromotionGenoaEliteID)) then
			unit:SetHasPromotion(unitPromotionGenoaEffectID, false)
			if (plot:GetPlotCity()) then
				local pCity = player:GetCityByID(plot:GetPlotCity());
				pCity:SetNumRealBuilding(bGenoaXBow, math.max(0, pEraID - 1));
				local num_wy_units = 0
			else
				if player:CountNumBuildings(bGenoaXBow) > 0 then
					for city in player:Cities() do
						city:SetNumRealBuilding(bGenoaXBow, 0);
					end
				end
			end

			local cCity = GetCloseCity(unit:GetOwner(), unit:GetPlot());
			if cCity and Map.PlotDistance(unit:GetX(), unit:GetY(), cCity:GetX(), cCity:GetY()) <= 3 then
				unit:SetHasPromotion(unitPromotionGenoaEffectID, true);
			end
		end

		-- 王家敕令骑士
		if unit and (unit:IsHasPromotion(unitPromotionElmetiEliteID)) then
			local unitMaxCombatStrength = 0;
			local unitBaseCombatStrength = unit:GetBaseCombatStrength();
			SPUEAddCombatBonus(unit, 0);

			if unit:IsHasPromotion(KnightID) then
				unitMaxCombatStrength = plotDistanceGetMaxCombatStrength(unit, KnightID, 2);
			elseif unit:IsHasPromotion(TankID) then
				unitMaxCombatStrength = plotDistanceGetMaxCombatStrength(unit, TankID, 2);
			end

			if unitMaxCombatStrength > unitBaseCombatStrength then
				SPUEAddCombatBonus(unit, math.ceil(100 * unitMaxCombatStrength / unitBaseCombatStrength));
			else
				SPUEAddCombatBonus(unit, 0);
			end
		end
	end
end

GameEvents.UnitSetXY.Add(SPUE_UnitSetXY)
GameEvents.UnitCreated.Add(SPUE_UnitSetXY)
--==========================================================================================================================
-- CanHavePromotion EVENTS
--==========================================================================================================================
function SPUE_CanHavePromotion(iPlayer, iUnit, iPromotionType)
	local player = Players[iPlayer]; -----获取player
	if player == nil then return end
	;
	if (not player:IsAlive()) then return end
	;
	if player:IsBarbarian() or player:IsMinorCiv() then return end
	;

	local pUnit = Players[iPlayer]:GetUnitByID(iUnit);

	-- 王城骑士：王国冠军
	if iPromotionType == GameInfoTypes.PROMOTION_SPUE_KNIGHT_NEW_C then
		if pUnit:GetExperience() < 300 then
			return false;
		end
	end


	return true;
end

GameEvents.CanHavePromotion.Add(SPUE_CanHavePromotion)
--==========================================================================================================================
-- PROMOTED EVENTS
--==========================================================================================================================
function SPUE_UnitPromoted(playerID, unitID, promotionID)
	local player = Players[playerID];
	local unit = player:GetUnitByID(unitID);
	local capital = player:GetCapitalCity();
	if (not capital) then return end
	;

	--王城骑士晋升时获得大文学家
	if unit:IsHasPromotion(KingsKnightBID) then
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_WRITER")
		local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], capital:GetX(), capital:GetY(), UNITAI_WRITER)
	end
end

GameEvents.UnitPromoted.Add(SPUE_UnitPromoted)
--------------------------------------------------------------
-- 单位光环晋升
-- 十字战车：十字架反对弓月&热气球：高级热气球&医院骑士团
-- 鹰击055：北斗摇光
--------------------------------------------------------------
function SPUE_Unit_Effect_UnitSetXY(playerID)
	local pPlayer                = Players[playerID]

	local GreatCrossCheck        = CheckUniquePromotions(pPlayer, pGreatCrossID);
	local HotAirBalloonCheck     = CheckUniquePromotions(pPlayer, pHotAirBalloonID);
	local HospitallerKnightCheck = CheckUniquePromotions(pPlayer, HospitallerKnightID);
	local S055Check              = CheckUniquePromotions(pPlayer, unitPromotion055ID);
	local PanzerCheck            = CheckUniquePromotions(pPlayer, unitPromotionPanzerID);
	local OvrlordCheck           = CheckUniquePromotions(pPlayer, unitPromotionOvrlordID);

	-- 十字战车：东征十字军
	if GreatCrossCheck == 1 then
		for pUnit in pPlayer:Units() do
			-- local Patronage = 0;
			local pFlag = false;
			if (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND)
				and pUnit:IsCombatUnit() and not pUnit:IsEmbarked()
				and not pUnit:IsHasPromotion(pGreatCrossID)
			then
				pFlag = true
			end
			plotDistancePromotion(pPlayer, pUnit, pGreatCrossID, pGreatCrossEffectID, 2, pFlag)
		end
	end

	-- 热气球：气球上的五星期
	if HotAirBalloonCheck == 1 then
		for pUnit in pPlayer:Units() do
			local Patronage = 0;
			local numHotAirBalloon = 0;
			-- print("HotAirBalloonCheck1.1")
			if (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA)
				and pUnit:IsCombatUnit()
				and not pUnit:IsEmbarked()
				and not pUnit:IsHasPromotion(pHotAirBalloonID)
			then
				--print("HotAirBalloonCheck2")
				for sUnit in pPlayer:Units() do
					if sUnit:IsHasPromotion(pHotAirBalloonID) then
						if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), sUnit:GetX(), sUnit:GetY()) < 2 then -- 人类同格
							--print("HotAirBalloonCheck3")
							numHotAirBalloon = numHotAirBalloon + 1;
							Patronage = 1;
						end
					end
				end
				if Patronage == 1 then
					pUnit:SetHasPromotion(pHotAirBalloonEffectID, false)
					pUnit:SetHasPromotion(pHotAirBalloonEffectLv1ID, false)
					pUnit:SetHasPromotion(pHotAirBalloonEffectLv2ID, false)

					if numHotAirBalloon <= 1 then
						pUnit:SetHasPromotion(pHotAirBalloonEffectID, true)
					elseif numHotAirBalloon == 2 then
						pUnit:SetHasPromotion(pHotAirBalloonEffectLv1ID, true)
					else
						pUnit:SetHasPromotion(pHotAirBalloonEffectLv2ID, true)
					end
				else
					if (pUnit:IsHasPromotion(pHotAirBalloonEffectID)
							or pUnit:IsHasPromotion(pHotAirBalloonEffectLv1ID)
							or pUnit:IsHasPromotion(pHotAirBalloonEffectLv2ID))
						and not pUnit:IsHasPromotion(pHotAirBalloonID) then
						pUnit:SetHasPromotion(pHotAirBalloonEffectID, false)
						pUnit:SetHasPromotion(pHotAirBalloonEffectLv1ID, false)
						pUnit:SetHasPromotion(pHotAirBalloonEffectLv2ID, false)
					end
				end
			else
				if (pUnit:IsHasPromotion(pHotAirBalloonEffectID)
						or pUnit:IsHasPromotion(pHotAirBalloonEffectLv1ID)
						or pUnit:IsHasPromotion(pHotAirBalloonEffectLv2ID))
					and not pUnit:IsHasPromotion(pHotAirBalloonID) then
					pUnit:SetHasPromotion(pHotAirBalloonEffectID, false)
					pUnit:SetHasPromotion(pHotAirBalloonEffectLv1ID, false)
					pUnit:SetHasPromotion(pHotAirBalloonEffectLv2ID, false)
				end
			end
		end
	end

	-- 医院骑士团
	if GreatCrossCheck == 1 then
		for pUnit in pPlayer:Units() do
			local pFlag = false;
			if (pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) and pUnit:IsCombatUnit() and not pUnit:IsHasPromotion(HospitallerKnightID) then
				pFlag = true
			end
			plotDistancePromotion(pPlayer, pUnit, HospitallerKnightID, HospitallerEffectID, 2, pFlag)
		end
	end

	-- 鹰击055：巡天四面阵
	if S055Check == 1 then
		for pUnit in pPlayer:Units() do
			local pFlag = false;
			if (pUnit:IsHasPromotion(CarrierFighterID) or pUnit:IsHasPromotion(IntercepterAircraftUnitID))
			then
				pFlag = true
			end
			plotDistancePromotion(pPlayer, pUnit, unitPromotion055ID, unitPromotion055EffectID, 2, pFlag)
		end
	end

	-- 装甲掷弹兵
	if PanzerCheck == 1 then
		for pUnit in pPlayer:Units() do
			local pFlag = false;
			if (pUnit:IsHasPromotion(TankID))
			then
				pFlag = true
			end
			plotDistancePromotion(pPlayer, pUnit, unitPromotionPanzerID, unitPromotionPanzerEffectID, 2, pFlag)
		end
	end

	-- 炎黄坦克：冲锋号角
	if OvrlordCheck == 1 then
		for pUnit in pPlayer:Units() do
			-- local Patronage = 0;
			local pFlag = false;
			if pUnit:IsCombatUnit()
				and not pUnit:IsHasPromotion(unitPromotionOvrlordID)
			then
				pFlag = true
			end
			plotDistancePromotion(pPlayer, pUnit, unitPromotionOvrlordID, unitPromotionOvrlordEffectID, 4, pFlag)
		end
	end
end

GameEvents.UnitSetXY.Add(SPUE_Unit_Effect_UnitSetXY)
GameEvents.UnitCreated.Add(SPUE_Unit_Effect_UnitSetXY)
--------------------------------------------------------------
-- 王都骑士团：兵士集结
--------------------------------------------------------------
--include('UtilityFunctions.lua')
SPUE_Knight_New_Button = {
	Name = "Knight Rally",
	Title = "TXT_KEY_PROMOTION_SPUE_KNIGHT_NEW",      -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "tempVPPI_Atlas",                     -- 45 and 64 variations required
	PortraitIndex = 3,
	ToolTip = "TXT_KEY_PROMOTION_SPUE_KNIGHT_NEW_HELP", -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local player = Players[unit:GetOwner()]
		local SPUE_Knight_New_Flag = load(player, "Knight Rally", SPUE_Knight_New_Flag) or 0
		local flag = 0
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW"].ID) and SPUE_Knight_New_Flag == 0
		then
			flag = TroopsLeftFlag(player, math.min(6, player:GetNumCities() - 1));
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local player = Players[unit:GetOwner()];
		return player:GetNumCities() < 2;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()];
		local unitX = unit:GetX()
		local unitY = unit:GetY()
		local unitAIType = unit:GetUnitAIType()
		local numKnights = 0;

		for city in player:Cities() do
			if not city:IsCapital() then
				-- 从非首都城市召唤采邑骑士
				local cityname = city:GetName()
				local NewUnit = player:InitUnit(GameInfoTypes["UNIT_SPUE_KNIGHT_NEW1"], unitX, unitY, unitAIType)
				NewUnit:SetName("[COLOR_CYAN]" ..
				cityname .. Locale.ConvertTextKey("TXT_KEY_UNIT_SPUE_KNIGHT_NEW1_NAME") .. "[ENDCOLOR]")
				numKnights = numKnights + 1;
				if plot:GetNumUnits() > 2 then
					NewUnit:JumpToNearestValidPlot()
				end
				if numKnights >= math.min(6, player:GetNumCities() - 1) then
					break;
				end
			end
		end

		unit:SetMoves(0)

		save(player, "Knight Rally", 1)
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Knight_New_Button)
--------------------------------------------------------------
-- 羽林禁军：羽林孤儿
--------------------------------------------------------------
function OnSPUESetDamageSP(iPlayerID, iUnitID, iDamage, iPreviousDamage)
	if Players[iPlayerID] == nil or not Players[iPlayerID]:IsAlive()
		or Players[iPlayerID]:GetUnitByID(iUnitID) == nil
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDead()
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDelayedDeath()
	then
		return;
	end
	local pUnit = Players[iPlayerID]:GetUnitByID(iUnitID);
	local pPlayer = Players[iPlayerID]
	-- local YuLin_Num = CountUnitsWithUniquePromotions(iPlayerID,
	-- 	GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID)
	local YuLin_Num = pPlayer:GetUnitCountFromHasPromotion(
		GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID);


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

Events.SerialEventUnitSetDamage.Add(OnSPUESetDamageSP);
--------------------------------------------------------------
-- 洛汗骠骑：白城烽火
--------------------------------------------------------------
SPUE_Rohan_Cavalry_Button = {
	Name = "Rohant Cavalry",
	Title = "TXT_KEY_SPUE_ROHAN_CAVALRY_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                             -- default is 200
	IconAtlas = "promoVP_atlas_02",                  -- 45 and 64 variations required
	PortraitIndex = 22,
	ToolTip = "TXT_KEY_SPUE_ROHAN_CAVALRY_BUTTON",   -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local player = Players[unit:GetOwner()]
		local flag = 0

		if unit:CanMove()
			-- and CountUnitsWithUniquePromotions(unit:GetOwner(), GameInfo.UnitPromotions["PROMOTION_SPUE_ROHAN_CAVALRY"].ID) > 0
			and player:GetUnitCountFromHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ROHAN_CAVALRY"].ID) > 0
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
				iunit:SetXY(unitX, unitY)
				iunit:SetMoves(iunit:MovesLeft() + GameDefines["MOVE_DENOMINATOR"])
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
	OrderPriority = 200,                                         -- default is 200
	IconAtlas = "SPUE_UNITS_ATLAS",                              -- 45 and 64 variations required
	PortraitIndex = 29,
	ToolTip = "TXT_KEY_PROMOTION_SPUE_HOT_AIR_BALLOON_BUTTON",   -- or a TXT_KEY_ or a function



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
		NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_NO_CASUALTIES"].ID, true)
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
function TempHotAirBalloon(playerID)
	local player = Players[playerID]

	if player == nil then
		return
	end

	local HotAirBallooCheck = CheckUniquePromotions(player, pHotAirBalloonID);

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

GameEvents.PlayerDoTurn.Add(TempHotAirBalloon)
--------------------------------------------------------------
-- 福船：军事训练
--------------------------------------------------------------
-- 重步兵训练
SPUE_FuChuan_LandInfantry_Button = {
	Name = "FuChuan Land Infantry",
	Title = "TXT_KEY_SPUE_FUCHUAN_INFANTRY_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                               -- default is 200
	IconAtlas = "SP_PROMOTION_ATLAS",                  -- 45 and 64 variations required
	PortraitIndex = 40,
	ToolTip = "TXT_KEY_SPUE_FUCHUAN_INFANTRY_BUTTON",  -- or a TXT_KEY_ or a function



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
		-- local iCost = -1
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID)
			and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SWORDSMAN")
			local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)

			while (sUpgradeUnitType ~= nil) do
				sUnitType = sUpgradeUnitType
				sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
			end
			local iUnit = GameInfoTypes[sUnitType]
			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

			if goldCost then iCost = goldCost * 0.33 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		return plotFlag;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()

		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SWORDSMAN")
		local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)

		while (sUpgradeUnitType ~= nil) do
			sUnitType = sUpgradeUnitType
			sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
		end

		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		if pPlot == nil then return end
		;

		local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], pPlot:GetX(), pPlot:GetY(), UNITAI_DEFENSE)
		-- NewUnit:JumpToNearestValidPlot()
		NewUnit:SetExperience(unitEXP)
		unit:SetMoves(0)

		local iUnit = GameInfoTypes[sUnitType]

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

		if goldCost then iCost = goldCost * 0.33 end
		;
		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_FuChuan_LandInfantry_Button)
-- 炮兵训练
SPUE_FuChuan_Cannon_Button = {
	Name = "FuChuan Cannons",
	Title = "TXT_KEY_SPUE_FUCHUAN_CANNON_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                             -- default is 200
	IconAtlas = "SP_PROMOTION_ATLAS",                -- 45 and 64 variations required
	PortraitIndex = 45,
	ToolTip = "TXT_KEY_SPUE_FUCHUAN_CANNON_BUTTON",  -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		local flag = 0

		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID)
			and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_CULVERIN")
			local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)

			while (sUpgradeUnitType ~= nil) do
				sUnitType = sUpgradeUnitType
				sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
			end
			local iUnit = GameInfoTypes[sUnitType]

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

			if goldCost then iCost = goldCost * 0.33 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		return plotFlag;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()

		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_CULVERIN")
		local sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)

		while (sUpgradeUnitType ~= nil) do
			sUnitType = sUpgradeUnitType
			sUpgradeUnitType = GetUpgradeUnit(player, sUnitType)
		end


		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		if pPlot == nil then return end
		;

		local NewUnit = player:InitUnit(GameInfoTypes[sUnitType], pPlot:GetX(), pPlot:GetY(), UNITAI_DEFENSE)
		-- NewUnit:JumpToNearestValidPlot()
		NewUnit:SetExperience(unitEXP)

		unit:SetMoves(0)
		local iUnit = GameInfoTypes[sUnitType]

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

		if goldCost then iCost = goldCost * 0.33 end
		;

		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_FuChuan_Cannon_Button)
--------------------------------------------------------------
-- 超级要塞转换
--------------------------------------------------------------
SPUE_GAIA_Ship2Head_Button = {
	Name = "GAIA Ship2Head",
	Title = "TXT_KEY_SPUE_AUTOCRACY_JUFORTRESSSHIP_TEXT_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                                      -- default is 200
	IconAtlas = "SPUE_GAIA_ATLAS",                            -- 45 and 64 variations required
	PortraitIndex = 0,
	ToolTip = "TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD_HELP", -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		local player = Players[unit:GetOwner()]
		return unit:CanMove() and unit:IsHasPromotion(unitPromotionGAIA_ShipID);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return false;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local player         = Players[unit:GetOwner()];

		local plot           = unit:GetPlot();
		local plotX          = plot:GetX();
		local plotY          = plot:GetY();

		local unitLevel      = unit:GetLevel();
		local unitEXP        = unit:GetExperience();

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
		-- unit:PushMission(GameInfoTypes.MISSION_FORTIFY);
		unit:Kill();
		local newUnit = nil;
		newUnit = player:InitUnit(GameInfoTypes.UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD, plot:GetX(), plot:GetY());

		newUnit:SetMoves(0);
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
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_GAIA_Ship2Head_Button)

SPUE_GAIA_Head2Ship_Button = {
	Name = "GAIA Head2Ship",
	Title = "TXT_KEY_SPUE_AUTOCRACY_JUFORTRESSHEAD_TEXT_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                                      -- default is 200
	IconAtlas = "SPUE_GAIA_ATLAS",                            -- 45 and 64 variations required
	PortraitIndex = 1,
	ToolTip = "TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP_HELP", -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		local player = Players[unit:GetOwner()]
		return unit:CanMove() and unit:IsHasPromotion(unitPromotionGAIA_HeadID);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return not unit:GetPlot():IsWater();
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local player         = Players[unit:GetOwner()];

		local plot           = unit:GetPlot();
		local plotX          = plot:GetX();
		local plotY          = plot:GetY();

		local unitLevel      = unit:GetLevel();
		local unitEXP        = unit:GetExperience();

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

		-- unit:PushMission(GameInfoTypes.MISSION_FORTIFY);
		unit:Kill();
		local newUnit = nil;
		newUnit = player:InitUnit(GameInfoTypes.UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP, plot:GetX(), plot:GetY());

		newUnit:SetMoves(0);
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
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_GAIA_Head2Ship_Button)
--------------------------------------------------------------
-- 神州天子之权：力量投射
--------------------------------------------------------------
local EmporerRadiusArray = {};
local SPUE_Emperor_Button = {
	Name = "IRON PAGODA CHARGE",
	Title = "TXT_KEY_TITLE_SPUE_EMPEROR",
	OrderPriority = 200,
	IconAtlas = "promoVP_atlas_02",
	PortraitIndex = 53,
	ToolTip = "TXT_KEY_COND_SPUE_EMPEROR", -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		if unit:CanMove() and unit:IsHasPromotion(unitPromotionEmperorID)
		then
			return true
		end
	end, -- or nil or a boolean, default is true
	Disabled = function(action, unit)
		return false
	end, -- or nil or a boolean, default is false
	Action = function(action, unit, eClick)
		if eClick == Mouse.eRClick then
			return
		end
		local player = Players[unit:GetOwner()];
		local plot = unit:GetPlot();
		local radius = math.floor(unit:GetMoves() / 120);

		local unitCount = plot:GetNumUnits();
		local uniqueRange = radius;

		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(plot:GetX(), plot:GetY(), dx, dy, uniqueRange);
				if (adjPlot ~= nil) then
					Events.SerialEventHexHighlight(ToHexFromGrid(Vector2(adjPlot:GetX(), adjPlot:GetY())), true,
						Vector4(1, 0, 0, 1))
					unitCount = adjPlot:GetNumUnits();
					if unitCount > 0 then
						local pFoundUnit = adjPlot:GetUnit(0);
						if pFoundUnit ~= nil then
							local pPlayer = Players[pFoundUnit:GetOwner()];
							if pPlayer == player then
								table.insert(EmporerRadiusArray, GetPlotKey(adjPlot));
								Events.SerialEventHexHighlight(ToHexFromGrid(Vector2(adjPlot:GetX(), adjPlot:GetY())),
									true, Vector4(0, 1, 0, 1));
							end
						end
					end
				end
			end
		end
		unitPromotionEmperorFlag = 1;
	end
}
LuaEvents.UnitPanelActionAddin(SPUE_Emperor_Button)

function SPUE_SetInputHandler(uiMsg, wParam, lParam)
	if unitPromotionEmperorFlag == 1 then
		if uiMsg == MouseEvents.LButtonDown then
			lButtonDown = true
			local pPlot = Map.GetPlot(UI.GetMouseOverHex());
			local pPlayer = Players[Game:GetActivePlayer()];
			local pSelUnit = UI.GetHeadSelectedUnit();
			if pSelUnit == nil then return end
			;

			local selUnitPlot = pSelUnit:GetPlot();

			if pSelUnit:IsHasPromotion(unitPromotionEmperorID)
				and isInArray(EmporerRadiusArray, GetPlotKey(pPlot))
			then
				local g_MinorCivsAndPopWithMajor = SPUE_MajorFavorite_MinorCivsAndCityPops(pPlayer:GetID());
				-- print("g_MinorCivsAndPopWithMajor="..g_MinorCivsAndPopWithMajor)
				local numAllies = 0;
				if g_MinorCivsAndPopWithMajor then
					numAllies = #g_MinorCivsAndPopWithMajor;
				end

				local unitCount = pPlot:GetNumUnits();
				if unitCount > 0 then
					for i = 0, unitCount - 1, 1 do
						local pFoundUnit = pPlot:GetUnit(i);
						if pFoundUnit ~= nil then
							local pFlayer = Players[pFoundUnit:GetOwner()];
							if pPlayer == pFlayer then
								pFoundUnit:ChangeDamage(-numAllies * 5);
								pFoundUnit:ChangeMoves(120);
								if not IsNotEliteUnit(pFoundUnit) then
									pFoundUnit:SetMadeAttack(false);
								end
							end
						end
					end
				end

				for i = 0, 5 do
					local adjPlot = Map.PlotDirection(pPlot:GetX(), pPlot:GetY(), i)
					if (adjPlot ~= nil) then
						local unitCount = adjPlot:GetNumUnits();
						if unitCount > 0 then
							for i = 0, unitCount - 1, 1 do
								local pFoundUnit = adjPlot:GetUnit(i);
								if pFoundUnit ~= nil then
									local pFlayer = Players[pFoundUnit:GetOwner()];
									if pPlayer == pFlayer then
										pFoundUnit:ChangeDamage(-numAllies);
										pFoundUnit:ChangeMoves(120);
										if not IsNotEliteUnit(pFoundUnit) then
											pFoundUnit:SetMadeAttack(false);
										end
										if i == 0 then
											local hex = ToHexFromGrid(Vector2(adjPlot:GetX(), adjPlot:GetY()));
											Events.AddPopupTextEvent(HexToWorld(hex),
												Locale.ConvertTextKey("TXT_KEY_TITLE_SPUE_EMPEROR"));
										end
									end
								end
							end
						end
					end
				end

				local hex = ToHexFromGrid(Vector2(pPlot:GetX(), pPlot:GetY()));
				Events.GameplayFX(hex.x, hex.y, -1);
				pSelUnit:SetMoves(0);
			end
			EmporerRadiusArray = {};
			Events.ClearHexHighlights();
			unitPromotionEmperorFlag = 0
		elseif uiMsg == MouseEvents.LButtonUp then
			if lButtonDown then
				lButtonDown = false;
			end
		elseif uiMsg == MouseEvents.RButtonDown then
			rButtonDown = true;
		elseif uiMsg == MouseEvents.RButtonUp then
			if rButtonDown and unitPromotionEmperorFlag == 1 then
				rButtonDown = false;
				unitPromotionEmperorFlag = 0;
				Events.ClearHexHighlights();
			end
		end
	end
	return false;
end

ContextPtr:SetInputHandler(SPUE_SetInputHandler)
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
			PlotX       = iPlotX,
			PlotY       = iPlotY,
			bIsCity     = false,
			defCityID   = -1,
			battleType  = iType,
		};
	end
end

GameEvents.BattleStarted.Add(NewAttackEffectStarted);
-- local tCaptureSPUnits = {};
function NewAttackEffectJoined(iPlayer, iUnitOrCity, iRole, bIsCity)
	if g_DoNewAttackEffect == nil
		or Players[iPlayer] == nil or not Players[iPlayer]:IsAlive()
		or (not bIsCity and Players[iPlayer]:GetUnitByID(iUnitOrCity) == nil)
		or (bIsCity and (Players[iPlayer]:GetCityByID(iUnitOrCity) == nil or iRole == GameInfoTypes["BATTLEROLE_ATTACKER"]))
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
		g_DoNewAttackEffect.attODamage = Players[iPlayer]:GetUnitByID(iUnitOrCity):GetDamage();
	elseif iRole == GameInfoTypes["BATTLEROLE_DEFENDER"] or iRole == GameInfoTypes["BATTLEROLE_INTERCEPTOR"] then
		g_DoNewAttackEffect.defPlayerID = iPlayer;
		g_DoNewAttackEffect.defUnitID = iUnitOrCity;
		g_DoNewAttackEffect.defODamage = Players[iPlayer]:GetUnitByID(iUnitOrCity):GetDamage();
	end
end

GameEvents.BattleJoined.Add(NewAttackEffectJoined);
function NewAttackEffect()
	--Defines and status checks
	if g_DoNewAttackEffect == nil or Players[g_DoNewAttackEffect.defPlayerID] == nil
		or Players[g_DoNewAttackEffect.attPlayerID] == nil or not Players[g_DoNewAttackEffect.attPlayerID]:IsAlive()
		or Players[g_DoNewAttackEffect.attPlayerID]:GetUnitByID(g_DoNewAttackEffect.attUnitID) == nil
		-- or Players[ g_DoNewAttackEffect.attPlayerID ]:GetUnitByID(g_DoNewAttackEffect.attUnitID):IsDead()
		or Map.GetPlot(g_DoNewAttackEffect.PlotX, g_DoNewAttackEffect.PlotY) == nil
	then
		return;
	end

	local attPlayerID = g_DoNewAttackEffect.attPlayerID;
	local attPlayer = Players[attPlayerID];
	local defPlayerID = g_DoNewAttackEffect.defPlayerID;
	local defPlayer = Players[defPlayerID];

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
		return;
	end
	-- Not for Barbarins
	--    if attPlayer:IsBarbarian() then
	--       return;
	--    end	
	local KillingEffectsID = GameInfo.UnitPromotions["PROMOTION_GAIN_MOVES_AFFER_KILLING"].ID

	-- 玄甲军杀敌回血
	----------- PROMOTION_GAIN_MOVES_AFFER_KILLING Effects
	if not isSPTP and defUnit and attUnit:IsHasPromotion(KillingEffectsID) then
		print("DefUnit Damage:" .. defFinalUnitDamage);
		-- if defFinalUnitDamage >= 100 then
		if defUnitDamage >= 30 or defFinalUnitDamage >= defUnit:GetMaxHitPoints() or defUnit:IsDead() then
			local maxattUnitHP = attUnit:GetMaxHitPoints()
			attUnit:SetMoves(attUnit:MovesLeft() + GameDefines["MOVE_DENOMINATOR"]);
			attUnit:SetMadeAttack(false);
			attUnit:ChangeDamage(0 - 0.25 * maxattUnitHP)
			local hex = ToHexFromGrid(Vector2(attPlot:GetX(), attPlot:GetY()));
			Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("TXT_KEY_PROMOTION_GAIN_MOVES_AFFER_KILLING"));
			print("Ah, fresh meat!");
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
					for i = 0, unitCount - 1, 1 do
						local pUnit = adjPlot:GetUnit(i) ------------Find Units affected
						if pUnit and (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) then
							local pCombat = pUnit:GetBaseCombatStrength()
							local pPlayer = Players[pUnit:GetOwner()]

							if PlayersAtWar(attPlayer, pPlayer) then
								-- local SplashDamageOri = defUnitDamage
								local attUnitStrength = attUnit:GetMaxAttackStrength(attPlot, defPlot, defUnit);
								local pFoundUnitStrength = pUnit:GetMaxDefenseStrength(batPlot, attUnit);
								local SplashDamageOri = attUnit:GetCombatDamage(attUnitStrength, pFoundUnitStrength,
									attFinalUnitDamage, false, false,
									false);

								local AOEmod = 1.0 -- the percent of damage reducing to nearby units

								local text = nil;
								local attUnitName = attUnit:GetName();
								local defUnitName = pUnit:GetName();

								local SplashDamageFinal = math.floor(SplashDamageOri * AOEmod); -- Set the Final Damage

								if SplashDamageFinal > 0 then
									-- Notification
									if defPlayerID == Game.GetActivePlayer() then
										text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE", attUnitName,
											defUnitName, SplashDamageFinal);
									elseif attPlayerID == Game.GetActivePlayer() then
										text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE_ENEMY",
											attUnitName, defUnitName, SplashDamageFinal);
									end
								end
								if text then
									Events.GameplayAlertMessage(text);
								end
								pUnit:ChangeDamage(SplashDamageFinal, attPlayer)
								print("Splash Damage=" .. SplashDamageFinal)
							end
						end
					end
				end
			end
		end
	end

	----- Charge Damage 瑞士佣兵&瓦兰吉卫队冲锋伤害
	if not attUnit:IsDead() and (attUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD"].ID) or attUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_GUARD"].ID))
		and not defUnit:IsDead() and batPlot ~= defPlot and defUnitDamage > 0 and batType == GameInfoTypes["BATTLETYPE_MELEE"]
	then
		-- print("Available for Charge Damage!");
		local defFinalUnitDamageChange = 0;
		local ChargeMod = 0.3; -- The percentage of charging damage to the other unit
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
			print("Our damage done=" .. defUnitDamage);
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = batPlot:GetUnit(i)
				if pFoundUnit ~= nil and pFoundUnit:GetID() ~= defUnit:GetID() then
					local pPlayer = Players[pFoundUnit:GetOwner()];
					if PlayersAtWar(attPlayer, pPlayer) then
						local attUnitStrength = attUnit:GetMaxAttackStrength(attPlot, defPlot, defUnit);
						print("attUnitStrength:" .. attUnitStrength);
						local pFoundUnitStrength = pFoundUnit:GetMaxDefenseStrength(batPlot, attUnit);
						print("pFoundUnitStrength:" .. pFoundUnitStrength);
						local ChargeDamageOri = attUnit:GetCombatDamage(attUnitStrength, pFoundUnitStrength,
							attFinalUnitDamage, false, false, false);
						print("ChargeDamageOri:" .. ChargeDamageOri); --we now consider the buff and debuff when caculating the charge damage.---by WM
						-- local ChargeDamageOri = attUnit:GetCombatDamage(attUnitStrength, pUnitStrength, attUnit:GetDamage(),false,false, false)

						local text = nil;
						local attUnitName = attUnit:GetName();
						local defUnitName = pFoundUnit:GetName();

						print("ChargeMod:" .. ChargeMod)
						local ChargeDamageFinal = math.floor(ChargeDamageOri * ChargeMod);

						if ChargeDamageFinal > 0 then
							-- Notification
							if defPlayerID == Game.GetActivePlayer() then
								text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE", attUnitName,
									defUnitName, ChargeDamageFinal);
							elseif attPlayerID == Game.GetActivePlayer() then
								text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_ENEMY", attUnitName,
									defUnitName, ChargeDamageFinal);
							end
							pFoundUnit:ChangeDamage(ChargeDamageFinal, attPlayer)
							print("Charge Damage=" .. ChargeDamageFinal)
						end
						if text then
							Events.GameplayAlertMessage(text);
						end
					end
				end
			end
		else
			print("our unit is in this plot or this plot has no other enemy - don't need to charge!")
		end
		local text = nil;
		local attUnitName = attUnit:GetName();
		local defUnitName = defUnit:GetName();

		if defFinalUnitDamageChange > 0 then
			-- Notification
			if defPlayerID == Game.GetActivePlayer() then
				text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE", attUnitName, defUnitName,
					defFinalUnitDamageChange);
			elseif attPlayerID == Game.GetActivePlayer() then
				text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_CHARGE_DAMAGE_ENEMY", attUnitName, defUnitName,
					defFinalUnitDamageChange);
			end
		end
		if text then
			Events.GameplayAlertMessage(text);
		end
		defFinalUnitDamage = defFinalUnitDamage + defFinalUnitDamageChange;
		defUnit:ChangeDamage(defFinalUnitDamageChange, attPlayer);
	end

	-- 火帆船防御时直接死球
	if not bIsCity then
		if not defUnit:IsDead() and defUnit:GetUnitType() == GameInfoTypes["UNIT_SPUE_FIRESHIP"]
		then
			defUnit:Kill();
		end
	end

	-- 九边卫士
	if attUnit and attUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID)
		and batType == GameInfoTypes["BATTLETYPE_MELEE"]
	then
		local movesLeft = attUnit:MovesLeft();
		attUnit:RangeStrike(plotX, plotY);
		-- attUnit:SetMadeAttack(false);
		attUnit:SetMoves(movesLeft);
	end

	if not bIsCity then
		if not defUnit:IsDead() and defUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID)
			and batType == GameInfoTypes["BATTLETYPE_RANGED"]
			and Map.PlotDistance(defUnit:GetX(), defUnit:GetY(), attUnit:GetX(), attUnit:GetY()) <= 2
		then
			local movesLeft = defUnit:MovesLeft();
			defUnit:RangeStrike(attUnit:GetX(), attUnit:GetY())
			defUnit:SetMadeAttack(false)
			defUnit:SetMoves(movesLeft);
			print("I see you!")
		end
	end

	-- 长滩
	if attUnit and attUnit:IsHasPromotion(GameInfoTypes["PROMOTION_SPUE_FREEDOM_LONG_BEACH"])
	then
		local movesLeft = attUnit:MovesLeft();
		local movesAdd = 60 * SPUE_GetRandom(1, 5)
		attUnit:SetMoves(movesLeft + movesAdd);
		local hex = ToHexFromGrid(Vector2(attPlot:GetX(), attPlot:GetY()));
		Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", movesAdd / 60));
	end

	------鹰击21
	if attUnit:IsHasPromotion(unitPromotion055Missile3ID)
		or attUnit:IsHasPromotion(unitPromotion055Missile2ID)
		or attUnit:IsHasPromotion(unitPromotion055Missile1ID)
	then
		-- for i = 0, 5 do
		-- 	local adjPlot = Map.PlotDirection(plotX, plotY, i)
		local text3n = nil;
		local uniqueRange = 3
		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(plotX, plotY, dx, dy, uniqueRange);
				if (adjPlot ~= nil and not adjPlot:IsCity()) then
					print("Available for AOE Damage!")
					local unitCount = adjPlot:GetNumUnits();
					if unitCount > 0 then
						for i = 0, unitCount - 1, 1 do
							local pUnit = adjPlot:GetUnit(i) ------------Find Units affected
							if pUnit and (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) then
								local pCombat = pUnit:GetBaseCombatStrength()
								local pPlayer = Players[pUnit:GetOwner()]

								if PlayersAtWar(attPlayer, pPlayer) then
									local SplashDamageOri = attUnit:GetRangeCombatDamage(pUnit, nil, false)

									local AOEmod = attUnit:GetMoves() /
									attUnit:MaxMoves()         -- the percent of damage reducing to nearby units

									local text = nil;

									local attUnitName = attUnit:GetName();
									local defUnitName = pUnit:GetName();

									local SplashDamageFinal = math.floor(SplashDamageOri * AOEmod); -- Set the Final Damage
									if SplashDamageFinal > 0 then
										-- Notification
										if defPlayerID == Game.GetActivePlayer() then
											text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE",
												attUnitName, defUnitName, SplashDamageFinal);
										elseif attPlayerID == Game.GetActivePlayer() then
											text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE_ENEMY",
												attUnitName, defUnitName, SplashDamageFinal);
										end
									end
									if text then
										Events.GameplayAlertMessage(text);
									end


									pUnit:ChangeDamage(SplashDamageFinal, attPlayer)
									print("Splash Damage=" .. SplashDamageFinal)
								end
							end
						end
					end
				end
			end
		end
		if text3n then
			Events.GameplayAlertMessage(text3n);
		end
		-- 攻击结束后失去晋升
		if attUnit:IsHasPromotion(unitPromotion055Missile3ID) then
			attUnit:SetHasPromotion(unitPromotion055Missile3ID, false);
			attUnit:SetHasPromotion(unitPromotion055Missile2ID, true);
		elseif attUnit:IsHasPromotion(unitPromotion055Missile2ID) then
			attUnit:SetHasPromotion(unitPromotion055Missile2ID, false);
			attUnit:SetHasPromotion(unitPromotion055Missile1ID, true);
		else
			attUnit:SetHasPromotion(unitPromotion055Missile1ID, false);
		end
		local text1l = Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_ORDER_SUPER_055_TEXT1L");
		Events.GameplayAlertMessage(text1l);
	end

	-- 超级要塞：浮岛要塞
	if attUnit:IsHasPromotion(unitPromotionGAIA_ShipID) and GAIAShipHasAttackedThisTurn == 0 then
		local movesLeft = attUnit:MovesLeft();
		attUnit:RangeStrike(plotX, plotY);
		attUnit:SetMadeAttack(false);
		attUnit:SetMoves(movesLeft);
		GAIAShipHasAttackedThisTurn = 1;
	end

	-- 超级要塞：神之鼻息
	if (attUnit:IsHasPromotion(unitPromotionGAIA_HeadID)) then
		-- 确定超级要塞与战斗单元的相对方位
		local iDireciton = nil; -- 战斗单元相对于超级要塞的方向
		local GAIARange = 10;
		local oPlotX, oPlotY = plotX, plotY;

		for i = 0, 5 do
			local adjPlot = Map.PlotDirection(plotX, plotY, i)
			if adjPlot:GetX() == attPlot:GetX() and adjPlot:GetY() == attPlot:GetY() then
				if i >= 3 then
					iDireciton = i - 3
				else
					iDireciton = i + 3
				end
			end
		end

		if not iDireciton then
			return;
		end

		while GAIARange > 0 do
			-- for i = 0, 5 do
			-- local iPlot = Map.PlotDirection(oPlotX, oPlotY, i)
			local adjPlot = Map.PlotDirection(oPlotX, oPlotY, iDireciton)
			if (adjPlot ~= nil and not adjPlot:IsCity() and GAIARange > 0) then
				print("Available for AOE Damage!")
				local unitCount = adjPlot:GetNumUnits();
				if unitCount > 0 then
					for i = 0, unitCount - 1, 1 do
						local pUnit = adjPlot:GetUnit(i) ------------Find Units affected
						if pUnit and (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA) then
							local pCombat = pUnit:GetBaseCombatStrength()
							local pPlayer = Players[pUnit:GetOwner()]

							if PlayersAtWar(attPlayer, pPlayer) then
								local SplashDamageOri = attUnit:GetRangeCombatDamage(pUnit, nil, false)

								local AOEmod = 1.0; -- the percent of damage reducing to nearby units

								local text = nil;

								local attUnitName = attUnit:GetName();
								local defUnitName = pUnit:GetName();

								local SplashDamageFinal = math.floor(SplashDamageOri * AOEmod); -- Set the Final Damage
								if SplashDamageFinal > 0 then
									-- Notification
									if defPlayerID == Game.GetActivePlayer() then
										text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE", attUnitName,
											defUnitName, SplashDamageFinal);
									elseif attPlayerID == Game.GetActivePlayer() then
										text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SPLASH_DAMAGE_ENEMY",
											attUnitName, defUnitName, SplashDamageFinal);
									end
								end
								if text then
									Events.GameplayAlertMessage(text);
								end

								pUnit:ChangeDamage(SplashDamageFinal, attPlayer)
								print("Splash Damage=" .. SplashDamageFinal)
							end
						end
					end
				end
			end
			oPlotX, oPlotY = adjPlot:GetX(), adjPlot:GetY()
			GAIARange = GAIARange - 1
		end
	end

	if defUnit and attPlayer:GetCapitalCity() then
		-- 王城骑士杀敌掠获人口，达到一定程度则可以在首都获得移民
		for i = 1, 5 do
			if attUnit:IsHasPromotion(g_KingsKnightPops[i]) then
				local pEraType = attPlayer:GetCurrentEra();
				local pEraID = GameInfo.Eras[pEraType].ID;
				if defUnitDamage >= 40 or defFinalUnitDamage >= defUnit:GetMaxHitPoints() or defUnit:IsDead() then
					local attCambat = attUnit:GetBaseCombatStrength();
					local defCombat = defUnit:GetBaseCombatStrength();
					local KingsKnightPopsDelta = 100 * (pEraID + 1) * defCombat / attCambat;
					local KingsKnightPops = load(attUnit, "KingsKnightPops", KingsKnightPops) or 0;
					if KingsKnightPops <= (i - 1) * 20 then KingsKnightPops = (i - 1) * 20 end
					;
					KingsKnightPops = KingsKnightPops + KingsKnightPopsDelta;
					if KingsKnightPops < 100 then
						local j = math.ceil(KingsKnightPops / 20);
						-- print("g_KingsKnightPops[j], j="..j)
						attUnit:SetHasPromotion(g_KingsKnightPops[i], false);
						attUnit:SetHasPromotion(g_KingsKnightPops[j], true);
						local hex = ToHexFromGrid(Vector2(attPlot:GetX(), attPlot:GetY()));
						Events.AddPopupTextEvent(HexToWorld(hex),
							Locale.ConvertTextKey("[ICON_FOOD] [COLOR_YIELD_FOOD]{1_Num}[ENDCOLOR] POP", KingsKnightPops));
					elseif KingsKnightPops >= 100 then
						attUnit:SetHasPromotion(g_KingsKnightPops[i], false);
						attUnit:SetHasPromotion(g_KingsKnightPops[1], true);
						local hex = ToHexFromGrid(Vector2(attPlot:GetX(), attPlot:GetY()));
						Events.AddPopupTextEvent(HexToWorld(hex),
							Locale.ConvertTextKey("[ICON_FOOD] [COLOR_YIELD_FOOD]{1_Num}[ENDCOLOR] POP", KingsKnightPops));
						KingsKnightPops = KingsKnightPops - 100;
						local attCapitalCity = attPlayer:GetCapitalCity();
						local sUnitType = GetCivSpecificUnit(attPlayer, "UNITCLASS_SETTLER")
						local NewUnit = attPlayer:InitUnit(GameInfoTypes[sUnitType], attCapitalCity:GetX(),
							attCapitalCity:GetY(), UNITAI_SETTLE)
					end
					save(attUnit, "KingsKnightPops", KingsKnightPops);
					break;
				end
			end
		end
		-- 王城骑士杀敌为首都提供伟人点数
		if attUnit:IsHasPromotion(KingsKnightCID) then
			if defUnitDamage >= 40 or defFinalUnitDamage >= defUnit:GetMaxHitPoints() or defUnit:IsDead() then
				local unitLevel = attUnit:GetLevel();
				local rewardTP = attUnit:GetBaseCombatStrength();
				local capital = attPlayer:GetCapitalCity();
				local specialistWriterID = GameInfoTypes["SPECIALIST_WRITER"];
				local specialistScientistID = GameInfoTypes["SPECIALIST_SCIENTIST"];
				if capital then
					capital:ChangeSpecialistGreatPersonProgressTimes100(specialistWriterID, rewardTP * 100);
					capital:ChangeSpecialistGreatPersonProgressTimes100(specialistScientistID, rewardTP * 100);

					if attPlayer:IsHuman() then
						local plotX = capital:GetX();
						local plotY = capital:GetY();
						Events.AddPopupTextEvent(HexToWorld(ToHexFromGrid(Vector2(plotX, plotY))),
							Locale.ConvertTextKey(
							"[COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] [ICON_GREAT_WRITER][NEWLINE][COLOR_POSITIVE_TEXT]+{1_Num}[ENDCOLOR] [ICON_GREAT_SCIENTIST]",
								rewardTP, rewardTP), true);
					end
				end
			end
		end

		-- 王国骑士防御时用掳掠的人口减伤
		for i = 2, 6 do
			if defUnit:IsHasPromotion(g_KingsKnightPops[i]) then
				local KingsKnightPops = load(defUnit, "KingsKnightPops", KingsKnightPops) or 0;
				if KingsKnightPops <= (i - 1) * 20 then KingsKnightPops = (i - 1) * 20 end
				;
				KingsKnightPops = KingsKnightPops - 20;
				local j = math.ceil(KingsKnightPops / 20);
				defUnit:SetHasPromotion(g_KingsKnightPops[i], false);
				defUnit:SetHasPromotion(g_KingsKnightPops[j], true);
				save(defUnit, "KingsKnightPops", KingsKnightPops);
			end
		end
	end

	-- 贝利撒留甲骑兵
	if defUnit and attUnit:IsHasPromotion(unitPromotionBucellariEliteID) then
		print("DefUnit Damage:" .. defFinalUnitDamage);
		-- if defFinalUnitDamage >= 100 then
		if defUnitDamage >= 40 or defFinalUnitDamage >= defUnit:GetMaxHitPoints() or defUnit:IsDead() then
			-- 贝利撒留甲骑兵杀敌带来我们2回合爱国王日
			if attPlayer:GetCapitalCity() then
				local goldRow = GameInfo.Resources["RESOURCE_GOLD"];
				for city in attPlayer:Cities() do
					if city:GetWeLoveTheKingDayCounter() == 0 then
						attPlayer:AddNotification(
							NotificationTypes.NOTIFICATION_DISCOVERED_LUXURY_RESOURCE,
							Locale.ConvertTextKey("TXT_KEY_NOTIFICATION_CITY_WLTKD", goldRow.Description,
								city:GetNameKey()),
							Locale.ConvertTextKey("TXT_KEY_NOTIFICATION_SUMMARY_CITY_WLTKD", city:GetNameKey()),
							city:GetX(), city:GetY(),
							goldRow.ID);
						city:SetWeLoveTheKingDayCounter(city:GetWeLoveTheKingDayCounter() + 2);
						city:SetResourceDemanded(-1);
						Events.SerialEventCityInfoDirty();

						local cityID = city:GetID();
					elseif city:GetWeLoveTheKingDayCounter() > 0 then
						city:SetWeLoveTheKingDayCounter(city:GetWeLoveTheKingDayCounter() + 2);
					end
				end
			end
		end

		--每次发动攻击带来战斗力加成
		local combatBonus = math.min(500, SPUEGetCombatBonus(attUnit) + 20);
		if SPUEGetCombatBonus(attUnit) < 500 then
			SPUEAddCombatBonus(attUnit, combatBonus);
		end
	end

	-- 贝利撒留甲骑兵受到攻击后效果减半&清零
	if not bIsCity and defUnit then
		if not defUnit:IsDead() and defUnit:IsHasPromotion(unitPromotionBucellariEliteID)
		then
			local combatBonus = math.max(20, math.ceil(SPUEGetCombatBonus(attUnit) / 2));
			if combatBonus >= 20 then
				SPUEAddCombatBonus(defUnit, combatBonus);
			else
				SPUEAddCombatBonus(defUnit, 0);
			end
		end
	end

	-- 海洋之火
	if (attUnit:IsHasPromotion(unitPromotionOceanFireID) or attUnit:IsHasPromotion(unitPromotionGreekFireID)) then
		local uniqueRange = 2
		for dx = -uniqueRange, uniqueRange, 1 do
			for dy = -uniqueRange, uniqueRange, 1 do
				local adjPlot = Map.PlotXYWithRangeCheck(plotX, plotY, dx, dy, uniqueRange);
				if (adjPlot ~= nil and not adjPlot:IsCity()) then
					local unitCount = adjPlot:GetNumUnits();
					if unitCount > 0 then
						for i = 0, unitCount - 1, 1 do
							local pUnit = adjPlot:GetUnit(i) ------------Find Units affected
							if pUnit
								and (pUnit:GetDomainType() == DomainTypes.DOMAIN_LAND or pUnit:GetDomainType() == DomainTypes.DOMAIN_SEA)
								and not pUnit:IsHasPromotion(unitPromotionOceanFireE02ID)
								and not pUnit:IsHasPromotion(unitPromotionOceanFireE01ID)
								and not pUnit:IsHasPromotion(AntiDebuffID)
							then
								local pPlayer = Players[pUnit:GetOwner()]
								if PlayersAtWar(attPlayer, pPlayer) then
									if Map.PlotDistance(pUnit:GetX(), pUnit:GetY(), attUnit:GetX(), attUnit:GetY()) <= 2 then
										pUnit:SetHasPromotion(unitPromotionOceanFireE02ID, true);
										local hex = ToHexFromGrid(Vector2(pUnit:GetX(), pUnit:GetY()));
										Events.AddPopupTextEvent(HexToWorld(hex),
											Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_OCEAN_FIRE_02"));
									else
										pUnit:SetHasPromotion(unitPromotionOceanFireE01ID, true);
										local hex = ToHexFromGrid(Vector2(pUnit:GetX(), pUnit:GetY()));
										Events.AddPopupTextEvent(HexToWorld(hex),
											Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_OCEAN_FIRE_01"));
									end
								end
							end
						end
					end
				end
			end
		end
	end

	-- 炎黄坦克防御时
	if not bIsCity and defUnit then
		if not defUnit:IsDead() and defUnit:IsHasPromotion(unitPromotionOvrlordID)
		then
			defUnit:SetMoves(defUnit:MovesLeft() + GameDefines["MOVE_DENOMINATOR"]);
			local OvrlordNuclear = load(defUnit, "OvrlordNuclear", OvrlordNuclear) or 0;
			OvrlordNuclear = OvrlordNuclear + defUnitDamage;

			if defUnit:IsHasPromotion(unitPromotionOvrlordNuclearID) then
				local hex = ToHexFromGrid(Vector2(defPlot:GetX(), defPlot:GetY()));
				OvrlordNuclear = 0;
				Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+1[ICON_MOVES]"));
			elseif not defUnit:IsHasPromotion(unitPromotionOvrlordNuclearID) and OvrlordNuclear < 200 then
				local hex = ToHexFromGrid(Vector2(defPlot:GetX(), defPlot:GetY()));
				Events.AddPopupTextEvent(HexToWorld(hex),
					Locale.ConvertTextKey("+1[ICON_MOVES][NEWLINE]{1_Num} EN", OvrlordNuclear));
			elseif not defUnit:IsHasPromotion(unitPromotionOvrlordNuclearID) and OvrlordNuclear >= 200 then
				local hex = ToHexFromGrid(Vector2(defPlot:GetX(), defPlot:GetY()));
				Events.AddPopupTextEvent(HexToWorld(hex),
					Locale.ConvertTextKey("TXT_KEY_PROMOTION_SPUE_NVOVRLORD_NUCLEAR"));
				OvrlordNuclear = 0;
				defUnit:SetHasPromotion(unitPromotionOvrlordNuclearID, true);
			end

			save(defUnit, "OvrlordNuclear", OvrlordNuclear);
		end
	end
end --function END

GameEvents.BattleFinished.Add(NewAttackEffect);
--------------------------------------------------------------
-- 战斗增伤
--------------------------------------------------------------
function SPUEDamageDelta(iBattleUnitType, iBattleType,
						 iAttackPlayerID, iAttackUnitOrCityID, bAttackIsCity, iAttackDamage,
						 iDefensePlayerID, iDefenseUnitOrCityID, bDefenseIsCity, iDefenseDamage,
						 iInterceptorPlayerID, iInterceptorUnitOrCityID, bInterceptorIsCity, iInterceptorDamage)
	local additionalDamage = 0;

	local attPlayer = Players[iAttackPlayerID]
	local defPlayer = Players[iDefensePlayerID]
	if attPlayer == nil or defPlayer == nil then
		return 0;
	end

	if iBattleUnitType == GameInfoTypes["BATTLEROLE_ATTACKER"] then
		if not bAttackIsCity then
			local attUnit = attPlayer:GetUnitByID(iAttackUnitOrCityID)
			if attUnit == nil then return 0 end
			;

			if attUnit:IsHasPromotion(unitPromotionElmetiID) and bDefenseIsCity
			then
				local defCity = defPlayer:GetCityByID(iDefenseUnitOrCityID);
				if defCity == nil then return 0 end
				;
				additionalDamage = additionalDamage + defCity:GetMaxHitPoints() * 0.15;
			end
		end
	end

	return additionalDamage;
end

GameEvents.BattleCustomDamage.Add(SPUEDamageDelta)
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
	local pPlayer = Players[iPlayer]
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
		pPlayer:ChangeGold(100);
		local hex = ToHexFromGrid(Vector2(iX, iY));
		Events.AddPopupTextEvent(HexToWorld(hex),
			Locale.ConvertTextKey("[COLOR_YIELD_GOLD]+{1_Num}[ENDCOLOR][ICON_GOLD]", 100));
		Events.GameplayFX(hex.x, hex.y, -1);
	elseif (pPlot:IsRoute() and not pPlot:IsRoutePillaged()) then
		-- Non-pillaged route, at the very least, pillage it
		pPlot:SetRoutePillaged(true)
		pUnit:ChangeExperience(pUnitInfo.XPValueAttack)
		pUnit:SetDamage(-25)
		pPlayer:ChangeGold(100);
		local hex = ToHexFromGrid(Vector2(iX, iY));
		Events.AddPopupTextEvent(HexToWorld(hex),
			Locale.ConvertTextKey("[COLOR_YIELD_GOLD]+{1_Num}[ENDCOLOR][ICON_GOLD]", 100));
		Events.GameplayFX(hex.x, hex.y, -1);
	end

	-- Can the attacking unit destroy the improvement/route?

	return 1;
end

GameEvents.UnitRangeAttackAt.Add(OnUnitRangeAttackAt)
--------------------------------------------------------------
-- 私掠舰未开战攻击
--------------------------------------------------------------
function OnPrivateerCanRangeAttackAt(iPlayer, iUnit, iX, iY, bNeedWar)
	local pPlayer = Players[iPlayer]
	local pUnit = pPlayer:GetUnitByID(iUnit)
	local pUnitInfo = GameInfo.Units[pUnit:GetUnitType()]

	if pUnit:IsHasPromotion(unitPromotionPrivateerID)
		or pUnit:IsHasPromotion(unitPromotionSeaDogID)
	then
		local pPlot = Map.GetPlot(iX, iY);
		local ePlayer = nil;
		local Range = pUnitInfo.Range;

		local unitCount = pPlot:GetNumUnits();
		if Range > 0 and unitCount > 0 and pPlot ~= pUnit:GetPlot() then
			local pFoundUnit = pPlot:GetUnit(0);
			ePlayer = Players[pFoundUnit:GetOwner()];
			if ePlayer and not PlayersAtWar(ePlayer, pPlayer)
			then
				if pFoundUnit:GetOwner() ~= iPlayer then
					return true;
				elseif pFoundUnit:GetOwner() == iPlayer and unitCount == 1 then
					return true;
				end
			end
		end
	end

	return false;
end

GameEvents.UnitCanRangeAttackAt.Add(OnPrivateerCanRangeAttackAt)

function OnPrivateerRangeAttackAt(iPlayer, iUnit, iX, iY)
	local pPlayer = Players[iPlayer]
	local pUnit = Players[iPlayer]:GetUnitByID(iUnit)
	local pPlot = Map.GetPlot(iX, iY)
	local pUnitInfo = GameInfo.Units[pUnit:GetUnitType()]

	-- 私掠舰
	if pUnit:IsHasPromotion(unitPromotionPrivateerID) then
		local unitCount = pPlot:GetNumUnits();
		local iGold = 0;
		if unitCount > 0 then
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = pPlot:GetUnit(i);
				if pFoundUnit and pFoundUnit:GetBaseCombatStrength() > 0 then
					local iPrivateerDamage = pUnit:GetRangeCombatDamage(pFoundUnit, nil, false);
					iPrivateerDamage = math.min(pFoundUnit:GetCurrHitPoints() - 1, iPrivateerDamage);
					pFoundUnit:ChangeDamage(iPrivateerDamage);
					pUnit:ChangeExperience(pUnitInfo.XPValueAttack);
					iGold = iGold + iPrivateerDamage;
				end
			end
		end
		pPlayer:ChangeGold(iGold);
		local hex = ToHexFromGrid(Vector2(iX, iY));
		Events.AddPopupTextEvent(HexToWorld(hex),
			Locale.ConvertTextKey("[COLOR_YIELD_GOLD]+{1_Num}[ENDCOLOR][ICON_GOLD]", iGold));
		Events.GameplayFX(hex.x, hex.y, -1);
	end

	-- 海猎犬
	if pUnit:IsHasPromotion(unitPromotionSeaDogID) then
		local unitCount = pPlot:GetNumUnits();
		local iGold = 0;
		local iCulture = 0;
		if unitCount > 0 then
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = pPlot:GetUnit(i);
				if pFoundUnit and pFoundUnit:GetBaseCombatStrength() > 0 then
					local iPrivateerDamage = pUnit:GetRangeCombatDamage(pFoundUnit, nil, false);
					iPrivateerDamage = math.min(pFoundUnit:GetCurrHitPoints() - 1, iPrivateerDamage);
					pFoundUnit:ChangeDamage(iPrivateerDamage);
					pUnit:ChangeExperience(pUnitInfo.XPValueAttack);
					iGold = iGold + iPrivateerDamage / 2;
					iCulture = iCulture + iPrivateerDamage / 2;
				end
			end
		end
		pPlayer:ChangeGold(iGold);
		pPlayer:ChangeJONSCulture(iCulture);

		local hex = ToHexFromGrid(Vector2(iX, iY));
		Events.AddPopupTextEvent(HexToWorld(hex),
			Locale.ConvertTextKey(
			"[COLOR_YIELD_GOLD]+{1_Num}[ENDCOLOR][ICON_GOLD][NEWLINE][COLOR_MAGENTA]+{2_Num}[ENDCOLOR][ICON_CULTURE]",
				iGold, iCulture));
		Events.GameplayFX(hex.x, hex.y, -1);
	end

	return 1;
end

GameEvents.UnitRangeAttackAt.Add(OnPrivateerRangeAttackAt)
--------------------------------------------------------------
-- 倭寇帆船掠夺地块
--------------------------------------------------------------
function SPUE_OnUnitPillage(iPlayerID, iUnitID)
	if Players[iPlayerID] == nil or Players[iPlayerID]:GetUnitByID(iUnitID) == nil
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsEmbarked()
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDead()
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDelayedDeath()
	then
		return;
	end
	local pPlayer = Players[iPlayerID];
	local pUnit   = Players[iPlayerID]:GetUnitByID(iUnitID);
	local pPlot   = pUnit:GetPlot();

	-- 倭寇帆船掠夺地块
	if pPlot and pUnit:IsHasPromotion(unitPromotionFuneID) then
		pUnit:ChangeMoves(180);
		if pPlayer:IsHuman() then
			local hex = ToHexFromGrid(Vector2(pUnit:GetX(), pUnit:GetY()));
			Events.AddPopupTextEvent(HexToWorld(hex), Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", 3));
		end

		local unitCount = pPlot:GetNumUnits();
		if unitCount > 0 then
			for i = 0, unitCount - 1, 1 do
				local pFoundUnit = pPlot:GetUnit(i);
				if pFoundUnit ~= nil
					and pUnit:GetID() ~= pFoundUnit:GetID()
				then
					local pFlayer = Players[pFoundUnit:GetOwner()];
					if pPlayer == pFlayer then
						pFoundUnit:ChangeMoves(180);
					end
				end
			end
		end

		for i = 0, 5 do
			local adjPlot = Map.PlotDirection(pPlot:GetX(), pPlot:GetY(), i)
			if (adjPlot ~= nil) then
				local unitCount = adjPlot:GetNumUnits();
				if unitCount > 0 then
					for i = 0, unitCount - 1, 1 do
						local pFoundUnit = adjPlot:GetUnit(i);
						if pFoundUnit ~= nil then
							local pFlayer = Players[pFoundUnit:GetOwner()];
							if pPlayer == pFlayer then
								pFoundUnit:ChangeMoves(180);

								if i == 0 and pPlayer:IsHuman() then
									local hex = ToHexFromGrid(Vector2(adjPlot:GetX(), adjPlot:GetY()));
									Events.AddPopupTextEvent(HexToWorld(hex),
										Locale.ConvertTextKey("+{1_Num}[ICON_MOVES]", 3));
								end
							end
						end
					end
				end
			end
		end
	end
end

GameEvents.UnitPillageGold.Add(SPUE_OnUnitPillage)
--------------------------------------------------------------
-- 铁人军登陆时回复全部移动力
--------------------------------------------------------------
function SPUE_EmbarkUnit(iPlayerID, iUnitID)
	if Players[iPlayerID] == nil or Players[iPlayerID]:GetUnitByID(iUnitID) == nil
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsEmbarked()
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDead()
		or Players[iPlayerID]:GetUnitByID(iUnitID):IsDelayedDeath()
	then
		return;
	end
	local pUnit = Players[iPlayerID]:GetUnitByID(iUnitID);
	if pUnit:IsHasPromotion(IronTroopID) then
		pUnit:SetMoves(pUnit:MaxMoves());
	end
end

Events.UnitEmbark.Add(SPUE_EmbarkUnit);
--------------------------------------------------------------
-- 圣殿骑士团攻占城市
--------------------------------------------------------------
--g_Religions_Table
local g_Religions_Table = {}
local g_Religions_Count = 1
for row in DB.Query("SELECT ID FROM Religions WHERE Type != 'RELIGION_PANTHEON';") do
	g_Religions_Table[g_Religions_Count] = row
	g_Religions_Count = g_Religions_Count + 1
end

function SPUE_Templar_CityCaptureComplete(oldOwnerID, isCapital, plotX, plotY, newOwnerID, numPop, isConquest)
	local player = Players[newOwnerID]
	if oldOwnerID == newOwnerID then return end
	if (not isConquest) then return end

	local city = Map.GetPlot(plotX, plotY):GetPlotCity();
	local mainReligionID = player:GetReligionCreatedByPlayer();
	if Player.HasStateReligion then
		mainReligionID = player:GetStateReligion();
	end
	if mainReligionID == -1 then
		mainReligionID = player:GetCapitalCity():GetReligiousMajority();
	end
	if mainReligionID == -1 then return end

	local pEraType = player:GetCurrentEra()
	local pEraID = GameInfo.Eras[pEraType].ID;

	--UNIQUE UNIT
	local unitGarrison = city:GetGarrisonedUnit()
	if (not unitGarrison) then return end
	-- if unitGarrison:GetUnitType() ~= unitKnightsTemplarID then return end

	if unitGarrison:IsHasPromotion(TemplarKnightID) then
		--g_Religions_Table
		local religionsTable = g_Religions_Table
		local numReligions = #religionsTable
		local oldMainReligionFollowers = city:GetNumFollowers(mainReligionID)

		for index = 1, numReligions do
			local row = religionsTable[index]
			local religionID = row.ID

			city:ConvertPercentFollowers(mainReligionID, religionID, 100)
		end
		city:ConvertPercentFollowers(mainReligionID, -1, 100)

		local newMainReligionFollowers = city:GetNumFollowers(mainReligionID)

		local religionBonus = (newMainReligionFollowers - oldMainReligionFollowers) * 30 * (pEraID + 1);
		player:ChangeGold(religionBonus);
		player:ChangeFaith(religionBonus);
		player:ChangeJONSCulture(religionBonus);
		player:ChangeOverflowResearch(religionBonus);

		local hex = ToHexFromGrid(Vector2(plotX, plotY));
		Events.AddPopupTextEvent(HexToWorld(hex),
			Locale.ConvertTextKey(
			"[COLOR_YIELD_GOLD]+{1_Num}[ENDCOLOR][ICON_GOLD][NEWLINE]+{2_Num}[ICON_PEACE][NEWLINE][COLOR_MAGENTA]+{3_Num}[ENDCOLOR][ICON_CULTURE][NEWLINE][COLOR_RESEARCH_STORED]+{4_Num}[ENDCOLOR][ICON_RESEARCH]",
				religionBonus, religionBonus, religionBonus, religionBonus));
		Events.GameplayFX(hex.x, hex.y, -1);
	end
end

GameEvents.CityCaptureComplete.Add(SPUE_Templar_CityCaptureComplete)
--------------------------------------------------------------
-- 赞助单位征集按钮
--------------------------------------------------------------
--------------------------------------------------------------
-- 靖抚甲骑永备化成为贝利撒留甲骑兵
--------------------------------------------------------------
SPUE_BUCELLARII_Button = {
	Name = "BUCELLARII Guard",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "promoVP_atlas_00",                   -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		return EliteCondition(unit, unitPromotionBucellariID, "UNIT_SPUE_BUCELLARII_GUARD",
			"UNIT_SPUE_BUCELLARII_GUARD_ELITE",
			"UNITCLASS_SPUE_BUCELLARII_GUARD", "PROJECT_BUCELLARII_TRAINING", SPUE_BUCELLARII_Button);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return EliteDisable(unit, unitPromotionBucellariEliteID, "UNITCLASS_SPUE_BUCELLARII_GUARD",
			"PROJECT_BUCELLARII_TRAINING");
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		EliteAction(unit, "UNIT_SPUE_BUCELLARII_GUARD_ELITE", "UNITCLASS_SPUE_BUCELLARII_GUARD")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_BUCELLARII_Button)

-- 同盟军团征集
SPUE_Patronage_Hastati_Button = {
	Name = "Patronage Hastati",
	Title = "TXT_KEY_SPUE_PATRONAGE_SOCII_HASTATI_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                                      -- default is 200
	IconAtlas = "SPUE02_UNITS_ATLAS",                         -- 45 and 64 variations required
	PortraitIndex = 28,
	ToolTip = "TXT_KEY_SPUE_PATRONAGE_SOCII_HASTATI_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		if not Teams[player:GetTeam()]:IsHasTech(GameInfoTypes["TECH_IRON_WORKING"]) then
			return;
		end

		local flag = 0
		local csPlotFlag = 0

		if plot and plot:IsOwned() then
			local csPlayer = Players[plot:GetOwner()]
			if csPlayer:IsMinorCiv() then
				if not PlayersAtWar(player, csPlayer) then
					csPlotFlag = 1
				end
			end
		end

		-- local numUnit = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_SOCII_HASTATI"]);
		-- local numUnit = CountUnitsWithUniquePromotions(unit:GetOwner(),
		-- 	GameInfo.UnitPromotions["PROMOTION_SPUE_SOCII_HASTATI"].ID)
		local numUnit = player:GetUnitCountFromHasPromotion(
			GameInfo.UnitPromotions["PROMOTION_SPUE_SOCII_HASTATI"].ID)

			
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_GENERAL_BODYGUARD"].ID)
			and csPlotFlag == 1
			and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
			and numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_SOCII_HASTATI"].MaxPlayerInstances
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_SOCII_HASTATI");
			local iUnit = GameInfoTypes[sUnitType];

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

			if goldCost then iCost = goldCost * 0.5 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				SPUE_Patronage_Hastati_Button.ToolTip = Locale.ConvertTextKey(
				"TXT_KEY_SPUE_PATRONAGE_SOCII_HASTATI_BUTTON", iCost)
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return false;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()
		-- 单位购买价格
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_SOCII_HASTATI");
		local iUnit = GameInfoTypes[sUnitType];

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

		if goldCost then iCost = goldCost * 0.5 end
		;

		local NewUnit = player:InitUnit(iUnit, plotX, plotY, UNITAI_DEFENSE)
		if plot:GetNumUnits() > 2 then
			NewUnit:JumpToNearestValidPlot();
		end
		NewUnit:SetExperience(unitEXP);
		NewUnit:SetPromotionReady(true);
		unit:SetMoves(0)

		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};
LuaEvents.UnitPanelActionAddin(SPUE_Patronage_Hastati_Button)

-- 克里特弓箭手征集
SPUE_Patronage_vBowman_Button = {
	Name = "Patronage vBowman",
	Title = "TXT_KEY_SPUE_VASSAL_BOWMAN_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                            -- default is 200
	IconAtlas = "SPUE_UNITS_ATLAS",                 -- 45 and 64 variations required
	PortraitIndex = 55,
	ToolTip = "TXT_KEY_SPUE_VASSAL_BOWMAN_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		-- if Teams[player:GetTeam()]:IsHasTech(GameInfoTypes["TECH_IRON_WORKING"]) then
		-- 	return false;
		-- end

		local flag = 0
		local csPlotFlag = 0

		if plot and plot:IsOwned() then
			local csPlayer = Players[plot:GetOwner()]
			if csPlayer:IsMinorCiv() then
				if not PlayersAtWar(player, csPlayer) then
					csPlotFlag = 1
				end
			end
		end

		local numUnit = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_VASSAL_BOWMAN"]);
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_GENERAL_BODYGUARD"].ID)
			and csPlotFlag == 1
			and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
			and numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_VASSAL_BOWMAN"].MaxPlayerInstances
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_VASSAL_BOWMAN");
			local iUnit = GameInfoTypes[sUnitType];

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
			if goldCost then iCost = goldCost * 0.5 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				SPUE_Patronage_vBowman_Button.ToolTip = Locale.ConvertTextKey("TXT_KEY_SPUE_VASSAL_BOWMAN_BUTTON", iCost)
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return false;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()
		-- 单位购买价格
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_VASSAL_BOWMAN");
		local iUnit = GameInfoTypes[sUnitType];

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
		if goldCost then iCost = goldCost * 0.5 end
		;

		-- local newUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_VASSAL_BOWMAN");
		local NewUnit = player:InitUnit(iUnit, plotX, plotY, UNITAI_DEFENSE)
		if plot:GetNumUnits() > 2 then
			NewUnit:JumpToNearestValidPlot();
		end
		NewUnit:SetExperience(unitEXP)
		NewUnit:SetPromotionReady(true)
		unit:SetMoves(0)
		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};
LuaEvents.UnitPanelActionAddin(SPUE_Patronage_vBowman_Button)

-- 拜占庭喷火兵征集
SPUE_Patronage_Serbia_Button = {
	Name = "Patronage Serbia",
	Title = "TXT_KEY_SPUE_FIRE_THROWER_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                           -- default is 200
	IconAtlas = "SPUE_UNITS_ATLAS",                -- 45 and 64 variations required
	PortraitIndex = 62,
	ToolTip = "TXT_KEY_SPUE_FIRE_THROWER_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		if not Teams[player:GetTeam()]:IsHasTech(GameInfoTypes["TECH_IRON_WORKING"]) then
			return;
		end

		local flag = 0
		local csPlotFlag = 0

		if plot and plot:IsOwned() then
			local csPlayer = Players[plot:GetOwner()]
			if csPlayer:IsMinorCiv() then
				if not PlayersAtWar(player, csPlayer) then
					csPlotFlag = 1
				end
			end
		end

		local numUnit = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_FIRE_THROWER"]);
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD"].ID)
			and csPlotFlag == 1
			and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
			and numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_FIRE_THROWER"].MaxPlayerInstances
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_FIRE_THROWER");
			local iUnit = GameInfoTypes[sUnitType];

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
			if goldCost then iCost = goldCost * 0.5 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				SPUE_Patronage_Serbia_Button.ToolTip = Locale.ConvertTextKey("TXT_KEY_SPUE_FIRE_THROWER_BUTTON", iCost)
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return false;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()

		-- 单位购买价格
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_FIRE_THROWER");
		local iUnit = GameInfoTypes[sUnitType];

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
		if goldCost then iCost = goldCost * 0.5 end
		;

		local NewUnit = player:InitUnit(iUnit, plotX, plotY, UNITAI_DEFENSE)
		if plot:GetNumUnits() > 2 then
			NewUnit:JumpToNearestValidPlot();
		end
		NewUnit:SetExperience(unitEXP)
		NewUnit:SetPromotionReady(true)
		unit:SetMoves(0)
		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};
LuaEvents.UnitPanelActionAddin(SPUE_Patronage_Serbia_Button)

-- 海洋之火征集
SPUE_Patronage_OceanFire_Button = {
	Name = "Patronage Ocean Fire",
	Title = "TXT_KEY_SPUE_OCEAN_FIRE_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                         -- default is 200
	IconAtlas = "SPUE02_UNITS_ATLAS",            -- 45 and 64 variations required
	PortraitIndex = 27,
	ToolTip = "TXT_KEY_SPUE_OCEAN_FIRE_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		local flag = 0

		local numUnit = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_OCEAN_FIRE"]);
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD"].ID)
			and plot:IsCoastalLand()
			and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
			and numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_OCEAN_FIRE"].MaxPlayerInstances
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_OCEAN_FIRE");
			local iUnit = GameInfoTypes[sUnitType];

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
			if goldCost then iCost = goldCost * 0.5 end
			;


			if iCost > 0 and player:GetGold() >= iCost then
				SPUE_Patronage_OceanFire_Button.ToolTip = Locale.ConvertTextKey("TXT_KEY_SPUE_OCEAN_FIRE_BUTTON", iCost)
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local plotFlag, pPlot = FindOceanPlotForSeaUnits(unit);
		return plotFlag;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()
		-- 单位购买价格
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_OCEAN_FIRE");
		local iUnit = GameInfoTypes[sUnitType];

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);
		if goldCost then iCost = goldCost * 0.5 end
		;

		local plotFlag, pPlot = FindOceanPlotForSeaUnits(unit);
		if pPlot == nil then return end
		;
		local NewUnit = player:InitUnit(iUnit, pPlot:GetX(), pPlot:GetX(), UNITAI_DEFENSE)
		-- NewUnit:JumpToNearestValidPlot();
		NewUnit:SetExperience(unitEXP)
		NewUnit:SetPromotionReady(true)

		unit:SetMoves(0)
		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};
LuaEvents.UnitPanelActionAddin(SPUE_Patronage_OceanFire_Button)

-- 神机营征集
SPUE_TreasureFleet_LandInfantry_Button = {
	Name = "Patronage Land Infantry",
	Title = "TXT_KEY_SPUE_PATRONAGE_SHENJI_MUSKETEER_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                                         -- default is 200
	IconAtlas = "SPUE_UNITS_ATLAS",                              -- 45 and 64 variations required
	PortraitIndex = 58,
	ToolTip = "TXT_KEY_SPUE_PATRONAGE_SHENJI_MUSKETEER_BUTTON",  -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		if Teams[player:GetTeam()]:IsHasTech(GameInfoTypes["TECH_SONAR"]) then
			return false;
		end

		local flag = 0
		-- local numUnit = player:GetUnitClassCount(GameInfoTypes["UNITCLASS_SPUE_SHENJI_MUSKETEER"]);
		-- local numUnit = CountUnitsWithUniquePromotions(unit:GetOwner(),
		-- 		GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER1"].ID)
		-- 	+ CountUnitsWithUniquePromotions(unit:GetOwner(),
		-- 		GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID)
		-- 	+ CountUnitsWithUniquePromotions(unit:GetOwner(),
		-- 		GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER3"].ID)
		local numUnit = player:GetUnitCountFromHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER1"].ID) 
			+ player:GetUnitCountFromHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID)
			+ player:GetUnitCountFromHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER3"].ID)

		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_TREASURE_FLEET"].ID)
			and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
			and numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_SHENJI_MUSKETEER"].MaxPlayerInstances
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_SHENJI_MUSKETEER");
			local iUnit = GameInfoTypes[sUnitType];

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

			if goldCost then iCost = goldCost * 0.5 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				SPUE_TreasureFleet_LandInfantry_Button.ToolTip = Locale.ConvertTextKey(
				"TXT_KEY_SPUE_PATRONAGE_SHENJI_MUSKETEER_BUTTON", iCost)
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		return plotFlag;
		-- return false;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()

		-- 单位购买价格
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_SHENJI_MUSKETEER");
		local iUnit = GameInfoTypes[sUnitType];

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

		if goldCost then iCost = goldCost * 0.5 end
		;
		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		if pPlot == nil then return end
		;
		-- local newUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_SHENJI_MUSKETEER");
		local NewUnit = player:InitUnit(iUnit, pPlot:GetX(), pPlot:GetY(), UNITAI_DEFENSE)
		-- NewUnit:JumpToNearestValidPlot()
		NewUnit:SetExperience(unitEXP);
		NewUnit:SetPromotionReady(true);

		unit:SetMoves(0)

		if unit:GetOwner() == unit:GetPlot():GetOwner()
		then
			local Ccity = GetCloseCity(unit:GetOwner(), unit:GetPlot());
			if Ccity:IsCapital() or Ccity:IsOriginalMajorCapital() then
				NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER1"].ID, true);
			else
				NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID, true);
			end
		else
			NewUnit:SetHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER3"].ID, true);
		end

		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_TreasureFleet_LandInfantry_Button)

-- 征召护卫舰召集
SPUE_Patronage_Corvette_Button = {
	Name = "Patronage Corvette",
	Title = "TXT_KEY_SPUE_PATRONAGE_CORVETTE_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                                 -- default is 200
	IconAtlas = "SPUE_UNITS_ATLAS",                      -- 45 and 64 variations required
	PortraitIndex = 34,
	ToolTip = "TXT_KEY_SPUE_PATRONAGE_CORVETTE_BUTTON",  -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local plot = unit:GetPlot()
		local player = Players[unit:GetOwner()]
		local unitX = unit:GetX()
		local unitY = unit:GetY()

		if Teams[player:GetTeam()]:IsHasTech(GameInfoTypes["TECH_SONAR"]) then
			return false;
		end

		local flag = 0
		-- local numUnit = CountUnitsWithUniquePromotions(unit:GetOwner(),
		-- 	GameInfo.UnitPromotions["PROMOTION_SPUE_CORVETTE"].ID)
		local numUnit = player:GetUnitCountFromHasPromotion(
			GameInfo.UnitPromotions["PROMOTION_SPUE_CORVETTE"].ID)
		if unit:CanMove() and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_TREASURE_FLEET"].ID)
			and plot:IsAdjacentToLand() and Players[unit:GetOwner()]:GetCapitalCity() ~= nil
			and numUnit < GameInfo.UnitClasses["UNITCLASS_SPUE_CORVETTE"].MaxPlayerInstances
		then
			-- 单位购买价格
			local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_CORVETTE");
			local iUnit = GameInfoTypes[sUnitType];

			local iCost = -1;
			local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

			print("goldCost=" .. goldCost)

			if goldCost then iCost = goldCost * 0.5 end
			;

			if iCost > 0 and player:GetGold() >= iCost then
				SPUE_Patronage_Corvette_Button.ToolTip = Locale.ConvertTextKey("TXT_KEY_SPUE_PATRONAGE_CORVETTE_BUTTON",
					iCost)
				flag = TroopsLeftFlag(player, 1);
			end
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return false;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local plotX = unit:GetX()
		local plotY = unit:GetY()
		local player = Players[unit:GetOwner()]
		local unitEXP = unit:GetExperience()
		-- 单位购买价格
		local sUnitType = GetCivSpecificUnit(player, "UNITCLASS_SPUE_CORVETTE");
		local iUnit = GameInfoTypes[sUnitType];

		local iCost = -1;
		local goldCost = SPUE_UnitPurchaseCost(player, iUnit);

		if goldCost then iCost = goldCost * 0.5 end
		;

		local NewUnit = player:InitUnit(iUnit, plotX, plotY, UNITAI_DEFENSE)
		if plot:GetNumUnits() > 2 then
			NewUnit:JumpToNearestValidPlot();
		end
		NewUnit:SetExperience(unitEXP);
		NewUnit:SetPromotionReady(true);


		unit:SetMoves(0)

		Events.AudioPlay2DSound("AS2D_INTERFACE_BUY_TILE");

		if iCost and iCost > 0 then
			player:ChangeGold(-iCost)
		end
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Patronage_Corvette_Button)
--------------------------------------------------------------
-- 商业单位永备化按钮
--------------------------------------------------------------
--------------------------------------------------------------
-- 瓦兰吉佣兵永备化成为瓦兰吉卫队
--------------------------------------------------------------
SPUE_Varangian_Button = {
	Name = "Varangian Guard",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "promoVP_atlas_00",                   -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		return EliteCondition(unit, VARANGIANID, "UNIT_SPUE_VARANGIAN", "UNIT_SPUE_VARANGIAN_GUARD",
			"UNITCLASS_SPUE_VARANGIAN", "PROJECT_SPUE_VARANGIAN_TRAINING", SPUE_Varangian_Button);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return EliteDisable(unit, VARANGIANGuardID, "UNITCLASS_SPUE_VARANGIAN", "PROJECT_SPUE_VARANGIAN_TRAINING");
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		EliteAction(unit, "UNIT_SPUE_VARANGIAN_GUARD", "UNITCLASS_SPUE_VARANGIAN")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Varangian_Button)
--------------------------------------------------------------
-- 热那亚弩手永备化成为朱斯蒂尼亚尼弩手
--------------------------------------------------------------
SPUE_Genoa_Button = {
	Name = "Genoa Guard",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "promoVP_atlas_00",                   -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		return EliteCondition(unit, unitPromotionGenoaID, "UNIT_SPUE_GENOAXBOW", "UNIT_SPUE_GENOAXBOW_ELITE",
			"UNITCLASS_SPUE_GENOAXBOW", "PROJECT_SPUE_GENOAXBOW_TRAINING", SPUE_Genoa_Button);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return EliteDisable(unit, unitPromotionGenoaEliteID, "UNITCLASS_SPUE_GENOAXBOW",
			"PROJECT_SPUE_GENOAXBOW_TRAINING");
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		EliteAction(unit, "UNIT_SPUE_GENOAXBOW_ELITE", "UNITCLASS_SPUE_GENOAXBOW")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Genoa_Button)
--------------------------------------------------------------
-- 瑞士佣兵永备化成为教皇近卫军
--------------------------------------------------------------
SPUE_Swiss_Button = {
	Name = "Swiss Guard",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "promoVP_atlas_00",                   -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		return EliteCondition(unit, unitPromotionSwissID, "UNIT_SPUE_SWISSGUARD", "UNIT_SPUE_SWISSGUARD_ELITE",
			"UNITCLASS_SPUE_SWISSGUARD", "PROJECT_SPUE_SWISSGUARD_TRAINING", SPUE_Swiss_Button);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return EliteDisable(unit, unitPromotionSwissEliteID, "UNITCLASS_SPUE_SWISSGUARD",
			"PROJECT_SPUE_SWISSGUARD_TRAINING");
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		EliteAction(unit, "UNIT_SPUE_SWISSGUARD_ELITE", "UNITCLASS_SPUE_SWISSGUARD")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Swiss_Button)
--------------------------------------------------------------
-- 意大利装甲骑兵永备化成为王家敕令骑士
--------------------------------------------------------------
SPUE_Elmeti_Button = {
	Name = "Elmeti Button",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "promoVP_atlas_00",                   -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		return EliteCondition(unit, unitPromotionElmetiID, "UNIT_SPUE_ELMETI", "UNIT_SPUE_ELMETI_ELITE",
			"UNITCLASS_SPUE_ELMETI", "PROJECT_SPUE_ELMETI_TRAINING", SPUE_Elmeti_Button);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return EliteDisable(unit, unitPromotionElmetiEliteID, "UNITCLASS_SPUE_ELMETI", "PROJECT_SPUE_ELMETI_TRAINING");
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		EliteAction(unit, "UNIT_SPUE_ELMETI_ELITE", "UNITCLASS_SPUE_ELMETI")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Elmeti_Button)
--------------------------------------------------------------
-- 黑森永备化成为巨人掷弹兵团
--------------------------------------------------------------
SPUE_Hessian_Button = {
	Name = "Hessian Button",
	Title = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                              -- default is 200
	IconAtlas = "promoVP_atlas_00",                   -- 45 and 64 variations required
	PortraitIndex = 49,
	ToolTip = "TXT_KEY_SPUE_VARANGIAN_GUARD_BUTTON",  -- or a TXT_KEY_ or a function

	Condition = function(action, unit)
		return EliteCondition(unit, unitPromotionHessianID, "UNIT_SPUE_HESSIAN", "UNIT_SPUE_HESSIAN_ELITE",
			"UNITCLASS_SPUE_HESSIAN", "PROJECT_SPUE_HESSIAN_TRAINING", SPUE_Hessian_Button);
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		return EliteDisable(unit, unitPromotionHessianEliteID, "UNITCLASS_SPUE_HESSIAN", "PROJECT_SPUE_HESSIAN_TRAINING");
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		EliteAction(unit, "UNIT_SPUE_HESSIAN_ELITE", "UNITCLASS_SPUE_HESSIAN")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_Hessian_Button)
--------------------------------------------------------------
-- 朱斯蒂尼亚尼弩手：千里驰援
--------------------------------------------------------------
SPUE_Genoa_Ship_Button = {
	Name = "Geona Ship",
	Title = "TXT_KEY_SPUE_GENOAXBOW_BUTTON_SHORT", -- or a TXT_KEY
	OrderPriority = 200,                        -- default is 200
	IconAtlas = "promoVP_atlas_00",             -- 45 and 64 variations required
	PortraitIndex = 37,
	ToolTip = "TXT_KEY_SPUE_GENOAXBOW_BUTTON",  -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local player = Players[unit:GetOwner()]
		local plot = unit:GetPlot()

		local flag = 0

		if unit:CanMove()
			-- and CountUnitsWithUniquePromotions(unit:GetOwner(), unitPromotionGenoaEliteID) > 0
			and player:GetUnitCountFromHasPromotion(unitPromotionGenoaEliteID) > 0
			and unit:GetDomainType() == DomainTypes.DOMAIN_SEA
			and plot:IsAdjacentToLand()
		then
			flag = 1
		end

		return flag == 1;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
		return plotFlag;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot();
		local player = Players[unit:GetOwner()];
		local unitX = unit:GetX();
		local unitY = unit:GetY();

		for iunit in player:Units() do
			if iunit:IsHasPromotion(unitPromotionGenoaEliteID) then
				local plotFlag, pPlot = FindCoastalPlotForLandUnits(unit);
				if pPlot == nil then return end
				;
				iunit:SetXY(pPlot:GetX(), pPlot:GetY());
				iunit:SetMoves(iunit:MovesLeft() + GameDefines["MOVE_DENOMINATOR"]);
				iunit:ChangeDamage(-10);
			end
			--   break;
		end

		unit:SetMoves(0)
	end
};
LuaEvents.UnitPanelActionAddin(SPUE_Genoa_Ship_Button)
--------------------------------------------------------------
-- 黑森：镇爆
--------------------------------------------------------------
SPUE_UnitRiotControlButton = {
	Name = "SPUE Riot Control",
	Title = "TXT_KEY_SP_BTNNOTE_UNIT_RIOT_CONTROL_SHORT",  -- or a TXT_KEY
	OrderPriority = 200,                                   -- default is 200
	IconAtlas = "SP_UNIT_ACTION_ATLAS",                    -- 45 and 64 variations required
	PortraitIndex = 9,
	ToolTip = "TXT_KEY_SP_BTNNOTE_UNIT_RIOT_CONTROL_HESSIAN", -- or a TXT_KEY_ or a function



	Condition = function(action, unit)
		local HessianFlag = false;
		if unit:CanMove() and unit:IsHasPromotion(unitPromotionHessianID) then
			HessianFlag = true;
		elseif unit:CanMove() and unit:IsHasPromotion(unitPromotionHessianEliteID) then
			SPUE_UnitRiotControlButton.ToolTip = "TXT_KEY_SP_BTNNOTE_UNIT_RIOT_CONTROL_HESSIAN_ELITE";
			HessianFlag = true;
		end

		return HessianFlag;
	end, -- or nil or a boolean, default is true

	Disabled = function(action, unit)
		local plot = unit:GetPlot();
		if not plot:IsCity() then return true end
		;
		local city = plot:GetPlotCity()
		return not city or city:GetOwner() ~= unit:GetOwner() or not city:IsResistance() or city:GetResistanceTurns() < 3;
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot()
		local city = plot:GetPlotCity()
		local player = Players[unit:GetOwner()]
		if not city then return end

		if unit:IsHasPromotion(unitPromotionHessianID) then
			city:ChangeResistanceTurns(-city:GetResistanceTurns());
			unit:Kill();
		elseif unit:IsHasPromotion(unitPromotionHessianEliteID) then
			unit:ChangeExperience(2 * city:GetResistanceTurns())
			city:ChangeResistanceTurns(-city:GetResistanceTurns())
			unit:SetMoves(0)
		end
		print("SPUE Riot Control!")
	end
};

LuaEvents.UnitPanelActionAddin(SPUE_UnitRiotControlButton);
--------------------------------------------------------------
-- 黑森：移民安置
--------------------------------------------------------------
HessianMissionButton = {
	Name = "Hessian enter city",
	Title = "TXT_KEY_SP_BTNNOTE_SETTLER_INTO_CITY_SHORT", -- or a TXT_KEY
	OrderPriority = 300,                               -- default is 200
	IconAtlas = "UNIT_ACTION_GOLD_ATLAS",              -- 45 and 64 variations required
	PortraitIndex = 40,
	ToolTip = "TXT_KEY_SP_BTNNOTE_SETTLER_INTO_CITY",  -- or a TXT_KEY_ or a function
	Condition = function(action, unit)
		return unit:CanMove() and unit:IsHasPromotion(unitPromotionHessianID) and unit:GetPlot():IsCity();
	end, -- or nil or a boolean, default is true
	Disabled = function(action, unit)
		local plot = unit:GetPlot();
		local city = plot:GetPlotCity()
		return not plot:IsCity() or city == nil or city:GetOwner() ~= unit:GetOwner() or
		city:IsHasBuilding(GameInfoTypes["BUILDING_NO_UTILITY_WARNING"]) or not city:IsCapital();
	end, -- or nil or a boolean, default is false

	Action = function(action, unit, eClick)
		local plot = unit:GetPlot();
		local city = plot:GetPlotCity()
		local player = Players[unit:GetOwner()]
		if not city then return end

		local count = 1;
		if player:HasPolicy(GameInfo.Policies["POLICY_RESETTLEMENT"].ID) and unit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SETTLER_POP_3"].ID) then
			count = 3;
		end

		city:ChangePopulation(count, true);
		if not (player:HasPolicy(GameInfo.Policies["POLICY_COLLECTIVE_RULE_FREE"].ID)) then
			city:SetFood(0);
		end

		unit:Kill();

		local text = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SETTLER_INTO_CITY", unit:GetName(), city:GetName())
		local heading = Locale.ConvertTextKey("TXT_KEY_SP_NOTIFICATION_SETTLER_INTO_CITY_SHORT", unit:GetName(),
			city:GetName())
		player:AddNotification(NotificationTypes.NOTIFICATION_CITY_GROWTH, text, heading, unit:GetX(), unit:GetY())
	end,
};
LuaEvents.UnitPanelActionAddin(HessianMissionButton);
--------------------------------------------------------------
-- 人类玩家无法通过城市建造仆从军/雇佣兵
--------------------------------------------------------------
local g_PatronageVassalUnitClassList = { "UNITCLASS_SPUE_CORVETTE",
	"UNITCLASS_SPUE_SHENJI_MUSKETEER",

	"UNITCLASS_SPUE_VASSAL_BOWMAN",
	"UNITCLASS_SPUE_SOCII_HASTATI",

	"UNITCLASS_SPUE_FIRE_THROWER",
	"UNITCLASS_SPUE_OCEAN_FIRE" }
function SPUE_Patronage_PlayerCanTrain(playerID, unitID)
	local player = Players[playerID];
	local playerTeam = Teams[player:GetTeam()];

	if player:IsHuman() then
		-- local unit = player:GetUnitByID(unitID);
		local vassalUnitsTable = g_PatronageVassalUnitClassList;
		local numVassalUnitClass = #vassalUnitsTable;

		for index = 1, numVassalUnitClass do
			local ivUnitType = GetCivSpecificUnit(player, vassalUnitsTable[index]);
			local ivUnit = GameInfo.Units[GameInfoTypes[ivUnitType]];
			if ivUnit.ID == unitID then
				return false;
			end
		end
	end
	--UNIQUE UNIT
	return true;
end

GameEvents.PlayerCanTrain.Add(SPUE_Patronage_PlayerCanTrain);
--------------------------------------------------------------
-- 政策代表单位升级后命名
--------------------------------------------------------------
-- MOD by CaptainCWB
function SetPolicyUnitsName(iPlayer, iOldUnit, iNewUnit)
	if Players[iPlayer] == nil or not Players[iPlayer]:IsAlive()
		or Players[iPlayer]:GetUnitByID(iOldUnit) == nil
		or Players[iPlayer]:GetUnitByID(iOldUnit):IsDead()
		or Players[iPlayer]:GetUnitByID(iOldUnit):IsDelayedDeath()
		or Players[iPlayer]:GetUnitByID(iOldUnit):HasName()
	then
		return;
	end
	local pUnit = Players[iPlayer]:GetUnitByID(iOldUnit);
	if pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_PRAETORIAN"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_PRAETORIAN"); -- 传统：禁卫军
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_WEIYANG"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_WEIYANG"); -- 传统：未央宫卫士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_KNIGHT_NEW"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_KNIGHT_NEW"); -- 自主：王城骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_YULIN_CAVALRY"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_YULIN_CAVALRY"); -- 荣誉：羽林骑军
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ROHAN_CAVALRY"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY"); -- 荣誉：洛汗骠骑
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_TEMPLAR"].ID)
		and pUnit:GetUnitCombatType() == GameInfoTypes.UNITCOMBAT_MELEE
	then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR"); -- 虔信：步行圣殿骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_TEMPLAR"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_KNIGHT_TEMPLAR"); -- 虔信：圣殿骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_TEUTONIC"].ID)
		and pUnit:GetUnitCombatType() == GameInfoTypes.UNITCOMBAT_MELEE
	then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR"); -- 虔信：步行条顿骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_TEUTONIC"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_KNIGHT_TEMPLAR"); -- 虔信：条顿骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_HOSPITALLER"].ID)
		and pUnit:GetUnitCombatType() == GameInfoTypes.UNITCOMBAT_MELEE
	then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR"); -- 虔信：步行医院骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FOOT_KNIGHT_HOSPITALLER"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_KNIGHT_TEMPLAR"); -- 虔信：医院骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_GENERAL_BODYGUARD"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_GENERAL_BODYGUARD"); -- 赞助：将领卫队
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VASSAL_BOWMAN"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_VASSAL_BOWMAN"); -- 赞助：克里特岛弓箭手
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SOCII_HASTATI"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_SOCII_HASTATI"); -- 赞助：同盟军团
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FIRE_THROWER"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FIRE_THROWER"); -- 赞助：拜占庭喷火兵
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD"].ID)
		and not pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD_ELITE"].ID)
	then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD"); -- 赞助：靖抚甲骑
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_BUCELLARII_GUARD_ELITE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD_ELITE"); -- 赞助：执政甲骑
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_OCEAN_FIRE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_OCEAN_FIRE");       -- 赞助：海洋之火
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_TREASURE_FLEET"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_TREASURE_FLEET");   -- 赞助：宝船
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER1"].ID) then
		pUnit:SetName("TXT_KEY_PROMOTION_SPUE_SHENJI_MUSKETEER1"); -- 赞助：神机营1
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER2"].ID) then
		pUnit:SetName("TXT_KEY_PROMOTION_SPUE_SHENJI_MUSKETEER2"); -- 赞助：神机营2
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SHENJI_MUSKETEER3"].ID) then
		pUnit:SetName("TXT_KEY_PROMOTION_SPUE_SHENJI_MUSKETEER3"); -- 赞助：神机营3
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_CORVETTE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_CORVETTE");         -- 赞助：护卫舰
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUCHUAN"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FUCHUAN"); -- 海事：福船
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_DVC_TANK"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_DVC_TANK"); -- 美学：达芬奇坦克
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SSPRIVATEER"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_SSPRIVATEER"); -- 商业：南洋海盗船
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_PRIVATEER"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_PRIVATEER"); -- 商业：私掠船
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FUNE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FUNE");  -- 商业：倭寇帆船
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_IRON_TROOP"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_IRON_TROOP"); -- 商业：铁人军
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_GENOAXBOW_ELITE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_GENOAXBOW_ELITE"); -- 商业：朱斯蒂尼亚尼弩手
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_GENOAXBOW"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_GENOAXBOW"); -- 商业：热那亚弩手
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD_ELITE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_SWISSGUARD_ELITE"); -- 商业：瑞士卫队
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_SWISSGUARD"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_SWISSGUARD"); -- 商业：瑞士佣兵
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN_GUARD"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD"); -- 商业：瓦兰吉卫队
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_VARANGIAN"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_VARANGIAN"); -- 商业：瓦兰吉佣兵
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ELMETI_ELITE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ELMETI_ELITE"); -- 商业：敕令骑士
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ELMETI"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ELMETI"); -- 商业：装甲骑兵
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_HESSIAN_ELITE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ELMETI_ELITE"); -- 商业：巨人掷弹兵
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_HESSIAN"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ELMETI"); -- 商业：黑森
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_ORDER_KV2"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_ORDER_KV2");   -- 秩序：KV2
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_FREEDOM_SPITFIRE"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE"); -- 自由：喷火
	elseif pUnit:IsHasPromotion(GameInfo.UnitPromotions["PROMOTION_SPUE_AUTOCRACY_PANZERG"].ID) then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_AUTOCRACY_PANZERG"); -- 独裁：装甲掷弹兵
	end

	if pUnit:GetUnitType() == GameInfoTypes.UNIT_SPUE_DVC_FIGHTER then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_DVC_FIGHTER"); -- 美学：达芬奇飞行器
	elseif pUnit:GetUnitType() == GameInfoTypes.UNIT_SPUE_DVC_MACHINEGUN then
		pUnit:SetName("TXT_KEY_UNIT_SPUE_DVC_MACHINEGUN"); -- 美学：达芬奇机关炮
	end
end

GameEvents.UnitUpgraded.Add(SetPolicyUnitsName);
