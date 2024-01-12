--==========================================================================================================================
-- Unit_FreePromotions
--==========================================================================================================================
-- 玄甲军：晋升、图标与战斗力
INSERT OR REPLACE INTO Unit_FreePromotions
			(UnitType ,						PromotionType)
VALUES		('UNIT_ELITE_RIDER',			'PROMOTION_ARMOR_PLATING_I'),
			('UNIT_ELITE_RIDER',			'PROMOTION_ARMOR_PLATING_II');

--普通导弹及飞毛腿导弹不可被拦截
-- INSERT OR REPLACE INTO Unit_FreePromotions
-- 			(UnitType ,						PromotionType)
-- VALUES		('UNIT_GUIDED_MISSILE',			'PROMOTION_SPUE_EVASION_III');
-- 			('UNIT_ASSYRIAN_SCUD_MISSILE',	'PROMOTION_SPUE_EVASION_III');
--==========================================================================================================================
-- Unit_Flags
--==========================================================================================================================
UPDATE Units SET UnitFlagAtlas = 'SPUnitFlags_FLAG',				UnitFlagIconOffset = 10 	WHERE Type = 'UNIT_ELITE_RIDER';				-- 玄甲军
UPDATE Units SET UnitFlagAtlas = 'SPUE_PIST_FLAG_ATLAS',			UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_BOMBARD';					-- 火枪骑兵
UPDATE Units SET UnitFlagAtlas = 'SPUE_UNIT_FLAG_ATLAS', 			UnitFlagIconOffset = 6 		WHERE Type = 'UNIT_RIFLEMAN';					-- 线列步兵
UPDATE Units SET UnitFlagAtlas = 'SPUE_UNIT_FLAG_ATLAS', 			UnitFlagIconOffset = 8 		WHERE Type = 'UNIT_CANNON';						-- 加农炮
UPDATE Units SET UnitFlagAtlas = 'SPUE_CULV_FLAG_ATLAS', 			UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_CULVERIN';					-- 长管炮(重炮)
UPDATE Units SET UnitFlagAtlas = 'SPUE_FALC_FLAG_ATLAS', 			UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_VOLLEY_GUN';					-- 鹰炮
UPDATE Units SET UnitFlagAtlas = 'SPUE_HCAV_FLAG_ATLAS', 			UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_HORSEMAN';					-- 重骑兵
UPDATE Units SET UnitFlagAtlas = 'SPUE_UNIT_FLAG_ATLAS', 			UnitFlagIconOffset = 5 		WHERE Type = 'UNIT_KNIGHT';						-- 具装骑兵
UPDATE Units SET UnitFlagAtlas = 'SPUE_WWII_FLAG_ATLAS', 			UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_GREAT_WAR_INFANTRY';			-- 一战步兵
UPDATE Units SET UnitFlagAtlas = 'UNIT_FLAG_ATLAS', 				UnitFlagIconOffset = 76 	WHERE Type = 'UNIT_SAM_INFANTRY';				-- 步兵支援装甲车
UPDATE Units SET UnitFlagAtlas = 'SPUE_OTTOMAN_FLAG_ATLAS',  		UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_OTTOMAN_PRIVATEER';			-- 奥斯曼私掠舰
UPDATE Units SET UnitFlagAtlas = 'UNIT_SPUE_PERSIAQ_FLAG_ATLAS', 	UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_OTTOMAN_SIPAHI';				-- 波斯奇兹尔巴什骑兵
UPDATE Units SET UnitFlagAtlas = 'SPUE_GERMAN_FLAG_ATLAS',  		UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_GERMAN_LONGSWORDSMAN';		-- 双薪剑士
UPDATE Units SET UnitFlagAtlas = 'SPUE_TANK_FLAG_ATLAS',  			UnitFlagIconOffset = 0 		WHERE Type = 'UNIT_TANK';						-- 坦克
--==========================================================================================================================
-- Unit_Icons
--==========================================================================================================================
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 6 			WHERE Type = 'UNIT_MUSKETMAN';					-- 火枪手
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 39 			WHERE Type = 'UNIT_BOMBARD';					-- 火枪骑兵
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 31 			WHERE Type = 'UNIT_RIFLEMAN';					-- 线列步兵
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 2 			WHERE Type = 'UNIT_CANNON';						-- 加农炮
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 22 			WHERE Type = 'UNIT_CULVERIN';					-- 长管炮(重炮)
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 35 			WHERE Type = 'UNIT_VOLLEY_GUN';					-- 鹰炮
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 26 			WHERE Type = 'UNIT_MEDIEVAL_CHARIOT';			-- 弓骑兵
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 63 			WHERE Type = 'UNIT_HORSEMAN';					-- 重骑兵
UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 					PortraitIndex = 61 			WHERE Type = 'UNIT_KNIGHT';						-- 具装骑兵
UPDATE Units SET IconAtlas = 'UNIT_ATLAS_2',						PortraitIndex = 29 			WHERE Type = 'UNIT_SAM_INFANTRY';				-- 步兵支援装甲车

UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 0 			WHERE Type = 'UNIT_GERMAN_LONGSWORDSMAN';		-- 双薪剑士
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 1 			WHERE Type = 'UNIT_AZTEC_EAGLE';				-- 雄鹰武士
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 2 			WHERE Type = 'UNIT_OTTOMAN_PRIVATEER';			-- 奥斯曼私掠舰
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 3 			WHERE Type = 'UNIT_SONGHAI_EXPEDITION_FLEET';	-- 远征舰队
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 4 			WHERE Type = 'UNIT_IROQUOIAN_MUSKETEER';		-- 易洛魁火枪手
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 5 			WHERE Type = 'UNIT_MILITIA_MODERN';				-- 现代民兵
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 6 			WHERE Type = 'UNIT_TANK_DESTROYER';				-- 坦克歼击车
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 7 			WHERE Type = 'UNIT_MOTORISED_INFANTRY';			-- 摩托化步兵
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 8 			WHERE Type = 'UNIT_TANK';						-- 坦克
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 9 			WHERE Type = 'UNIT_ENGLISH_SHIPOFTHELINE';		-- 主力舰
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 10 			WHERE Type = 'UNIT_POLISH_PZL23';				-- PZL23
UPDATE Units SET IconAtlas = 'SPUE02_UNITS_ATLAS', 					PortraitIndex = 12 			WHERE Type = 'UNIT_EGYPTAIN_MAMLUK';			-- 马穆鲁克
--==========================================================================================================================
-- Unit_Misc
--==========================================================================================================================
-- 玄甲军55力
UPDATE Units SET Combat = 55 WHERE Type = 'UNIT_ELITE_RIDER';
-- 弓骑兵过期时间调整
UPDATE Units SET ObsoleteTech = 'TECH_CHIVALRY' WHERE Type = 'UNIT_MEDIEVAL_CHARIOT';
-- 火枪骑兵科技挪到冶金
UPDATE Units SET PrereqTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_BOMBARD';
-- 怯薛Class变化
UPDATE Units SET Class = 'UNITCLASS_SPUE_MOUNTEDXBOW', PrereqTech = 'TECH_CHIVALRY', RangedCombat = 20, Combat = 30, ObsoleteTech = 'TECH_METALLURGY' WHERE Type = 'UNIT_MONGOLIAN_KESHIK';
-- 自由佣兵一格射程
UPDATE Units SET RangedCombat = 28, Range = 1 WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
-- 重骑兵说明更新
UPDATE Units SET Description = 'TXT_KEY_UNIT_SPUE_HEAVY_CAVALRY_ANCIENT' WHERE Type = 'UNIT_HORSEMAN';
-- 具装骑兵说明更新
UPDATE Units SET Description = 'TXT_KEY_UNIT_SPUE_HEAVY_CAVALRY', Civilopedia = 'TXT_KEY_CIV5_SPUE_HEAVY_CAVALRY_TEXT' WHERE Type = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- UnitClasses
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit)
VALUES	('UNITCLASS_SPUE_TOWEREDSHIP',		'TXT_KEY_UNIT_SPUE_TOWEREDSHIP',	'UNIT_SPUE_TOWEREDSHIP'),	-- 楼船
		('UNITCLASS_SPUE_ZHANCHE',			'TXT_KEY_UNIT_SPUE_ZHANCHE',		'UNIT_SPUE_ZHANCHE'),		-- 驷马战车
		('UNITCLASS_SPUE_REITER',			'TXT_KEY_UNIT_SPUE_REITER',			'UNIT_SPUE_REITER'),		-- 黑骑士
		('UNITCLASS_SPUE_CUIRASSIER',		'TXT_KEY_UNIT_SPUE_CUIRASSIER',		'UNIT_SPUE_CUIRASSIER'),	-- 胸甲骑兵
		('UNITCLASS_SPUE_MOUNTEDXBOW',		'TXT_KEY_UNIT_SPUE_MOUNTEDXBOW',	'UNIT_SPUE_MOUNTEDXBOW'),	-- 重装骑射手
		('UNITCLASS_SPUE_BOMBARD',			'TXT_KEY_UNIT_SPUE_BOMBARD',		'UNIT_SPUE_BOMBARD'),		-- 射石臼炮
		('UNITCLASS_SPUE_MORTAR',			'TXT_KEY_UNIT_SPUE_MORTAR',			'UNIT_SPUE_MORTAR'),		-- 臼炮
		('UNITCLASS_SPUE_FIELDGUN',			'TXT_KEY_UNIT_SPUE_FIELDGUN',		'UNIT_SPUE_FIELDGUN'),		-- 野战炮
		('UNITCLASS_SPUE_IRONCLAD',			'TXT_KEY_UNIT_SPUE_IRONCLAD',		'UNIT_SPUE_IRONCLAD'),		-- 蒸汽风帆铁甲舰
		('UNITCLASS_SPUE_FRIGATE',			'TXT_KEY_UNIT_SPUE_FRIGATE',		'UNIT_SPUE_FRIGATE'),		-- 蒸汽风帆护卫舰
		('UNITCLASS_SPUE_ARMORED_CAR',		'TXT_KEY_UNIT_SPUE_ARMORED_CAR',	'UNIT_SPUE_ARMORED_CAR'),	-- 轻型装甲车
		('UNITCLASS_SPUE_TORPEDOBOAT',		'TXT_KEY_UNIT_SPUE_TORPEDOBOAT',	'UNIT_SPUE_TORPEDOBOAT');	-- 鱼雷艇
--==========================================================================================================================	
-- UnitClasses - MaxPlayerInstances
--==========================================================================================================================
UPDATE UnitClasses SET MaxPlayerInstances = 5 WHERE Type = 'UNITCLASS_SPUE_TORPEDOBOAT';	-- 鱼雷艇
--==========================================================================================================================	
-- Civilization_UnitClassOverrides
--==========================================================================================================================
-- 怯薛Class变化为重甲骑射手
UPDATE Civilization_UnitClassOverrides SET UnitClassType = 'UNITCLASS_SPUE_MOUNTEDXBOW' WHERE UnitType = 'UNIT_MONGOLIAN_KESHIK';	
--==========================================================================================================================	
-- Units
--==========================================================================================================================
-- 楼船
INSERT INTO Units 	
		(Type, 						Class, 						  	PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass,				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,    	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_TOWEREDSHIP', 	'UNITCLASS_SPUE_TOWEREDSHIP', 	PrereqTech, 				45,				75,		  	2, 	 	ExtraMaintenanceCost,	Special, Cost * 125 / 100, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, 5,   	  	'UNITCOMBAT_NAVALRANGED', 	Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_TOWEREDSHIP',	'TXT_KEY_CIV5_SPUE_TOWEREDSHIP_TEXT', 	'TXT_KEY_PROMOTION_NAVAL_RANGED_SHIP_STRATEGY', 	Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_GUILDS',   	XPValueAttack, XPValueDefense, 'UNITCLASS_GREAT_GALLEASS', 'ART_DEF_UNIT_SPUE_TOWEREDSHIP',		1,					'SPUE_UNIT_FLAG_ATLAS',		1,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_TRIREME';
-- 驷马战车
INSERT INTO Units 	
		(Type, 						Class, 					  	  	PrereqTech, 				RangedCombat,	Combat,   	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_ZHANCHE', 		'UNITCLASS_SPUE_ZHANCHE', 	  	PrereqTech, 				0,				26,	  	  	0, 	 	ExtraMaintenanceCost,	Special, Cost,  			FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, 4,   	  	'UNITCOMBAT_MOUNTED', 		Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ZHANCHE',		'TXT_KEY_CIV5_SPUE_ZHANCHE_TEXT', 		'TXT_KEY_SP_UNITS_HEAVY_MOBILE_UNITS_STRATEGY', 	'TXT_KEY_PROMOTION_KNIGHT_COMBAT_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_CHIVALRY', 	XPValueAttack, XPValueDefense, 'UNITCLASS_KNIGHT', 	  		'ART_DEF_UNIT_SPUE_ZHANCHE',		0,					'SPUE_UNIT_FLAG_ATLAS',		0,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_CHARIOT_ARCHER';			
-- 黑骑士			
INSERT INTO Units 				
		(Type, 						Class, 					 		PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_REITER', 		'UNITCLASS_SPUE_REITER', 		'TECH_CHEMISTRY', 			40,				40,			1, 		ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, 4,			'UNITCOMBAT_MOUNTED', 		Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_REITER',		'TXT_KEY_CIV5_SPUE_REITER_TEXT', 		'TXT_KEY_SP_UNITS_HEAVY_MOBILE_UNITS_STRATEGY', 	'TXT_KEY_PROMOTION_KNIGHT_COMBAT_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', 	XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_CUIRASSIER', 'ART_DEF_UNIT_REITER',				2,					'SPUE_UNIT_FLAG_ATLAS',		4,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_KNIGHT';			
-- 胸甲骑兵			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_CUIRASSIER', 	'UNITCLASS_SPUE_CUIRASSIER', 	'TECH_RIFLING', 			RangedCombat, 	65, 		Range, 	ExtraMaintenanceCost,	Special, Cost + 10, 		FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, 4,   		CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_CUIRASSIER',	'TXT_KEY_CIV5_SPUE_CUIRASSIER_TEXT', 	'TXT_KEY_SP_UNITS_HEAVY_MOBILE_UNITS_STRATEGY', 	'TXT_KEY_PROMOTION_KNIGHT_COMBAT_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_COMBUSTION', 	XPValueAttack, XPValueDefense, 'UNITCLASS_TANK', 			'ART_DEF_UNIT_SPUE_CUIRASSIER',		3,					'SPUE_UNIT_FLAG_ATLAS',		3,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_LANCER';			
-- 重装骑射手			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_MOUNTEDXBOW', 	'UNITCLASS_SPUE_MOUNTEDXBOW', 	'TECH_CHIVALRY', 			20, 			30, 		1, 		ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_MOUNTEDXBOW',	'TXT_KEY_CIV5_SPUE_MOUNTEDXBOW_TEXT', 	'TXT_KEY_SP_UNITS_LAND_HIT_AND_RUN_UNITS_STRATEGY', 'TXT_KEY_PROMOTION_HITANDRUN_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_METALLURGY', 	XPValueAttack, XPValueDefense, 'UNITCLASS_BOMBARD', 		'ART_DEF_UNIT_MOUNTEDXBOW',			0,					'SPUE_MOXB_FLAG_ATLAS',		9,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_MEDIEVAL_CHARIOT';			
-- 射石臼炮			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost, HurryCostModifier,  RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_BOMBARD', 		'UNITCLASS_SPUE_BOMBARD',		PrereqTech, 				RangedCombat, 	Combat, 	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_BOMBARD',		'TXT_KEY_CIV5_SPUE_BOMBARD_TEXT', 		Strategy, 											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_MORTAR', 	'ART_DEF_UNIT_SPUE_BOMBARD',		4,					'SPUE_UNIT_FLAG_ATLAS',		7,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_CULVERIN';			
-- 臼炮			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_MORTAR', 		'UNITCLASS_SPUE_MORTAR', 		PrereqTech, 				RangedCombat, 	Combat, 	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_MORTAR',		'TXT_KEY_CIV5_SPUE_MORTAR_TEXT', 		Strategy, 											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,		XPValueAttack, XPValueDefense, 'UNITCLASS_HOWITZER', 		'ART_DEF_UNIT_SPUE_MORTAR',			0,					'SPUE_MORTAR_FLAG_ATLAS',	37,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_CANNON';			
-- 野战炮			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,  	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_FIELDGUN', 		'UNITCLASS_SPUE_FIELDGUN', 		PrereqTech, 				RangedCombat, 	Combat, 	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,  	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FIELDGUN',	'TXT_KEY_CIV5_SPUE_FIELDGUN_TEXT', 		Strategy, 											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	'ART_DEF_UNIT_SPUE_VP_FIELDGUN',	0,					'SPUE_VPFG_FLAG_ATLAS',		11,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_HOWITZER';			
-- 蒸汽风帆铁甲舰			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_IRONCLAD', 		'UNITCLASS_SPUE_IRONCLAD', 		'TECH_STEAM_POWER', 		180, 			100, 		Range, 	ExtraMaintenanceCost,	Special, Cost * 80 / 100, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_IRONCLAD',	'TXT_KEY_CIV5_SPUE_IRONCLAD_TEXT', 		'TXT_KEY_PROMOTION_NAVAL_RANGED_SHIP_STRATEGY', 	'TXT_KEY_PROMOTION_NAVAL_RANGED_SHIP_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	'ART_DEF_UNIT_SPUE_IRONCLAD',		9,					'SPUE_UNIT_FLAG_ATLAS',		12,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_PROTECTED_CRUISER';			
-- 蒸汽风帆护卫舰			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_FRIGATE', 		'UNITCLASS_SPUE_FRIGATE', 		'TECH_STEAM_POWER', 		RangedCombat, 	140, 		Range, 	ExtraMaintenanceCost,	Special, Cost * 80 / 100, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FRIGATE',		'TXT_KEY_CIV5_SPUE_FRIGATE_TEXT', 		Strategy, 											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_FRIGATE',	'ART_DEF_UNIT_SPUE_FRIGATE',		0,					'SPUE_STEAMF_FLAG_ATLAS',	13,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_IRONCLAD';			
-- 轻型装甲车			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_ARMORED_CAR', 	'UNITCLASS_SPUE_ARMORED_CAR', 	'TECH_COMBUSTION', 			RangedCombat, 	Combat, 	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   	CombatClass, 				Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ARMORED_CAR',	'TXT_KEY_CIV5_SPUE_ARMORED_CAR_TEXT', 	Strategy, 											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	'ART_DEF_UNIT_SPUE_ARMORED_CAR',	0,					'SPUE_VPAC_FLAG_ATLAS',		15,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_CRUISER_TANK';			
-- 鱼雷艇			
INSERT INTO Units 				
		(Type, 						Class, 							PrereqTech, 				RangedCombat,	Combat,	  	Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, MoveAfterPurchase, CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,											Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_TORPEDOBOAT', 	'UNITCLASS_SPUE_TORPEDOBOAT', 	'TECH_INDUSTRIALIZATION', 	180, 			90, 		Range, 	ExtraMaintenanceCost,	Special, Cost / 2, 			FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, 20,	1,   			   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_TORPEDOBOAT',	'TXT_KEY_CIV5_SPUE_TORPEDOBOAT_TEXT', 	Strategy, 											Help, 										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass,	'ART_DEF_UNIT_SPUE_TORPEDOBOAT',	11,					'SPUE_UNIT_FLAG_ATLAS',		14,				'SPUE_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_SUBMARINE';	
--==========================================================================================================================
-- Unit_GoodyHutUpgradeUnitClass
--==========================================================================================================================
UPDATE Units 	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SPUE_MOUNTEDXBOW' WHERE Class = 'UNITCLASS_MEDIEVAL_CHARIOT';							-- 弓骑兵->重装骑射手
UPDATE Units	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SPUE_BOMBARD'		WHERE Class = 'UNITCLASS_TREBUCHET';								-- 投石机->射石炮
UPDATE Units	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SPUE_FIELDGUN'	WHERE Class = 'UNITCLASS_CANNON' AND Type <> 'UNIT_FRANCE_BATTERY';	-- 加农炮->野战炮

--Trigger
CREATE TRIGGER SPUE_MOUNTEDXBOW
AFTER INSERT ON Units
WHEN 'UNITCLASS_MEDIEVAL_CHARIOT' = NEW.Class
BEGIN
	UPDATE Units 	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SPUE_MOUNTEDXBOW' WHERE Type = NEW.Type AND Type;
END;
CREATE TRIGGER SPUE_TREBUCHET
AFTER INSERT ON Units
WHEN 'UNITCLASS_TREBUCHET' = NEW.Class
BEGIN
	UPDATE Units 	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SPUE_BOMBARD'		WHERE Type = NEW.Type;
END;
CREATE TRIGGER SPUE_CANNON
AFTER INSERT ON Units
WHEN 'UNITCLASS_CANNON' = NEW.Class
BEGIN
	UPDATE Units	SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SPUE_FIELDGUN'	WHERE Type = NEW.Type AND Type <> 'UNIT_FRANCE_BATTERY';
END;
--==========================================================================================================================	
-- Unit_ClassUpgrades
--==========================================================================================================================
UPDATE Unit_ClassUpgrades	SET UnitClassType = 'UNITCLASS_SPUE_BOMBARD'		WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_TREBUCHET');									-- 投石机->射石炮
UPDATE Unit_ClassUpgrades	SET UnitClassType = 'UNITCLASS_SPUE_FIELDGUN'		WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CANNON' AND Type <> 'UNIT_FRANCE_BATTERY');	-- 加农炮->野战炮
UPDATE Unit_ClassUpgrades	SET UnitClassType = 'UNITCLASS_SPUE_MOUNTEDXBOW'	WHERE UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MEDIEVAL_CHARIOT');							-- 弓骑兵->重装骑射手

--Trigger
CREATE TRIGGER SPUE_TREBUCHET_UPGRADE
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_TREBUCHET')
BEGIN
	UPDATE Unit_ClassUpgrades	SET UnitClassType = 'UNITCLASS_SPUE_BOMBARD'		WHERE UnitType = NEW.UnitType;
END;
CREATE TRIGGER SPUE_CANNON_UPGRADE
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CANNON')
BEGIN
	UPDATE Unit_ClassUpgrades	SET UnitClassType = 'UNITCLASS_SPUE_FIELDGUN'		WHERE UnitType = NEW.UnitType AND UnitType <> 'UNIT_FRANCE_BATTERY';
END;
CREATE TRIGGER SPUE_MEDIEVAL_CHARIOT_UPGRADE
AFTER INSERT ON Unit_ClassUpgrades
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_MEDIEVAL_CHARIOT')
BEGIN
	UPDATE Unit_ClassUpgrades	SET UnitClassType = 'UNITCLASS_SPUE_MOUNTEDXBOW'	WHERE UnitType = NEW.UnitType;
END;

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_TOWEREDSHIP',	'UNITCLASS_GREAT_GALLEASS'),
		('UNIT_SPUE_ZHANCHE',		'UNITCLASS_KNIGHT'),
		('UNIT_SPUE_REITER',		'UNITCLASS_SPUE_CUIRASSIER'),
		('UNIT_SPUE_CUIRASSIER',	'UNITCLASS_TANK'),
		('UNIT_SPUE_MOUNTEDXBOW',	'UNITCLASS_BOMBARD'),
		('UNIT_SPUE_BOMBARD',		'UNITCLASS_SPUE_MORTAR'),
		('UNIT_SPUE_MORTAR',		'UNITCLASS_HOWITZER'),
		('UNIT_SPUE_FIELDGUN',		'UNITCLASS_ARTILLERY'),
		('UNIT_SPUE_IRONCLAD',		'UNITCLASS_HEAVY_CRUISER'),
		('UNIT_SPUE_FRIGATE',		'UNITCLASS_DESTROYER'),
		('UNIT_SPUE_ARMORED_CAR',	'UNITCLASS_HELICOPTER_GUNSHIP'),
		('UNIT_SPUE_TORPEDOBOAT',	'UNITCLASS_NUCLEAR_SUBMARINE');
--==========================================================================================================================
-- Unit_FreePromotions
--==========================================================================================================================
-- 直射火力无需准备
-- FreePromotion
DELETE FROM Unit_FreePromotions
WHERE UnitType 
IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CULVERIN') AND PromotionType = 'PROMOTION_MUST_SET_UP';

-- Trigger
CREATE TRIGGER SPUE_CULVERIN_FreePromotions
AFTER INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CULVERIN')
BEGIN
	DELETE FROM Unit_FreePromotions
	WHERE UnitType = NEW.UnitType AND PromotionType = 'PROMOTION_MUST_SET_UP';
END;

-- FreePromotion
DELETE FROM Unit_FreePromotions 
WHERE UnitType 
IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CANNON') AND PromotionType = 'PROMOTION_MUST_SET_UP';

-- Trigger
CREATE TRIGGER SPUE_CANNON_FreePromotions
AFTER INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_CANNON')
BEGIN
	DELETE FROM Unit_FreePromotions
	WHERE UnitType = NEW.UnitType AND PromotionType = 'PROMOTION_MUST_SET_UP';
END;

-- 列车炮无需架设
DELETE FROM Unit_FreePromotions
WHERE UnitType 
IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_RAILROAD_GUN') AND PromotionType = 'PROMOTION_MUST_SET_UP';

-- Trigger
CREATE TRIGGER SPUE_RAILROAD_FreePromotions
AFTER INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_RAILROAD_GUN')
BEGIN
	DELETE FROM Unit_FreePromotions
	WHERE UnitType = NEW.UnitType AND PromotionType = 'PROMOTION_MUST_SET_UP';
END;

-- 火箭炮无需架设
-- FreePromotion
DELETE FROM Unit_FreePromotions
WHERE UnitType 
IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_KATYUSHA') AND PromotionType = 'PROMOTION_MUST_SET_UP';

-- Trigger
CREATE TRIGGER SPUE_KATYUSHA_FreePromotions
AFTER INSERT ON Unit_FreePromotions
WHEN NEW.UnitType IN (SELECT Type FROM Units WHERE Class = 'UNITCLASS_KATYUSHA')
BEGIN
	DELETE FROM Unit_FreePromotions
	WHERE UnitType = NEW.UnitType AND PromotionType = 'PROMOTION_MUST_SET_UP';
END;

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_TOWEREDSHIP', 	'PROMOTION_NAVAL_RANGED_SHIP'),
		('UNIT_SPUE_TOWEREDSHIP', 	'PROMOTION_OCEAN_IMPASSABLE'),
		('UNIT_SPUE_ZHANCHE', 		'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_ZHANCHE', 		'PROMOTION_SPUE_ZHANCHE'),
		('UNIT_SPUE_REITER', 		'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_REITER', 		'PROMOTION_SPUE_REITER'),
		('UNIT_SPUE_CUIRASSIER', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_MOUNTEDXBOW', 	'PROMOTION_HITANDRUN'),
		('UNIT_SPUE_BOMBARD', 		'PROMOTION_CITY_SIEGE'),
		('UNIT_SPUE_BOMBARD', 		'PROMOTION_MUST_SET_UP'),
		('UNIT_SPUE_BOMBARD', 		'PROMOTION_INDIRECT_FIRE'),
		('UNIT_SPUE_MORTAR', 		'PROMOTION_CITY_SIEGE'),
		('UNIT_SPUE_MORTAR', 		'PROMOTION_MUST_SET_UP'),
		('UNIT_SPUE_MORTAR', 		'PROMOTION_INDIRECT_FIRE'),
		('UNIT_FRANCE_BATTERY',		'PROMOTION_SPUE_ADJACENT_BONUS'),
		('UNIT_SPUE_FIELDGUN', 		'PROMOTION_CITY_SIEGE'),
		('UNIT_SPUE_FIELDGUN', 		'PROMOTION_POWERFUL_CANNON'),
		('UNIT_SPUE_IRONCLAD', 		'PROMOTION_NAVAL_RANGED_SHIP'),
		('UNIT_SPUE_IRONCLAD', 		'PROMOTION_SPUE_IRONCLAD'),
		('UNIT_SPUE_FRIGATE', 		'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_FRIGATE', 		'PROMOTION_SPUE_IRONCLAD'),
		('UNIT_SPUE_ARMORED_CAR', 	'PROMOTION_HITANDRUN'),
		('UNIT_SPUE_ARMORED_CAR', 	'PROMOTION_IGNORE_TERRAIN_COST'),
		('UNIT_SPUE_TORPEDOBOAT', 	'PROMOTION_NAVAL_HIT_AND_RUN'),
		('UNIT_SPUE_TORPEDOBOAT', 	'PROMOTION_OCEAN_IMPASSABLE'),
		('UNIT_SPUE_TORPEDOBOAT', 	'PROMOTION_HALF_CASUALTIES');
--==========================================================================================================================
-- UnitGameplay2DScripts
--==========================================================================================================================
INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_TOWEREDSHIP', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_TRIREME';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ZHANCHE',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CHARIOT_ARCHER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_REITER',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_CUIRASSIER',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LANCER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_MOUNTEDXBOW',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_BOMBARD',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CANNON';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_MORTAR',		 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CANNON';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FIELDGUN',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_HOWITZER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_IRONCLAD',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_PROTECTED_CRUISER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FRIGATE',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ARMORED_CAR', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CRUISER_TANK';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_TORPEDOBOAT', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SUBMARINE';
--==========================================================================================================================
-- Unit_AITypes
--==========================================================================================================================
INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_TOWEREDSHIP', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_VENETIAN_GALLEASS';	

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_ZHANCHE',	 UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_REITER',		 UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_CUIRASSIER',	 UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_MOUNTEDXBOW',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_BOMBARD';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_BOMBARD',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_MORTAR',			UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_FIELDGUN',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_HOWITZER';		

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_IRONCLAD',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_PROTECTED_CRUISER';	

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_FRIGATE',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_IRONCLAD';	

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_ARMORED_CAR',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CRUISER_TANK';	

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_TORPEDOBOAT',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SUBMARINE';	
--==========================================================================================================================
-- Unit_Flavors
--==========================================================================================================================
INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_TOWEREDSHIP', 	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNITCLASS_GREAT_GALLEASS';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_ZHANCHE',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_REITER',			FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_CUIRASSIER',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_MOUNTEDXBOW',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_BOMBARD';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_BOMBARD',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CANNON';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_MORTAR',			FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CANNON';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_FIELDGUN',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HOWITZER';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_IRONCLAD',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_PROTECTED_CRUISER';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_FRIGATE',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_IRONCLAD';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_ARMORED_CAR',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CRUISER_TANK';	

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_TORPEDOBOAT',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SUBMARINE';	
--==========================================================================================================================
-- Unit_ResourceQuantityRequirements
--==========================================================================================================================
INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_TOWEREDSHIP', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_TRIREME';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_ZHANCHE',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_REITER',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_CUIRASSIER',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_MOUNTEDXBOW',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MEDIEVAL_CHARIOT';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_BOMBARD',		 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_MORTAR',			 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_FIELDGUN',		 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_HOWITZER';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_IRONCLAD',		 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_PROTECTED_CRUISER';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_FRIGATE',		 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_IRONCLAD';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_ARMORED_CAR',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CRUISER_TANK';

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 					 ResourceType, Cost)
SELECT	'UNIT_SPUE_TORPEDOBOAT',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SUBMARINE';
--==========================================================================================================================
-- Unit_BuildingClassRequireds
--==========================================================================================================================
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_TOWEREDSHIP', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_TRIREME';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_ZHANCHE',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CHARIOT_ARCHER';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_REITER',		 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_CUIRASSIER',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_MOUNTEDXBOW',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MEDIEVAL_CHARIOT';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_BOMBARD',		 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CULVERIN';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_MORTAR',			 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_FIELDGUN',		 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_HOWITZER';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_IRONCLAD',		 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_PROTECTED_CRUISER';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_FRIGATE',		 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_IRONCLAD';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_ARMORED_CAR',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CRUISER_TANK';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					 BuildingClassType)
SELECT	'UNIT_SPUE_TORPEDOBOAT',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SUBMARINE';
--==========================================================================================================================
-- World Power Mod Compatibility
--==========================================================================================================================
UPDATE Units SET IconAtlas = 'SMAN_ESCORT_CARRIER_ATLAS', PortraitIndex = 0 WHERE Type = 'UNIT_ENTERPRISE'; -- 企业号
UPDATE Units SET IconAtlas = 'SMAN_ESCORT_CARRIER_ATLAS', PortraitIndex = 0 WHERE Type = 'UNIT_HORNET'; 	-- 企业号

UPDATE Units SET UnitFlagAtlas = 'SPUE_IRONP_FLAG_ATLAS', UnitFlagIconOffset = 0 WHERE Type = 'UNIT_IRON_BUDDHA';	-- 铁浮屠

CREATE TRIGGER SPUE_EXTENDED_Units
AFTER INSERT ON Units
WHEN 'UNIT_GREAT_DOCTOR' = NEW.Type
BEGIN
	UPDATE Units SET IconAtlas = 'SPUE_UNITS_ATLAS', 		  PortraitIndex = 2 WHERE Type = 'UNIT_CANNON'; 			-- 加农炮
	UPDATE Units SET IconAtlas = 'SMAN_ESCORT_CARRIER_ATLAS', PortraitIndex = 0 WHERE Type = 'UNIT_ENTERPRISE'; 		-- 企业号
	UPDATE Units SET IconAtlas = 'SMAN_ESCORT_CARRIER_ATLAS', PortraitIndex = 0 WHERE Type = 'UNIT_HORNET'; 			-- 企业号

	UPDATE Units SET UnitFlagAtlas = 'SPUE_TANK_FLAG_ATLAS',  UnitFlagIconOffset = 0 WHERE Type = 'UNIT_TANK';			-- 坦克
	UPDATE Units SET UnitFlagAtlas = 'SPUE_IRONP_FLAG_ATLAS', UnitFlagIconOffset = 0 WHERE Type = 'UNIT_IRON_BUDDHA';	-- 铁浮屠
END;