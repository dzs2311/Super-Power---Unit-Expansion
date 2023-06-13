--==========================================================================================================================	
-- 罗马禁卫军 -- 传统解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_PRAETORIAN',		'TXT_KEY_UNIT_SPUE_PRAETORIAN',		'UNIT_SPUE_PRAETORIAN',		1);
 
INSERT INTO Units 	
		(Type, 						Class, 						 PrereqTech, PolicyType,			RangedCombat,	Combat,	  	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts,	WorkRate)
SELECT	'UNIT_SPUE_PRAETORIAN', 	'UNITCLASS_SPUE_PRAETORIAN', PrereqTech, 'POLICY_TRADITION',	RangedCombat,	30,			Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, 3,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_PRAETORIAN',	'TXT_KEY_CIV5_SPUE_PRAETORIAN_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_PRAETORIAN_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_GUNPOWDER', 	XPValueAttack, XPValueDefense, 'UNITCLASS_MUSKETMAN', 	'ART_DEF_UNIT_SPUE_PRAETORIAN',	0,					'SPUE_PRAE_FLAG_ATLAS',	17,				'SPUE_UNITS_ATLAS',	1,				200
FROM Units WHERE Type = 'UNIT_SWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_PRAETORIAN',	'UNITCLASS_MUSKETMAN');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_PRAETORIAN', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_PRAETORIAN', 	'PROMOTION_SPUE_PRAETORIAN');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_PRAETORIAN',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_PRAETORIAN',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_PRAETORIAN',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_PRAETORIAN', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_PRAETORIAN',  ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SWORDSMAN';
--==========================================================================================================================	
-- 未央宫卫士 -- 传统解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,							Description,							DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_WEIYANG',		'TXT_KEY_UNIT_SPUE_WEIYANG',			'UNIT_SPUE_WEIYANG',		2);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,			RangedCombat,	Combat,	  	Range, ExtraMaintenanceCost,	Special, Cost, HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, Moves,  	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,						Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_WEIYANG', 	'UNITCLASS_SPUE_WEIYANG', 	PrereqTech, 'POLICY_TRADITION',	RangedCombat,	30,			Range, ExtraMaintenanceCost,	Special, -1,   HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, 3,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_WEIYANG',	'TXT_KEY_CIV5_SPUE_WEIYANG_TEXT', 	Strategy,	'TXT_KEY_UNIT_SPUE_WEIYANG_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_GUNPOWDER',	XPValueAttack, XPValueDefense, 'UNITCLASS_MUSKETMAN', 	'ART_DEF_UNIT_SPUE_HANGUARD',	0,					'SPUE_HANG_FLAG_ATLAS',		19,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_SWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_WEIYANG',		'UNITCLASS_MUSKETMAN');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_WEIYANG', 		'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_WEIYANG', 		'PROMOTION_SPUE_WEIYANG');

-- 没有未央宫则不可建造
--UPDATE Units
--SET Cost = -1, HurryCostModifier = -1
--WHERE Type = 'UNIT_SPUE_WEIYANG' AND NOT EXISTS (SELECT * FROM BuildingClasses WHERE Type='BUILDINGCLASS_WEIYANG_PALACE');
-- Trigger
UPDATE Units SET Cost = 60, HurryCostModifier = 33
WHERE Type = 'UNIT_SPUE_WEIYANG' AND EXISTS (SELECT * FROM BuildingClasses WHERE Type='BUILDINGCLASS_WEIYANG_PALACE');

CREATE TRIGGER SPUE_WEIYANG
AFTER INSERT ON BuildingClasses
WHEN NEW.Type ='BUILDINGCLASS_WEIYANG_PALACE'
BEGIN
	UPDATE Units SET Cost = 60, HurryCostModifier = 33 WHERE Type = 'UNIT_SPUE_WEIYANG';
END;

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_WEIYANG',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
VALUES	('UNIT_SPUE_WEIYANG', 	'BUILDINGCLASS_WEIYANG_PALACE');

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_WEIYANG',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_WEIYANG',	 UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_WEIYANG',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_WEIYANG',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SWORDSMAN';
--==========================================================================================================================	
-- 王城骑士 -- 自主解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_KNIGHT_NEW',		'TXT_KEY_UNIT_SPUE_KNIGHT_NEW',		'UNIT_SPUE_KNIGHT_NEW',		1);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, 				PolicyType,			RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,										Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_NEW', 	'UNITCLASS_SPUE_KNIGHT_NEW',	'TECH_HORSEBACK_RIDING', 	'POLICY_LIBERTY',	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_NEW',	'TXT_KEY_CIVILOPEDIA_UNITS_MEDIEVAL_KNIGHT_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_KNIGHT_NEW_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_KNIGHT_NEW',	0,					'SPUE_KNKN_FLAG_ATLAS',	32,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_KNIGHT_NEW',	'UNITCLASS_LANCER');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_KNIGHT_COMBAT'),
		-- ('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_CORPS_1'),
		('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_SPUE_KNIGHT_NEW'),
		('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_SPUE_KNIGHT_NEW_A'),
		('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_SPUE_KNIGHT_NEW_A000'),
		('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_SPUE_KNIGHT_NEW_B');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_KNIGHT_NEW',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_KNIGHT_NEW',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_KNIGHT_NEW',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_KNIGHT_NEW', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_KNIGHT_NEW',  ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- 采邑骑士 -- 自主解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit)
VALUES	('UNITCLASS_SPUE_KNIGHT_NEW1',		'TXT_KEY_UNIT_SPUE_KNIGHT_NEW1',	'UNIT_SPUE_KNIGHT_NEW1');

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, PolicyType,			RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,										Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 			UnitFlagIconOffset, UnitFlagAtlas,		PortraitIndex, 	IconAtlas,		NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_NEW1', 	'UNITCLASS_SPUE_KNIGHT_NEW1', 	PrereqTech, 'POLICY_LIBERTY',	RangedCombat,	Combat+4,	Range, ExtraMaintenanceCost,	Special, -1, 	0, 			HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_NEW1',	'TXT_KEY_CIVILOPEDIA_UNITS_MEDIEVAL_KNIGHT_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_KNIGHT_NEW1_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_KNIGHT',	25,					'UNIT_FLAG_ATLAS',	26,				'UNIT_ATLAS_1',	1
FROM Units WHERE Type = 'UNIT_HORSEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_KNIGHT_NEW1',	'UNITCLASS_LANCER');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_KNIGHT_NEW1', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_KNIGHT_NEW1', 	'PROMOTION_SPUE_KNIGHT_EXTRA');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				  BuildingClassType)
SELECT	'UNIT_SPUE_KNIGHT_NEW1',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_KNIGHT_NEW1',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				  UnitAIType)
SELECT	'UNIT_SPUE_KNIGHT_NEW1',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				 FlavorType, Flavor)
SELECT	'UNIT_SPUE_KNIGHT_NEW1', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_KNIGHT_NEW1', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- 涌泉守卫 -- 自主解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,								DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_GONDORGUARD',		'TXT_KEY_UNIT_SPUE_GONDORGUARD',			'UNIT_SPUE_GONDORGUARD',	4);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, PolicyType,			RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,	HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_GONDORGUARD', 	'UNITCLASS_SPUE_GONDORGUARD', 	PrereqTech, 'POLICY_LIBERTY',	RangedCombat,	35,		Range, ExtraMaintenanceCost,	Special, -1,		HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, 3,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GONDORGUARD',	'TXT_KEY_CIV5_SPUE_GONDORGUARD_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_GONDORGUARD_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_GUNPOWDER', 	XPValueAttack, XPValueDefense, 'UNITCLASS_MUSKETMAN', 	'ART_DEF_UNIT_SPUE_GONDORGUARD',	0,					'SPUE_GOND_FLAG_ATLAS',	24,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_SWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_GONDORGUARD',	'UNITCLASS_MUSKETMAN');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_GONDORGUARD', 		'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_GONDORGUARD', 		'PROMOTION_SPUE_GONDORGUARD');

-- 没有白城则不可建造
-- Trigger
UPDATE Units SET Cost = 65, HurryCostModifier = 33
WHERE Type = 'UNIT_SPUE_GONDORGUARD' AND EXISTS (SELECT * FROM BuildingClasses WHERE Type='BUILDINGCLASS_TIRITH');

CREATE TRIGGER SPUE_GONDORGUARD
AFTER INSERT ON BuildingClasses
WHEN NEW.Type ='BUILDINGCLASS_TIRITH'
BEGIN
	UPDATE Units SET Cost = 65, HurryCostModifier = 33 WHERE Type = 'UNIT_SPUE_GONDORGUARD';
END;

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 BuildingClassType)
SELECT	'UNIT_SPUE_GONDORGUARD',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	BuildingClassType)
VALUES	('UNIT_SPUE_GONDORGUARD', 	'BUILDINGCLASS_TIRITH');

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 	 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_GONDORGUARD',	 SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	 UnitAIType)
SELECT	'UNIT_SPUE_GONDORGUARD',	 UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_GONDORGUARD',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 ResourceType, Cost)
SELECT	'UNIT_SPUE_GONDORGUARD',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SWORDSMAN';
--==========================================================================================================================	
-- 羽林骑 -- 荣誉解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_YULIN_CAVALRY',	'TXT_KEY_UNIT_SPUE_YULIN_CAVALRY',	'UNIT_SPUE_YULIN_CAVALRY',	2);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, 				PolicyType,		RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,								Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_YULIN_CAVALRY', 	'UNITCLASS_SPUE_YULIN_CAVALRY', 'TECH_HORSEBACK_RIDING', 	'POLICY_HONOR',	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_YULIN_CAVALRY',	'TXT_KEY_CIV5_SPUE_YULIN_CAVALRY_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_YULIN_CAVALRY_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_YULIN_CAVALRY',	0,					'SPUE_YLCA_FLAG_ATLAS',	18,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_YULIN_CAVALRY',	'UNITCLASS_LANCER');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_YULIN_CAVALRY', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_YULIN_CAVALRY', 	'PROMOTION_SPUE_YULIN_CAVALRY');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_YULIN_CAVALRY',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_YULIN_CAVALRY',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_YULIN_CAVALRY', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_YULIN_CAVALRY', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_YULIN_CAVALRY', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- 洛汗骠骑 -- 荣誉解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ROHAN_CAVALRY',	'TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY',	'UNIT_SPUE_ROHAN_CAVALRY',	4);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, 				PolicyType,		RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 	HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY', 	'UNITCLASS_SPUE_ROHAN_CAVALRY', 'TECH_HORSEBACK_RIDING', 	'POLICY_HONOR',	RangedCombat,	30,		Range, ExtraMaintenanceCost,	Special, -1, 	HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY',	'TXT_KEY_CIV5_SPUE_ROHAN_CAVALRY_TEXT', Strategy, 	'TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_ROHAN_CAVALRY',	12,					'SPUE_UNIT_FLAG_ATLAS',	20,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_HORSEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_ROHAN_CAVALRY',	'UNITCLASS_KNIGHT');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_ROHAN_CAVALRY', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_ROHAN_CAVALRY', 	'PROMOTION_SPUE_ROHAN_CAVALRY');

-- 没有金殿则不可建造
UPDATE Units SET Cost = 110, HurryCostModifier = 33
WHERE Type = 'UNIT_SPUE_ROHAN_CAVALRY' AND EXISTS (SELECT * FROM BuildingClasses WHERE Type='BUILDINGCLASS_GOLDEN_MEDUSELD');
-- Trigger
CREATE TRIGGER SPUE_ROHAN_CAVALRY
AFTER INSERT ON BuildingClasses
WHEN NEW.Type = 'BUILDINGCLASS_GOLDEN_MEDUSELD'
BEGIN
	UPDATE Units SET Cost = 110, HurryCostModifier = 33 WHERE Type = 'UNIT_SPUE_ROHAN_CAVALRY';
END;

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
VALUES	('UNIT_SPUE_ROHAN_CAVALRY', 	'BUILDINGCLASS_GOLDEN_MEDUSELD');

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';

--==========================================================================================================================	
-- 福船 -- 海事解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FUCHUAN',			'TXT_KEY_UNIT_SPUE_FUCHUAN',		'UNIT_SPUE_FUCHUAN',		3);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,						Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 				UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FUCHUAN', 	'UNITCLASS_SPUE_FUCHUAN', 	PrereqTech, 'POLICY_EXPLORATION',	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FUCHUAN',	'TXT_KEY_CIV5_SPUE_FUCHUAN_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FUCHUAN_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FUCHUAN',	2,					'SPUE_UNIT_FLAG2_ATLAS',	21,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_FRIGATE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_FUCHUAN',		'UNITCLASS_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_FUCHUAN', 		'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_FUCHUAN', 		'PROMOTION_SPUE_FUCHUAN');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_FUCHUAN',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FUCHUAN',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_FUCHUAN',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_FUCHUAN',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FRIGATE';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_FUCHUAN',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FRIGATE';
--==========================================================================================================================	
-- 火帆船 -- 海事解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,					DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FIRESHIP',			'TXT_KEY_UNIT_SPUE_FIRESHIP',	'UNIT_SPUE_FIRESHIP',	10);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,	 ExtraMaintenanceCost,	Special, Cost, FaithCost,  	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   		MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,						Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, XPValueAttack, XPValueDefense, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,			NoMinorGifts, 	Suicide)
SELECT	'UNIT_SPUE_FIRESHIP', 	'UNITCLASS_SPUE_FIRESHIP', 	PrereqTech, 'POLICY_EXPLORATION', 	100,			100,	 ExtraMaintenanceCost,	Special, 100,  100,  		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves + 2,  	1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FIRESHIP',	'TXT_KEY_CIV5_SPUE_FIRESHIP_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FIRESHIP_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, XPValueAttack, XPValueDefense, 'ART_DEF_UNIT_SPUE_FIRESHIP',	0,					'SPUE_FIRE_SHIP_FLAG_ATLAS',	47,				'SPUE_UNITS_ATLAS',	1, 				1
FROM Units WHERE Type = 'UNIT_SLOOP_OF_WAR';

-- INSERT INTO Unit_ClassUpgrades 	
-- 		(UnitType, 				UnitClassType)
-- VALUES	('UNIT_SPUE_FIRESHIP',	'UNITCLASS_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_FIRESHIP', 		'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_FIRESHIP', 		'PROMOTION_SPUE_FIRESHIP');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				BuildingClassType)
SELECT	'UNIT_SPUE_FIRESHIP',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FIRESHIP',	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_FIRESHIP',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  FlavorType, Flavor)
SELECT	'UNIT_SPUE_FIRESHIP',	  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SLOOP_OF_WAR';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				ResourceType, Cost)
SELECT	'UNIT_SPUE_FIRESHIP',   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SLOOP_OF_WAR';
--==========================================================================================================================	
-- 热气球 -- 理性解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit)
VALUES	('UNITCLASS_SPUE_HOT_AIR_BALLOON',		'TXT_KEY_UNIT_SPUE_HOT_AIR_BALLOON',	'UNIT_SPUE_HOT_AIR_BALLOON');

INSERT INTO Units 	
		(Type, 							Class,								PrereqTech,			PolicyType,				RangedCombat,	Combat,	  Range, ExtraMaintenanceCost,	Special, Cost, HurryCostModifier,	FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass,				Domain,		 	DefaultUnitAI,		Description,							Civilopedia,								Strategy,								 Help,									   Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset,		UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
VALUES	('UNIT_SPUE_HOT_AIR_BALLOON', 	'UNITCLASS_SPUE_HOT_AIR_BALLOON',	'TECH_ASTRONOMY', 	'POLICY_RATIONALISM',	25,				25,		  1,	 5,						null,	  120,	33,					0,		   -1,							 6,		  'UNITCOMBAT_HELICOPTER', 'DOMAIN_LAND', 	'UNITAI_EXPLORE', 	'TXT_KEY_UNIT_SPUE_HOT_AIR_BALLOON',	'TXT_KEY_CIV5_SPUE_HOT_AIR_BALLOON_TEXT', 	'TXT_KEY_SP_UNITS_RECON_UNITS_STRATEGY', 'TXT_KEY_UNIT_SPUE_HOT_AIR_BALLOON_HELP', 1,		1,				 1,					 1,						-1,			10,				   0,				  100,		   null,		 3,				3,				null,					  'ART_DEF_UNIT_SPUE_HOT_AIR_BALLOON',	0,						'SPUE_BALLOON_FLAG_ATLAS',	29,				'SPUE_UNITS_ATLAS',	1);

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_HOT_AIR_BALLOON', 	'PROMOTION_HELI_ATTACK'),
		('UNIT_SPUE_HOT_AIR_BALLOON', 	'PROMOTION_SPUE_HOT_AIR_BALLOON_NEW'),
		('UNIT_SPUE_HOT_AIR_BALLOON', 	'PROMOTION_RECON_UNIT'),
		('UNIT_SPUE_HOT_AIR_BALLOON', 	'PROMOTION_RIVAL_TERRITORY'),
		('UNIT_SPUE_HOT_AIR_BALLOON', 	'PROMOTION_SELL_EXOTIC_GOODS');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 						BuildingClassType)
SELECT	'UNIT_SPUE_HOT_AIR_BALLOON',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_EXPLORERX';


INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_HOT_AIR_BALLOON',SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_EXPLORERX';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_HOT_AIR_BALLOON',UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_EXPLORERX';

INSERT INTO Unit_Flavors 	
		(UnitType, 						   FlavorType, Flavor)
SELECT	'UNIT_SPUE_HOT_AIR_BALLOON',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_EXPLORERX';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 						   ResourceType, Cost)
SELECT	'UNIT_SPUE_HOT_AIR_BALLOON',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_EXPLORERX';
--==========================================================================================================================	
-- 十字战车 -- 虔信解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_GREAT_CROSS',		'TXT_KEY_UNIT_SPUE_GREAT_CROSS',	'UNIT_SPUE_GREAT_CROSS',	3);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, PolicyType,		RangedCombat,	Combat,	  Range, ExtraMaintenanceCost,	Special, 	Cost, 	FaithCost, 	HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,  		MoveRate, CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_GREAT_CROSS', 	'UNITCLASS_SPUE_GREAT_CROSS', 	PrereqTech, 'POLICY_PIETY',	RangedCombat,	Combat,	  Range, ExtraMaintenanceCost,	null, 		150, 	150, 		10, 				RequiresFaithPurchaseEnabled, Moves + 2,   	MoveRate, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GREAT_CROSS',	'TXT_KEY_CIV5_SPUE_GREAT_CROSS_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_GREAT_CROSS_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_GREAT_CROSS',	0,					'SPUE_CROS_FLAG_ATLAS',	30,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_GREAT_GENERAL';

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_GREAT_CROSS', 	'PROMOTION_SPUE_GREAT_CROSS');

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_GREAT_CROSS',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GREAT_GENERAL';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_GREAT_CROSS',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GREAT_GENERAL';

INSERT INTO Unit_Flavors 	
		(UnitType, 				    FlavorType, Flavor)
SELECT	'UNIT_SPUE_GREAT_CROSS',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GREAT_GENERAL';	
--==========================================================================================================================	
-- 圣殿骑士团 -- 虔信解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,									DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FOOT_KNIGHT_TEMPLAR',		'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',		'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',	2);

INSERT INTO Units 	
		(Type, 								Class, 									PrereqTech, 	PolicyType,							RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy,	Help,											Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR', 	'UNITCLASS_SPUE_FOOT_KNIGHT_TEMPLAR', 	PrereqTech, 	'POLICY_SPUE_FOOT_KNIGHT_TEMPLAR', 	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, Cost,		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',	'TXT_KEY_CIV5_SPUE_FOOT_KNIGHT_TEMPLAR_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',	0,					'SPUE_FTEMP_FLAG_ATLAS',	10,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',	'UNITCLASS_MUSKETMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_FOOT_KNIGHT_TEMPLAR', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_FOOT_KNIGHT_TEMPLAR', 	'PROMOTION_SPUE_FOOT_KNIGHT_TEMPLAR');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 			 BuildingClassType)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 		 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 		   UnitAIType)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 						  FlavorType, Flavor)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LONGSWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 		     ResourceType, Cost)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEMPLAR',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_KNIGHT_TEMPLAR',		'TXT_KEY_UNIT_SPUE_KNIGHT_TEMPLAR',		'UNIT_SPUE_KNIGHT_TEMPLAR',		1);

INSERT INTO Units 	
		(Type, 						Class, 								PrereqTech, 		PolicyType,							RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,									Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_TEMPLAR', 'UNITCLASS_SPUE_KNIGHT_TEMPLAR', 	'TECH_THEOLOGY', 	'POLICY_SPUE_FOOT_KNIGHT_TEMPLAR', 	RangedCombat,	Combat+4,	Range, ExtraMaintenanceCost,	Special, Cost, Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_TEMPLAR',	'TXT_KEY_CIV5_SPUE_FOOT_KNIGHT_TEMPLAR_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_KNIGHT_TEMPLAR_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_CHEMISTRY', 	XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_REITER', 	'ART_DEF_UNIT_SPUE_KNIGHT_TEMPLAR',	0,					'SPUE_TEMP_FLAG_ATLAS',	49,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_HORSEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_KNIGHT_TEMPLAR',		'UNITCLASS_SPUE_REITER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_KNIGHT_TEMPLAR', 		'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_KNIGHT_TEMPLAR', 		'PROMOTION_SPUE_FOOT_KNIGHT_TEMPLAR');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 BuildingClassType)
SELECT	'UNIT_SPUE_KNIGHT_TEMPLAR',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 	SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_KNIGHT_TEMPLAR', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  UnitAIType)
SELECT	'UNIT_SPUE_KNIGHT_TEMPLAR',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					 FlavorType, Flavor)
SELECT	'UNIT_SPUE_KNIGHT_TEMPLAR',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 ResourceType, Cost)
SELECT	'UNIT_SPUE_KNIGHT_TEMPLAR',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_HORSEMAN';
--==========================================================================================================================	
-- 条顿骑士团 -- 虔信解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,									DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FOOT_KNIGHT_TEUTONIC',		'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',		'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',	2);

INSERT INTO Units 	
		(Type, 								Class, 									PrereqTech, PolicyType,							RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost, 	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy,	Help,											Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 								UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC', 	'UNITCLASS_SPUE_FOOT_KNIGHT_TEUTONIC', 	PrereqTech, 'POLICY_SPUE_FOOT_KNIGHT_TEUTONIC', RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',	'TXT_KEY_CIV5_SPUE_FOOT_KNIGHT_TEUTONIC_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_TEUTONIC_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',	0,					'SPUE_FTEUT_FLAG_ATLAS',	5,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

UPDATE Units SET
Found = 1
WHERE Type = 'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',	'UNITCLASS_MUSKETMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_FOOT_KNIGHT_TEUTONIC', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_FOOT_KNIGHT_TEUTONIC', 	'PROMOTION_SPUE_FOOT_KNIGHT_TEUTONIC');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 			 BuildingClassType)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 		  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 		    UnitAIType)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 						   FlavorType, Flavor)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LONGSWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 		     ResourceType, Cost)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_TEUTONIC',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_KNIGHT_TEUTONIC',		'TXT_KEY_UNIT_SPUE_KNIGHT_TEUTONIC',		'UNIT_SPUE_KNIGHT_TEUTONIC',	1);

INSERT INTO Units 	
		(Type, 							Class, 								PrereqTech, 		PolicyType,							RangedCombat,	Combat,	 		Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,									Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_TEUTONIC', 	'UNITCLASS_SPUE_KNIGHT_TEUTONIC', 	'TECH_THEOLOGY', 	'POLICY_SPUE_FOOT_KNIGHT_TEUTONIC', RangedCombat,	Combat+4,	 	Range, ExtraMaintenanceCost,	Special, Cost,	Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_TEUTONIC',	'TXT_KEY_CIV5_SPUE_FOOT_KNIGHT_TEUTONIC_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_KNIGHT_TEUTONIC_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_CHEMISTRY', 	XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_REITER', 	'ART_DEF_UNIT_SPUE_KNIGHT_TEUTONIC',	0,					'SPUE_TEUT_FLAG_ATLAS',	51,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_HORSEMAN';

UPDATE Units SET
Found = 1
WHERE Type = 'UNIT_SPUE_KNIGHT_TEUTONIC';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_KNIGHT_TEUTONIC',		'UNITCLASS_SPUE_REITER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_KNIGHT_TEUTONIC', 		'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_KNIGHT_TEUTONIC', 		'PROMOTION_SPUE_FOOT_KNIGHT_TEUTONIC');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	 BuildingClassType)
SELECT	'UNIT_SPUE_KNIGHT_TEUTONIC',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 	 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_KNIGHT_TEUTONIC', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	   UnitAIType)
SELECT	'UNIT_SPUE_KNIGHT_TEUTONIC',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					  FlavorType, Flavor)
SELECT	'UNIT_SPUE_KNIGHT_TEUTONIC',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 	 ResourceType, Cost)
SELECT	'UNIT_SPUE_KNIGHT_TEUTONIC',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_HORSEMAN';
--==========================================================================================================================	
-- 医院骑士团 -- 虔信解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,											Description,										DefaultUnit,							MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FOOT_KNIGHT_HOSPITALLER',		'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',		'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',	2);

INSERT INTO Units 	
		(Type, 									Class, 											PrereqTech, PolicyType,								RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,									Civilopedia,										Strategy,	Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 								UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER', 	'UNITCLASS_SPUE_FOOT_KNIGHT_HOSPITALLER', 		PrereqTech, 'POLICY_SPUE_FOOT_KNIGHT_HOSPITALLER', 	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,	Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',	'TXT_KEY_CIV5_SPUE_FOOT_KNIGHT_HOSPITALLER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',	0,					'SPUE_FHOSP_FLAG_ATLAS',	8,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 								UnitClassType)
VALUES	('UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',	'UNITCLASS_MUSKETMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 								PromotionType)
VALUES	('UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER', 	'PROMOTION_SPUE_FOOT_KNIGHT_HOSPITALLER');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 			 	 BuildingClassType)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 		 	 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 		   	   UnitAIType)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 						  	  FlavorType, Flavor)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LONGSWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 		     ResourceType, Cost)
SELECT	'UNIT_SPUE_FOOT_KNIGHT_HOSPITALLER',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_KNIGHT_HOSPITALLER',	'TXT_KEY_UNIT_SPUE_KNIGHT_HOSPITALLER',	'UNIT_SPUE_KNIGHT_HOSPITALLER',	1);

INSERT INTO Units 	
		(Type, 							Class, 									PrereqTech, 		PolicyType,								RangedCombat,	Combat,	  		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,										Strategy,	Help,											Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_HOSPITALLER', 'UNITCLASS_SPUE_KNIGHT_HOSPITALLER', 	'TECH_THEOLOGY', 	'POLICY_SPUE_FOOT_KNIGHT_HOSPITALLER', 	RangedCombat,	Combat + 4,	 	Range, ExtraMaintenanceCost,	Special, Cost,	Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_HOSPITALLER',	'TXT_KEY_CIV5_SPUE_FOOT_KNIGHT_HOSPITALLER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_KNIGHT_HOSPITALLER_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_CHEMISTRY', 	XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_REITER', 	'ART_DEF_UNIT_SPUE_KNIGHT_HOSPITALLER',	0,					'SPUE_HOSP_FLAG_ATLAS',	48,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_HORSEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 								UnitClassType)
VALUES	('UNIT_SPUE_KNIGHT_HOSPITALLER',		'UNITCLASS_SPUE_REITER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_KNIGHT_HOSPITALLER', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_KNIGHT_HOSPITALLER', 	'PROMOTION_SPUE_FOOT_KNIGHT_HOSPITALLER');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	 BuildingClassType)
SELECT	'UNIT_SPUE_KNIGHT_HOSPITALLER',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 		SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_KNIGHT_HOSPITALLER', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  	  UnitAIType)
SELECT	'UNIT_SPUE_KNIGHT_HOSPITALLER',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_HORSEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					 	 FlavorType, Flavor)
SELECT	'UNIT_SPUE_KNIGHT_HOSPITALLER',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_HORSEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 	 ResourceType, Cost)
SELECT	'UNIT_SPUE_KNIGHT_HOSPITALLER',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_HORSEMAN';
--==========================================================================================================================	
-- 达芬奇坦克 -- 美学解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_DVC_TANK',			'TXT_KEY_UNIT_SPUE_DVC_TANK',		'UNIT_SPUE_DVC_TANK',		2);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, 	PolicyType,				RangedCombat,	Combat,	  	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,						Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_DVC_TANK', 	'UNITCLASS_SPUE_DVC_TANK', 'TECH_ACOUSTICS', 'POLICY_AESTHETICS',	RangedCombat,	60,			Range, ExtraMaintenanceCost,	Special, 260, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_DVC_TANK',	'TXT_KEY_CIV5_SPUE_DVC_TANK_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_DVC_TANK_HELP',	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_COMBUSTION', 	XPValueAttack, XPValueDefense, 'UNITCLASS_WWI_TANK', 	'ART_DEF_UNIT_SPUE_DVC_TANK',	0,					'SPUE_DVCT_FLAG_ATLAS',	27,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_WWI_TANK';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_DVC_TANK',		'UNITCLASS_WWI_TANK');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_DVC_TANK', 			'PROMOTION_TANK_COMBAT'),
		('UNIT_SPUE_DVC_TANK', 			'PROMOTION_SPUE_DVC_TANK');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_DVC_TANK',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 			  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_DVC_TANK', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_AITypes 	
		(UnitType, 			  UnitAIType)
SELECT	'UNIT_SPUE_DVC_TANK', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 			  FlavorType, Flavor)
SELECT	'UNIT_SPUE_DVC_TANK', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 			  ResourceType, Cost)
SELECT	'UNIT_SPUE_DVC_TANK', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CANNON';
--==========================================================================================================================	
-- 达芬奇飞行器  -- 美学解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_DVC_FIGHTER',			'TXT_KEY_UNIT_SPUE_DVC_FIGHTER',		'UNIT_SPUE_DVC_FIGHTER',		6);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, 		PolicyType,				RangedCombat,	Combat,	  	Range, AirInterceptRange, Immobile,	AirUnitCap, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,  MoveRate,  CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,						PortraitIndex, 	IconAtlas,						NoMinorGifts)
SELECT	'UNIT_SPUE_DVC_FIGHTER', 	'UNITCLASS_SPUE_DVC_FIGHTER', 	'TECH_ACOUSTICS', 	'POLICY_AESTHETICS',	RangedCombat,	Combat,		Range, AirInterceptRange, Immobile, AirUnitCap, ExtraMaintenanceCost,	Special, 260, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,  MoveRate, 	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_DVC_FIGHTER',	'TXT_KEY_CIV5_SPUE_DVC_FIGHTER_TEXT', 	Strategy,	'TXT_KEY_UNIT_SPUE_DVC_FIGHTER_HELP',	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RADAR', XPValueAttack, XPValueDefense, 'UNITCLASS_FIGHTER', 		'ART_DEF_UNIT_SMOKEY_STEAM_FIGHTER',	6,					'EXPANSION_SCEN_UNIT_FLAG_ATLAS',	6,				'EXPANSION_SCEN_UNIT_ATLAS',	1
FROM Units WHERE Type = 'UNIT_TRIPLANE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_DVC_FIGHTER',		'UNITCLASS_FIGHTER');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_DVC_FIGHTER', 		'PROMOTION_ANTI_AIR_II'),
		('UNIT_SPUE_DVC_FIGHTER', 		'PROMOTION_AIR_ATTACK');


INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_DVC_FIGHTER',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 			  	 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_DVC_FIGHTER', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_TRIPLANE';

INSERT INTO Unit_AITypes 	
		(UnitType, 			  	 UnitAIType)
SELECT	'UNIT_SPUE_DVC_FIGHTER', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_TRIPLANE';

INSERT INTO Unit_Flavors 	
		(UnitType, 			  	 FlavorType, Flavor)
SELECT	'UNIT_SPUE_DVC_FIGHTER', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_TRIPLANE';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 			  	 ResourceType, Cost)
SELECT	'UNIT_SPUE_DVC_FIGHTER', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CANNON';
--==========================================================================================================================	
-- 达芬奇机关炮 -- 美学解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_DVC_MACHINEGUN',			'TXT_KEY_UNIT_SPUE_DVC_MACHINEGUN',		'UNIT_SPUE_DVC_MACHINEGUN',		4);

INSERT INTO Units 	
		(Type, 							Class, 								PrereqTech, 		PolicyType,				RangedCombat,	Combat,	  	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,							Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_DVC_MACHINEGUN', 	'UNITCLASS_SPUE_DVC_MACHINEGUN', 	'TECH_ACOUSTICS', 	'POLICY_AESTHETICS',	RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, 260, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_DVC_MACHINEGUN',	'TXT_KEY_CIV5_SPUE_DVC_FIGHTER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_DVC_MACHINEGUN_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_DVC_MACHINEGUN',	0,					'SPUE_DVCM_FLAG_ATLAS',	28,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_CANNON';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_DVC_MACHINEGUN',		'UNITCLASS_HOWITZER');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_DVC_MACHINEGUN', 	'PROMOTION_CITY_SIEGE'),
		('UNIT_SPUE_DVC_MACHINEGUN', 	'PROMOTION_SPLASH_DAMAGE');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_DVC_MACHINEGUN',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CULVERIN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 			  		SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_DVC_MACHINEGUN', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CULVERIN';

INSERT INTO Unit_AITypes 	
		(UnitType, 			  		UnitAIType)
SELECT	'UNIT_SPUE_DVC_MACHINEGUN', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CULVERIN';

INSERT INTO Unit_Flavors 	
		(UnitType, 			  		FlavorType, Flavor)
SELECT	'UNIT_SPUE_DVC_MACHINEGUN', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CULVERIN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 			  		ResourceType, Cost)
SELECT	'UNIT_SPUE_DVC_MACHINEGUN', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CULVERIN';
--==========================================================================================================================	
-- 中古佣兵团 -- 商业解锁
--==========================================================================================================================
-- INSERT INTO Unit_UniqueNames	
-- 		(UnitType, 					UniqueName)
-- VALUES	('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME1'),
-- 		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME2'),
-- 		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME3'),
-- 		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME4'),
-- 		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME5'),
-- 		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME6');
--==========================================================================================================================	
-- 佣兵雇主 -- 商业解锁
--==========================================================================================================================
-- INSERT INTO UnitClasses
-- 		(Type,						Description,				DefaultUnit,		MaxPlayerInstances)
-- VALUES	('UNITCLASS_SPUE_AMB',		'TXT_KEY_UNIT_SPUE_AMB',	'UNIT_SPUE_AMB',	2);

-- INSERT INTO Units 	
-- 		(Type, 				Class, 					PrereqTech, PolicyType,				RangedCombat,	Combat,	  Range, ExtraMaintenanceCost,	Special, 	Cost, 	FaithCost, 	HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,  		MoveRate, CombatClass, Domain, DefaultUnitAI, Description,				Civilopedia,					Strategy,	Help,							Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,				NoMinorGifts)
-- SELECT	'UNIT_SPUE_AMB', 	'UNITCLASS_SPUE_AMB', 	PrereqTech, 'POLICY_SPUE_FCOMPANY',	RangedCombat,	Combat,	  Range, ExtraMaintenanceCost,	null, 		300, 	FaithCost, 	10, 				RequiresFaithPurchaseEnabled, Moves + 2,   	MoveRate, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AMB',	'TXT_KEY_CIV5_SPUE_AMB_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_AMB_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_AMBASSADOR',	0,					'SPUE_AMB_FLAG_ATLAS',	17,				'SPUE02_UNITS_ATLAS',	1
-- FROM Units WHERE Type = 'UNIT_MERCHANT';

-- INSERT INTO Unit_FreePromotions
-- 		(UnitType, 			PromotionType)
-- VALUES	('UNIT_SPUE_AMB', 	'PROMOTION_SPUE_AMB');

-- INSERT INTO UnitGameplay2DScripts 	
-- 		(UnitType, 				SelectionSound, FirstSelectionSound)
-- SELECT	'UNIT_SPUE_AMB',		SelectionSound, FirstSelectionSound
-- FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MERCHANT';

-- INSERT INTO Unit_AITypes 	
-- 		(UnitType, 			UnitAIType)
-- SELECT	'UNIT_SPUE_AMB',	UnitAIType
-- FROM Unit_AITypes WHERE UnitType = 'UNIT_MERCHANT';

-- INSERT INTO Unit_Flavors 	
-- 		(UnitType, 			FlavorType, Flavor)
-- SELECT	'UNIT_SPUE_AMB',	FlavorType, Flavor
-- FROM Unit_Flavors WHERE UnitType = 'UNIT_MERCHANT';	
--==========================================================================================================================	
-- 瓦兰吉佣兵 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_VARANGIAN',		'TXT_KEY_UNIT_SPUE_VARANGIAN',		'UNIT_SPUE_VARANGIAN',	3);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,					RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 		FaithCost,	HurryCostModifier, PurchaseOnly, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_VARANGIAN', 'UNITCLASS_SPUE_VARANGIAN', 	PrereqTech, 'POLICY_SPUE_VARANGIAN', 	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost/2, 	FaithCost,	1, 				   1, 			 RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_VARANGIAN',	'TXT_KEY_CIV5_SPUE_VARANGIAN_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_VARANGIAN_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, null, 					 'ART_DEF_UNIT_SPUE_VARANGIAN',	0,					'SPUE_VARANMER_FLAG_ATLAS',	41,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

-- INSERT INTO Unit_ClassUpgrades 	
-- 		(UnitType, 				UnitClassType)
-- VALUES	('UNIT_SPUE_VARANGIAN',	'UNITCLASS_MUSKETMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_VARANGIAN', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_VARANGIAN', 	'PROMOTION_SHOCK_1'),
		('UNIT_SPUE_VARANGIAN', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_VARANGIAN', 	'PROMOTION_SPUE_VARANGIAN');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_VARANGIAN',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_VARANGIAN', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_VARANGIAN',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_VARANGIAN',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LONGSWORDSMAN';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				 ResourceType, Cost)
-- SELECT	'UNIT_SPUE_VARANGIAN',	 ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';
--==========================================================================================================================	
-- 瓦兰吉卫队 -- 商业解锁
--==========================================================================================================================
INSERT INTO Units 	
		(Type, 							Class, 						PrereqTech, PolicyType,					RangedCombat,	Combat,	  		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD', 	'UNITCLASS_SPUE_VARANGIAN', PrereqTech, 'POLICY_SPUE_VARANGIAN', 	RangedCombat,	Combat+10,	 	Range, ExtraMaintenanceCost,	Special, -1, 	FaithCost, 	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD',	'TXT_KEY_CIV5_SPUE_VARANGIAN_GUARD_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, 'UNITCLASS_RIFLEMAN', 	'ART_DEF_UNIT_SPUE_VARANGIAN_GUARD',	0,					'SPUE_VARANGUARD_FLAG_ATLAS',	45,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

UPDATE Units SET ProjectPrereq = 'PROJECT_SPUE_VARANGIAN_TRAINING' WHERE Type = 'UNIT_SPUE_VARANGIAN_GUARD';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_VARANGIAN_GUARD',	'UNITCLASS_RIFLEMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_VARANGIAN_GUARD', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_VARANGIAN_GUARD', 	'PROMOTION_SHOCK_1'),
		('UNIT_SPUE_VARANGIAN_GUARD', 	'PROMOTION_SPUE_VARANGIAN'),
		('UNIT_SPUE_VARANGIAN_GUARD', 	'PROMOTION_SPUE_VARANGIAN_GUARD');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 						BuildingClassType)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 					   UnitAIType)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					  FlavorType, Flavor)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LONGSWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 						 ResourceType, Cost)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';
--==========================================================================================================================	
-- 热那亚弩手 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_GENOAXBOW',		'TXT_KEY_UNIT_SPUE_GENOAXBOW',		'UNIT_SPUE_GENOAXBOW',		3);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,					RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 		FaithCost,  HurryCostModifier, PurchaseOnly, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_GENOAXBOW', 'UNITCLASS_SPUE_GENOAXBOW', 	PrereqTech, 'POLICY_SPUE_GENOAXBOW', 	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost/2,	FaithCost,  1, 				   1, 			 RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GENOAXBOW',	'TXT_KEY_CIV5_SPUE_GENOAXBOW_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_GENOAXBOW_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, null, 					 'ART_DEF_UNIT_SPUE_GENOAXBOW',	0,					'SPUE_GENOAX_FLAG_ATLAS',	43,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_CROSSBOWMAN';

-- INSERT INTO Unit_ClassUpgrades 	
-- 		(UnitType, 					UnitClassType)
-- VALUES	('UNIT_SPUE_GENOAXBOW',		'UNITCLASS_VOLLEY_GUN');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_GENOAXBOW', 	'PROMOTION_ARCHERY_COMBAT'),
		('UNIT_SPUE_GENOAXBOW', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_GENOAXBOW', 	'PROMOTION_SPUE_GENOAXBOW');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_GENOAXBOW',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CROSSBOWMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_GENOAXBOW',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CROSSBOWMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_GENOAXBOW',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CROSSBOWMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_GENOAXBOW',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CROSSBOWMAN';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				   ResourceType, Cost)
-- SELECT	'UNIT_SPUE_GENOAXBOW',	   ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CROSSBOWMAN';

--朱斯蒂尼亚尼弩手
INSERT INTO Units 	
		(Type, 						 Class, 						PrereqTech, PolicyType,					RangedCombat,		Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 			FaithCost,  HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_GENOAXBOW_ELITE', 'UNITCLASS_SPUE_GENOAXBOW', 	PrereqTech, 'POLICY_SPUE_GENOAXBOW', 	RangedCombat+10,	Combat,	Range, ExtraMaintenanceCost,	Special, -1, 			FaithCost,  -1, 				RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GENOAXBOW_ELITE',	'TXT_KEY_CIV5_SPUE_GENOAXBOW_ELITE_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_GENOAXBOW_ELITE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, 'UNITCLASS_GATLINGGUN', 	'ART_DEF_UNIT_SPUE_GENOAXBOW',	0,					'SPUE_GENOAX_FLAG_ATLAS',	21,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_CROSSBOWMAN';

UPDATE Units SET ProjectPrereq = 'PROJECT_SPUE_GENOAXBOW_TRAINING' WHERE Type = 'UNIT_SPUE_GENOAXBOW_ELITE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_GENOAXBOW_ELITE',		'UNITCLASS_GATLINGGUN');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_GENOAXBOW_ELITE', 	'PROMOTION_ARCHERY_COMBAT'),
		('UNIT_SPUE_GENOAXBOW_ELITE', 	'PROMOTION_SPUE_GENOAXBOW_ELITE'),
		('UNIT_SPUE_GENOAXBOW_ELITE', 	'PROMOTION_SPUE_GENOAXBOW');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 							BuildingClassType)
SELECT	'UNIT_SPUE_GENOAXBOW_ELITE',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CROSSBOWMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_GENOAXBOW_ELITE',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CROSSBOWMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 							UnitAIType)
SELECT	'UNIT_SPUE_GENOAXBOW_ELITE',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CROSSBOWMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   		FlavorType, Flavor)
SELECT	'UNIT_SPUE_GENOAXBOW_ELITE',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CROSSBOWMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   		ResourceType, Cost)
SELECT	'UNIT_SPUE_GENOAXBOW_ELITE',	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CROSSBOWMAN';
--==========================================================================================================================	
-- 瑞士卫队 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_SWISSGUARD',		'TXT_KEY_UNIT_SPUE_SWISSGUARD',		'UNIT_SPUE_SWISSGUARD',		3);

INSERT INTO Units 	
		(Type, 					Class, 							PrereqTech, PolicyType,					Combat, ExtraMaintenanceCost,	Special, Cost, 		FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_SWISSGUARD', 'UNITCLASS_SPUE_SWISSGUARD', 	PrereqTech, 'POLICY_SPUE_SWISSGUARD',	Combat, ExtraMaintenanceCost,	Special, Cost/2, 	FaithCost,  1, 				   1, 				RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SWISSGUARD',	'TXT_KEY_CIV5_SPUE_SWISSGUARD_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_SWISSGUARD_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_BALLISTICS', 	XPValueAttack, XPValueDefense, null, 					 'ART_DEF_UNIT_SPUE_SWISSGUARD',	0,					'SPUE_SWISSG_FLAG_ATLAS',	42,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

-- INSERT INTO Unit_ClassUpgrades 	
-- 		(UnitType, 					UnitClassType)
-- VALUES	('UNIT_SPUE_SWISSGUARD',	'UNITCLASS_TERCIO');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_SWISSGUARD', 	'PROMOTION_ANTI_MOUNTED'),
		('UNIT_SPUE_SWISSGUARD', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_SWISSGUARD', 	'PROMOTION_CHARGE_1'),
		('UNIT_SPUE_SWISSGUARD', 	'PROMOTION_SPUE_SWISSGUARD');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_SWISSGUARD',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_SWISSGUARD',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_SWISSGUARD',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_SWISSGUARD',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				   ResourceType, Cost)
-- SELECT	'UNIT_SPUE_SWISSGUARD',	   ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';
-- 教皇近卫军
INSERT INTO Units 	
		(Type, 							Class, 							PrereqTech, PolicyType,					RangedCombat,		Combat,		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_SWISSGUARD_ELITE', 	'UNITCLASS_SPUE_SWISSGUARD', 	PrereqTech, 'POLICY_SPUE_SWISSGUARD',	RangedCombat+10,	Combat+10,	1, 	   ExtraMaintenanceCost,	Special, -1,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SWISSGUARD_ELITE',	'TXT_KEY_CIV5_SPUE_SWISSGUARD_ELITE_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_SWISSGUARD_ELITE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_BALLISTICS', 	XPValueAttack, XPValueDefense, 'UNITCLASS_ANTI_TANK_GUN', 	'ART_DEF_UNIT_SPUE_SWISSGUARD',	0,					'SPUE_SWISSG_FLAG_ATLAS',	20,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

UPDATE Units SET ProjectPrereq = 'PROJECT_SPUE_SWISSGUARD_TRAINING' WHERE Type = 'UNIT_SPUE_SWISSGUARD_ELITE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_SWISSGUARD_ELITE',	'UNITCLASS_ANTI_TANK_GUN');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_SWISSGUARD_ELITE', 	'PROMOTION_ANTI_MOUNTED'),
		('UNIT_SPUE_SWISSGUARD_ELITE', 	'PROMOTION_SPUE_SWISSGUARD_ELITE'),
		('UNIT_SPUE_SWISSGUARD_ELITE', 	'PROMOTION_CHARGE_1'),
		('UNIT_SPUE_SWISSGUARD_ELITE', 	'PROMOTION_SPUE_SWISSGUARD');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 							BuildingClassType)
SELECT	'UNIT_SPUE_SWISSGUARD_ELITE',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_SWISSGUARD_ELITE',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 							UnitAIType)
SELECT	'UNIT_SPUE_SWISSGUARD_ELITE',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   			FlavorType, Flavor)
SELECT	'UNIT_SPUE_SWISSGUARD_ELITE',	    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   			ResourceType, Cost)
SELECT	'UNIT_SPUE_SWISSGUARD_ELITE',	    ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';
--==========================================================================================================================	
-- 装甲骑士 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,							Description,				DefaultUnit,		MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ELMETI',		'TXT_KEY_UNIT_SPUE_ELMETI',	'UNIT_SPUE_ELMETI',	2);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,		FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,				Civilopedia,						Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 				UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_ELMETI', 	'UNITCLASS_SPUE_ELMETI',	PrereqTech, 'POLICY_SPUE_ELMETI', 	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost/2,	FaithCost, 	1, 				   1, 				RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ELMETI',	'TXT_KEY_CIV5_SPUE_ELMETI_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_ELMETI_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, null, 						'ART_DEF_UNIT_SPUE_ELMETI',	0,					'SPUE_ELMETI_FLAG_ATLAS',	32,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

-- INSERT INTO Unit_ClassUpgrades 	
-- 		(UnitType, 				UnitClassType)
-- VALUES	('UNIT_SPUE_ELMETI',	'UNITCLASS_LANCER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 				PromotionType)
VALUES	('UNIT_SPUE_ELMETI', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_ELMETI', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_ELMETI', 	'PROMOTION_SPUE_ELMETI');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				BuildingClassType)
SELECT	'UNIT_SPUE_ELMETI',	 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ELMETI', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_ELMETI',   	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_ELMETI',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				ResourceType, Cost)
-- SELECT	'UNIT_SPUE_ELMETI',	 	ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
-- 王家敕令骑士
INSERT INTO Units 	
		(Type, 						Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 		UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_ELMETI_ELITE', 	'UNITCLASS_SPUE_ELMETI',	PrereqTech, 'POLICY_SPUE_ELMETI', 	RangedCombat,	Combat+10,	Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost, 	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ELMETI_ELITE',	'TXT_KEY_CIV5_SPUE_ELMETI_ELITE_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_ELMETI_ELITE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_CUIRASSIER', 	'ART_DEF_UNIT_SPUE_ELITE_CHAMPION',	0,					'SPUE_CHAMPION_FLAG_ATLAS',	19,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

UPDATE Units SET ProjectPrereq = 'PROJECT_SPUE_ELMETI_TRAINING' WHERE Type = 'UNIT_SPUE_ELMETI_ELITE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_ELMETI_ELITE',	'UNITCLASS_SPUE_CUIRASSIER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_ELMETI_ELITE', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_ELMETI_ELITE', 	'PROMOTION_SPUE_ELMETI'),
		('UNIT_SPUE_ELMETI_ELITE', 	'PROMOTION_SPUE_ELMETI_ELITE');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 						BuildingClassType)
SELECT	'UNIT_SPUE_ELMETI_ELITE',	 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ELMETI_ELITE', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 						UnitAIType)
SELECT	'UNIT_SPUE_ELMETI_ELITE',   	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_ELMETI_ELITE',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 						ResourceType, Cost)
SELECT	'UNIT_SPUE_ELMETI_ELITE',	 	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- 黑森佣兵 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,							Description,					DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_HESSIAN',		'TXT_KEY_UNIT_SPUE_HESSIAN',	'UNIT_SPUE_HESSIAN',	4);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,	 Range, ExtraMaintenanceCost,	Special, Cost, 		FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,						Strategy, Help,								   	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 				UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_HESSIAN', 	'UNITCLASS_SPUE_HESSIAN', 	PrereqTech, 'POLICY_SPUE_HESSIAN', 	RangedCombat,	Combat,	 Range, ExtraMaintenanceCost,	Special, Cost/2,	FaithCost,  1, 				   1, 				RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_HESSIAN',	'TXT_KEY_CIV5_SPUE_HESSIAN_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_HESSIAN_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_BALLISTICS', 	XPValueAttack, XPValueDefense, null, 						'ART_DEF_UNIT_SPUE_HESSIAN',	0,					'SPUE_HESSIAN_FLAG_ATLAS',	18,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MUSKETMAN';

-- INSERT INTO Unit_ClassUpgrades 	
-- 		(UnitType, 				UnitClassType)
-- VALUES	('UNIT_SPUE_HESSIAN',	'UNITCLASS_RIFLEMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 				PromotionType)
VALUES	('UNIT_SPUE_HESSIAN', 	'PROMOTION_GUNPOWDER_INFANTRY_COMBAT'),
		('UNIT_SPUE_HESSIAN', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_HESSIAN', 	'PROMOTION_SPUE_HESSIAN');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	BuildingClassType)
SELECT	'UNIT_SPUE_HESSIAN',	 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_HESSIAN', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_HESSIAN',  	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_HESSIAN',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MUSKETMAN';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				 	ResourceType, Cost)
-- SELECT	'UNIT_SPUE_HESSIAN',	 	ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MUSKETMAN';
-- 巨人掷弹兵
INSERT INTO Units 	
		(Type, 						Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,	 		Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,						Strategy, Help,								   		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 			UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_HESSIAN_ELITE', 	'UNITCLASS_SPUE_HESSIAN', 	PrereqTech, 'POLICY_SPUE_HESSIAN', 	RangedCombat,	Combat+10,	 	Range, ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_HESSIAN_ELITE',	'TXT_KEY_CIV5_SPUE_HESSIAN_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_HESSIAN_ELITE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_BALLISTICS', 	XPValueAttack, XPValueDefense, 'UNITCLASS_GREAT_WAR_INFANTRY', 	'ART_DEF_UNIT_SPUE_HESSIAN',	0,					'SPUE_HESSIAN_FLAG_ATLAS',	18,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MUSKETMAN';

UPDATE Units SET ProjectPrereq = 'PROJECT_SPUE_HESSIAN_TRAINING' WHERE Type = 'UNIT_SPUE_HESSIAN_ELITE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_HESSIAN_ELITE',	'UNITCLASS_GREAT_WAR_INFANTRY');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_HESSIAN_ELITE', 	'PROMOTION_GUNPOWDER_INFANTRY_COMBAT'),
		('UNIT_SPUE_HESSIAN_ELITE', 	'PROMOTION_SPUE_HESSIAN_ELITE');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 		BuildingClassType)
SELECT	'UNIT_SPUE_HESSIAN_ELITE',	 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_HESSIAN_ELITE', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 		UnitAIType)
SELECT	'UNIT_SPUE_HESSIAN_ELITE',  	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_HESSIAN_ELITE',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MUSKETMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	ResourceType, Cost)
SELECT	'UNIT_SPUE_HESSIAN_ELITE',	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MUSKETMAN';
--==========================================================================================================================	
-- 私掠船 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_PRIVATEER',		'TXT_KEY_UNIT_SPUE_PRIVATEER',		'UNIT_SPUE_PRIVATEER',	4);

INSERT INTO Units 	
		(Type, 					Class, 							PrereqTech, PolicyType,					RangedCombat,	Combat,	Range, 	ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 				UnitFlagIconOffset, UnitFlagAtlas,				 PortraitIndex, 	IconAtlas,					NoMinorGifts)
SELECT	'UNIT_SPUE_PRIVATEER', 	'UNITCLASS_SPUE_PRIVATEER', 	PrereqTech, 'POLICY_SPUE_PRIVATEER', 	Combat,			Combat,	2, 		ExtraMaintenanceCost,	Special, Cost, FaithCost,  1, 				  1, 			RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_PRIVATEER',	'TXT_KEY_CIV5_SPUE_PRIVATEER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_PRIVATEER_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_XP_PRIVATEER',	21,					'EXPANSION_UNIT_FLAG_ATLAS', 21,				'EXPANSION_UNIT_ATLAS_1',	1
FROM Units WHERE Type = 'UNIT_FRIGATE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_PRIVATEER',		'UNITCLASS_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_PRIVATEER', 	'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_PRIVATEER', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_PRIVATEER', 	'PROMOTION_SPUE_PRIVATEER');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				BuildingClassType)
SELECT	'UNIT_SPUE_PRIVATEER',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_PRIVATEER',	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_PRIVATEER',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  FlavorType, Flavor)
SELECT	'UNIT_SPUE_PRIVATEER',	  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FRIGATE';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_PRIVATEER',   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FRIGATE';
--==========================================================================================================================	
-- 倭寇帆船 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,						Description,					DefaultUnit,		MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FUNE',		'TXT_KEY_UNIT_SPUE_FUNE',		'UNIT_SPUE_FUNE',	4);

INSERT INTO Units 	
		(Type, 				Class, 					PrereqTech, PolicyType,				WorkRate,	RangedCombat,	Combat,	Range, 	ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,				Civilopedia,					Strategy,	Help,							Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 				UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_FUNE', 	'UNITCLASS_SPUE_FUNE', 	PrereqTech, 'POLICY_SPUE_FUNE', 	200,		RangedCombat,	Combat,	Range, 	ExtraMaintenanceCost,	Special, Cost, FaithCost,  1, 				   1, 			RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FUNE',	'TXT_KEY_CIV5_SPUE_FUNE_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FUNE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FUNE',	0,					'SPUE_FUNE_FLAG_ATLAS', 33,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_Builds
		(UnitType,			BuildType)
VALUES	('UNIT_SPUE_FUNE',	'BUILD_FISHERY_MOD'),
		('UNIT_SPUE_FUNE',	'BUILD_FISHFARM_MOD');
INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 			UnitClassType)
VALUES	('UNIT_SPUE_FUNE',	'UNITCLASS_LIGHT_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 			PromotionType)
VALUES	('UNIT_SPUE_FUNE', 	'PROMOTION_NAVAL_HIT_AND_RUN'),
		('UNIT_SPUE_FUNE', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_FUNE', 	'PROMOTION_SPUE_FUNE');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 			BuildingClassType)
SELECT	'UNIT_SPUE_FUNE',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 			SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FUNE',	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_FUNE',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_Flavors 	
		(UnitType, 			  FlavorType, Flavor)
SELECT	'UNIT_SPUE_FUNE',	  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SLOOP_OF_WAR';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_FUNE',   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SLOOP_OF_WAR';
--==========================================================================================================================	
-- 南洋海盗船 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_SSPRIVATEER',		'TXT_KEY_UNIT_SPUE_SSPRIVATEER',	'UNIT_SPUE_SSPRIVATEER',	4);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, PolicyType,					RangedCombat,	Combat,	Range, 	ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_SSPRIVATEER', 	'UNITCLASS_SPUE_SSPRIVATEER', 	PrereqTech, 'POLICY_SPUE_SSPRIVATEER', 	Combat,			Combat,	2, 		ExtraMaintenanceCost,	Special, Cost, FaithCost,  1, 				  1, 			RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SSPRIVATEER',	'TXT_KEY_CIV5_SPUE_SSPRIVATEER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_SSPRIVATEER_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SSPRIVATEER',	0,					'SPUE_SSPRIV_FLAG_ATLAS',	44,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_FRIGATE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_SSPRIVATEER',	'UNITCLASS_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_SSPRIVATEER', 	'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_SSPRIVATEER', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_SSPRIVATEER', 	'PROMOTION_SPUE_SSPRIVATEER');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_SSPRIVATEER',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_SSPRIVATEER',	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_SSPRIVATEER',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   	  FlavorType, Flavor)
SELECT	'UNIT_SPUE_SSPRIVATEER',	  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FRIGATE';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_SSPRIVATEER',   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FRIGATE';
--==========================================================================================================================	
-- 铁人军 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_IRON_TROOP',		'TXT_KEY_UNIT_SPUE_IRON_TROOP',		'UNIT_SPUE_IRON_TROOP',	4);

INSERT INTO Units 	
		(Type, 					Class, 						 PrereqTech, 		PolicyType,					RangedCombat,	Combat,	 Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy, Help,								   Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_IRON_TROOP', 'UNITCLASS_SPUE_IRON_TROOP', 'TECH_NAVIGATION', 'POLICY_SPUE_SSPRIVATEER', 	RangedCombat,	Combat,	 Range, ExtraMaintenanceCost,	Special, -1, 	FaithCost,  -1, 				RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_IRON_TROOP',	'TXT_KEY_CIV5_SPUE_IRON_TROOP_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_IRON_TROOP_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_IRON_TROOP',	0,					'SPUE_IRON_TROOP_FLAG_ATLAS',	46,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MUSKETMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_IRON_TROOP',	'UNITCLASS_RIFLEMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_IRON_TROOP', 	'PROMOTION_GUNPOWDER_INFANTRY_COMBAT'),
		('UNIT_SPUE_IRON_TROOP', 	'PROMOTION_NO_CASUALTIES'),
		('UNIT_SPUE_IRON_TROOP',	'PROMOTION_ARMOR_PLATING_I'),
		('UNIT_SPUE_IRON_TROOP',	'PROMOTION_ARMOR_PLATING_II'),
		('UNIT_SPUE_IRON_TROOP', 	'PROMOTION_SPUE_IRON_TROOP');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 BuildingClassType)
SELECT	'UNIT_SPUE_IRON_TROOP',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_IRON_TROOP', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 UnitAIType)
SELECT	'UNIT_SPUE_IRON_TROOP',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_IRON_TROOP',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MUSKETMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_IRON_TROOP',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MUSKETMAN';
--==========================================================================================================================	
-- 奥古斯都之路
--==========================================================================================================================
--==========================================================================================================================	
-- 将领卫队 -- 赞助古典统帅单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,							DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_GENERAL_BODYGUARD',		'TXT_KEY_UNIT_SPUE_GENERAL_BODYGUARD',	'UNIT_SPUE_GENERAL_BODYGUARD',	2);

INSERT INTO Units 	
		(Type, 							Class, 								PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,									Strategy,	Help,											Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_GENERAL_BODYGUARD', 	'UNITCLASS_SPUE_GENERAL_BODYGUARD', PrereqTech, 'POLICY_SPUE_AUGUSTUS', RangedCombat,	Combat+4,	Range, ExtraMaintenanceCost,	Special, Cost, 	0, 			HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   0,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GENERAL_BODYGUARD',	'TXT_KEY_CIV5_SPUE_GENERAL_BODYGUARD_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_GENERAL_BODYGUARD_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_GENERAL_BODYGUARD',	0,					'SPUE_BODYGUARD_FLAG_ATLAS',	25,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_HORSEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_GENERAL_BODYGUARD',	'UNITCLASS_KNIGHT');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_GENERAL_BODYGUARD', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_GENERAL_BODYGUARD', 	'PROMOTION_SPUE_GENERAL_BODYGUARD'),
		('UNIT_SPUE_GENERAL_BODYGUARD', 	'PROMOTION_SPUE_AUGUSTUS');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	BuildingClassType)
SELECT	'UNIT_SPUE_GENERAL_BODYGUARD',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SPUE_HORSEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    	SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_GENERAL_BODYGUARD', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SPUE_HORSEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  	UnitAIType)
SELECT	'UNIT_SPUE_GENERAL_BODYGUARD',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SPUE_HORSEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 						FlavorType, Flavor)
SELECT	'UNIT_SPUE_GENERAL_BODYGUARD',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SPUE_HORSEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 	ResourceType, Cost)
SELECT	'UNIT_SPUE_GENERAL_BODYGUARD',	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SPUE_HORSEMAN';
--==========================================================================================================================	
-- 辅助克里特弓箭手 -- 赞助古典辅助单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_VASSAL_BOWMAN',			'TXT_KEY_UNIT_SPUE_VASSAL_BOWMAN',			'UNIT_SPUE_VASSAL_BOWMAN',			4);

INSERT INTO Units 	
		(Type, 								Class, 									PrereqTech, PolicyType,				RangedCombat,		Combat,				Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_VASSAL_BOWMAN', 			'UNITCLASS_SPUE_VASSAL_BOWMAN', 		PrereqTech, 'POLICY_SPUE_AUGUSTUS', RangedCombat + 5,	RangedCombat + 5,	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   0,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_VASSAL_BOWMAN',			'TXT_KEY_CIV5_SPUE_VASSAL_BOWMAN_TEXT', 		Strategy, 	'TXT_KEY_UNIT_SPUE_VASSAL_BOWMAN_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_VASSAL_BOWMAN',	0,					'SPUE_VBOWMAN_FLAG_ATLAS',	55,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_COMPOSITE_BOWMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_VASSAL_BOWMAN',			'UNITCLASS_CROSSBOWMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_VASSAL_BOWMAN', 		'PROMOTION_ARCHERY_COMBAT'),
		('UNIT_SPUE_VASSAL_BOWMAN', 		'PROMOTION_SPUE_VASSAL_BOWMAN'),
		('UNIT_SPUE_VASSAL_BOWMAN', 		'PROMOTION_SPUE_AUGUSTUS'),
		('UNIT_SPUE_VASSAL_BOWMAN', 		'PROMOTION_NO_CASUALTIES');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 		BuildingClassType)
SELECT	'UNIT_SPUE_VASSAL_BOWMAN',	 		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_COMPOSITE_BOWMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    	SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_VASSAL_BOWMAN', 		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_COMPOSITE_BOWMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	 UnitAIType)
SELECT	'UNIT_SPUE_VASSAL_BOWMAN',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_COMPOSITE_BOWMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_VASSAL_BOWMAN',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_COMPOSITE_BOWMAN';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				 	 ResourceType, Cost)
-- SELECT	'UNIT_SPUE_VASSAL_BOWMAN',	 ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_COMPOSITE_BOWMAN';
--==========================================================================================================================	
-- 同盟军团-- 赞助古典辅助单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_SOCII_HASTATI',		'TXT_KEY_UNIT_SPUE_SOCII_HASTATI',		'UNIT_SPUE_SOCII_HASTATI',	2);

INSERT INTO Units 	
		(Type, 						Class, 								PrereqTech, 	PolicyType,				RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,							Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_SOCII_HASTATI', 	'UNITCLASS_SPUE_SOCII_HASTATI', 	PrereqTech, 	'POLICY_SPUE_AUGUSTUS', RangedCombat,	Combat,	 	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost, 	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SOCII_HASTATI',	'TXT_KEY_CIV5_SPUE_SOCII_HASTATI_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_SOCII_HASTATI_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SOCII_HASTATI',	0,					'SPUE_SOCII_FLAG_ATLAS',	28,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_SWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_SOCII_HASTATI',	'UNITCLASS_LONGSWORDSMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_SOCII_HASTATI', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_SOCII_HASTATI', 	'PROMOTION_SPUE_AUGUSTUS'),
		('UNIT_SPUE_SOCII_HASTATI', 	'PROMOTION_SPUE_SOCII_HASTATI');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	BuildingClassType)
SELECT	'UNIT_SPUE_SOCII_HASTATI',	 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_SOCII_HASTATI', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  	UnitAIType)
SELECT	'UNIT_SPUE_SOCII_HASTATI',   	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 						FlavorType, Flavor)
SELECT	'UNIT_SPUE_SOCII_HASTATI',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SWORDSMAN';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				 	 		ResourceType, Cost)
-- SELECT	'UNIT_SPUE_SOCII_HASTATI',	 		ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SWORDSMAN';
--==========================================================================================================================	
-- 巴西琉斯之道
--==========================================================================================================================
--==========================================================================================================================	
-- 拜占庭喷火兵 -- 赞助中古辅助单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,							DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FIRE_THROWER',		'TXT_KEY_UNIT_SPUE_FIRE_THROWER',		'UNIT_SPUE_FIRE_THROWER',	2);

INSERT INTO Units 	
		(Type, 					  Class, 							PrereqTech, PolicyType,				RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 			UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_FIRE_THROWER', 'UNITCLASS_SPUE_FIRE_THROWER', 	PrereqTech, 'POLICY_SPUE_BASELIUS', Combat,			Combat,	2, 	   ExtraMaintenanceCost,	Special, Cost,	Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   0,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FIRE_THROWER',	'TXT_KEY_CIV5_SPUE_FIRE_THROWER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_FIRE_THROWER_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, 'UNITCLASS_MOTORISED_INFANTRY', 	'ART_DEF_UNIT_SPUE_FIRE_THROWER',	0,					'SPUE_VFIRE_FLAG_ATLAS',	29,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_FIRE_THROWER',		'UNITCLASS_MOTORISED_INFANTRY');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_FIRE_THROWER', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_FIRE_THROWER', 	'PROMOTION_SPUE_BASELIUS'),
		('UNIT_SPUE_FIRE_THROWER', 	'PROMOTION_SPUE_FIRE_THROWER');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 BuildingClassType)
SELECT	'UNIT_SPUE_FIRE_THROWER',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FIRE_THROWER', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	UnitAIType)
SELECT	'UNIT_SPUE_FIRE_THROWER',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_FIRE_THROWER',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LONGSWORDSMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 ResourceType, Cost)
SELECT	'UNIT_SPUE_FIRE_THROWER',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';
--==========================================================================================================================	
-- 靖抚甲骑兵 -- 赞助中古统帅单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_BUCELLARII_GUARD',		'TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD',	'UNIT_SPUE_BUCELLARII_GUARD',	2);

INSERT INTO Units 	
		(Type, 							Class, 								PrereqTech, PolicyType,				RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 		UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD', 	'UNITCLASS_SPUE_BUCELLARII_GUARD',	PrereqTech, 'POLICY_SPUE_BASELIUS', Combat,			Combat,	1, 	   ExtraMaintenanceCost,	Special, Cost,	FaithCost, 	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   0,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD',	'TXT_KEY_CIV5_SPUE_BUCELLARII_GUARD_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_CUIRASSIER', 	'ART_DEF_UNIT_SPUE_HEAVY_CAVALRY',	0,					'SPUE_VCATAPHCRAT_FLAG_ATLAS',	25,				'SPUE02_UNITS_ATLAS',		1
FROM Units WHERE Type = 'UNIT_KNIGHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_BUCELLARII_GUARD',	'UNITCLASS_SPUE_CUIRASSIER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_BUCELLARII_GUARD', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_BUCELLARII_GUARD', 	'PROMOTION_SPUE_BASELIUS'),
		('UNIT_SPUE_BUCELLARII_GUARD', 	'PROMOTION_SPUE_BUCELLARII_GUARD');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	 BuildingClassType)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    	SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  	UnitAIType)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 						FlavorType, Flavor)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 		ResourceType, Cost)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD',	 	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';

-- 贝利撒留甲骑兵
INSERT INTO Units 	
		(Type, 									Class, 								PrereqTech, PolicyType,				RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,								Strategy,	Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 		UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	'UNITCLASS_SPUE_BUCELLARII_GUARD',	PrereqTech, 'POLICY_SPUE_BASELIUS', Combat,			Combat,	1, 	   ExtraMaintenanceCost,	Special, -1,	FaithCost, 	-1,				   RequiresFaithPurchaseEnabled, Moves,   0,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD_ELITE',	'TXT_KEY_CIV5_SPUE_BUCELLARII_GUARD_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_BUCELLARII_GUARD_ELITE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_CUIRASSIER', 	'ART_DEF_UNIT_SPUE_HEAVY_CAVALRY',	0,					'SPUE_BUCELLARI_FLAG_ATLAS',	30,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

UPDATE Units SET ProjectPrereq = 'PROJECT_BUCELLARII_TRAINING' WHERE Type = 'UNIT_SPUE_BUCELLARII_GUARD_ELITE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 								UnitClassType)
VALUES	('UNIT_SPUE_BUCELLARII_GUARD_ELITE',	'UNITCLASS_SPUE_CUIRASSIER');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 								PromotionType)
VALUES	('UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	'PROMOTION_ANTI_DEBUFF'),
		('UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	'PROMOTION_SPUE_BASELIUS'),
		('UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	'PROMOTION_SPUE_BUCELLARII_GUARD'),
		('UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	'PROMOTION_SPUE_BUCELLARII_GUARD_ELITE');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	 		BuildingClassType)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD_ELITE',	 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    			SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD_ELITE', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  		  UnitAIType)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD_ELITE',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 								FlavorType, Flavor)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD_ELITE',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	 			ResourceType, Cost)
SELECT	'UNIT_SPUE_BUCELLARII_GUARD_ELITE',	 	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- 海洋之火 -- 赞助中古辅助单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_OCEAN_FIRE',		'TXT_KEY_UNIT_SPUE_OCEAN_FIRE',		'UNIT_SPUE_OCEAN_FIRE',	2);

INSERT INTO Units 	
		(Type, 						Class, 							PrereqTech, 	PolicyType,				RangedCombat,	Combat,		Range, ExtraMaintenanceCost,						Special, Cost,	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,							Strategy,	Help,									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,				NoMinorGifts)
SELECT	'UNIT_SPUE_OCEAN_FIRE', 	'UNITCLASS_SPUE_OCEAN_FIRE', 	PrereqTech, 	'POLICY_SPUE_BASELIUS', Combat,			Combat,	 	2, 	   ExtraMaintenanceCost + ExtraMaintenanceCost,	Special, Cost, 	Cost, 		HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_OCEAN_FIRE',	'TXT_KEY_CIV5_SPUE_OCEAN_FIRE_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_OCEAN_FIRE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_OCEAN_FIRE',	0,					'SPUE_OCEANF_FLAG_ATLAS',	27,				'SPUE02_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_GALLEASS';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_OCEAN_FIRE',	'UNITCLASS_FRIGATE');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_OCEAN_FIRE', 	'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_OCEAN_FIRE', 	'PROMOTION_SPUE_BASELIUS'),
		('UNIT_SPUE_OCEAN_FIRE', 	'PROMOTION_OCEAN_IMPASSABLE'),
		('UNIT_SPUE_OCEAN_FIRE', 	'PROMOTION_SPUE_OCEAN_FIRE');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				BuildingClassType)
SELECT	'UNIT_SPUE_OCEAN_FIRE',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_GALLEASS';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_OCEAN_FIRE', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GALLEASS';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	UnitAIType)
SELECT	'UNIT_SPUE_OCEAN_FIRE',   	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GALLEASS';

INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_SPUE_OCEAN_FIRE',  	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GALLEASS';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	ResourceType, Cost)
SELECT	'UNIT_SPUE_OCEAN_FIRE',	 	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_GALLEASS';
--==========================================================================================================================	
-- 神州天子之道
--==========================================================================================================================
--==========================================================================================================================	
-- 宝船旗舰 -- 赞助启蒙统帅单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_TREASURE_FLEET',		'TXT_KEY_UNIT_SPUE_TREASURE_FLEET',		'UNIT_SPUE_TREASURE_FLEET',		2);

INSERT INTO Units 	
		(Type, 						Class, 								PrereqTech, PolicyType,				RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,    HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy,										Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo, 						UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_TREASURE_FLEET', 'UNITCLASS_SPUE_TREASURE_FLEET',	PrereqTech, 'POLICY_SPUE_EMPEROR',	RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 	Cost + Cost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_TREASURE_FLEET',		'TXT_KEY_CIV5_SPUE_TREASURE_FLEET_TEXT', 	'TXT_KEY_PROMOTION_NAVAL_RANGED_SHIP_STRATEGY', 'TXT_KEY_UNIT_SPUE_TREASURE_FLEET_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, 'UNITCLASS_HEAVY_CRUISER', 'ART_DEF_UNIT_SPUE_TREASURE_FLEET',	0,					'SPUE_CAPTAIN_FLAG_ATLAS',	54,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_ZHENGHE_FLEET';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_TREASURE_FLEET',	'UNITCLASS_HEAVY_CRUISER');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_TREASURE_FLEET', 	'PROMOTION_NAVAL_RANGED_SHIP'),
		('UNIT_SPUE_TREASURE_FLEET', 	'PROMOTION_SPUE_EMPEROR'),
		('UNIT_SPUE_TREASURE_FLEET', 	'PROMOTION_SPUE_TREASURE_FLEET');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 						BuildingClassType)
SELECT	'UNIT_SPUE_TREASURE_FLEET',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_ZHENGHE_FLEET';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_TREASURE_FLEET',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_ZHENGHE_FLEET';

INSERT INTO Unit_AITypes 	
		(UnitType, 						UnitAIType)
SELECT	'UNIT_SPUE_TREASURE_FLEET',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_ZHENGHE_FLEET';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  	 FlavorType, Flavor)
SELECT	'UNIT_SPUE_TREASURE_FLEET',	 FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_ZHENGHE_FLEET';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   	   ResourceType, Cost)
SELECT	'UNIT_SPUE_TREASURE_FLEET',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_ZHENGHE_FLEET';
--==========================================================================================================================	
-- 神机营 -- 赞助启蒙单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit,					MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_SHENJI_MUSKETEER',		'TXT_KEY_UNIT_SPUE_SHENJI_MUSKETEER',	'UNIT_SPUE_SHENJI_MUSKETEER',	4);

INSERT INTO Units 	
		(Type, 							Class, 								PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy,	Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 							UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_SHENJI_MUSKETEER', 	'UNITCLASS_SPUE_SHENJI_MUSKETEER', 	PrereqTech, 'POLICY_SPUE_EMPEROR', 	RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   0,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SHENJI_MUSKETEER',	'TXT_KEY_CIV5_SPUE_SHENJI_MUSKETEER_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_SHENJI_MUSKETEER_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SHENJI_MUSKETEER',	0,					'SPUE_VMUSKETMAN_FLAG_ATLAS',	58,				'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MUSKETMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_SHENJI_MUSKETEER',	'UNITCLASS_RIFLEMAN');
		
INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_SHENJI_MUSKETEER', 	'PROMOTION_GUNPOWDER_INFANTRY_COMBAT'),
		('UNIT_SPUE_SHENJI_MUSKETEER', 	'PROMOTION_SPUE_EMPEROR');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 	 BuildingClassType)
SELECT	'UNIT_SPUE_SHENJI_MUSKETEER',	 BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				      SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_SHENJI_MUSKETEER', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	    UnitAIType)
SELECT	'UNIT_SPUE_SHENJI_MUSKETEER',   UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MUSKETMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 					   FlavorType, Flavor)
SELECT	'UNIT_SPUE_SHENJI_MUSKETEER',  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MUSKETMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 	     ResourceType, Cost)
SELECT	'UNIT_SPUE_SHENJI_MUSKETEER',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MUSKETMAN';
--==========================================================================================================================	
-- 同盟征召护卫舰 -- 赞助启蒙单位
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_CORVETTE',			'TXT_KEY_UNIT_SPUE_CORVETTE',		'UNIT_SPUE_CORVETTE',		6);

INSERT INTO Units 	
		(Type, 					Class, 						PrereqTech, PolicyType,				RangedCombat,	Combat,	  	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,					Civilopedia,						Strategy,	Help,								Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 					UnitFlagIconOffset, UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_CORVETTE', 	'UNITCLASS_SPUE_CORVETTE', 	PrereqTech, 'POLICY_SPUE_EMPEROR',	RangedCombat,	Combat,		Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,	HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_CORVETTE',	'TXT_KEY_CIV5_SPUE_CORVETTE_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_CORVETTE_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_CORVETTE',	0,					'SPUE_CORVETTE_FLAG_ATLAS',	34,				'SPUE_UNITS_ATLAS',	0
FROM Units WHERE Type = 'UNIT_FRIGATE';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_CORVETTE',		'UNITCLASS_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_CORVETTE', 		'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_CORVETTE', 		'PROMOTION_SPUE_EMPEROR'),
		('UNIT_SPUE_CORVETTE', 		'PROMOTION_SPUE_CORVETTE'),
		('UNIT_SPUE_CORVETTE', 		'PROMOTION_NO_CASUALTIES');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_CORVETTE',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_CORVETTE',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_CORVETTE',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_CORVETTE',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FRIGATE';	

-- INSERT INTO Unit_ResourceQuantityRequirements 	
-- 		(UnitType, 				   ResourceType, Cost)
-- SELECT	'UNIT_SPUE_CORVETTE',	   ResourceType, Cost
-- FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FRIGATE';

