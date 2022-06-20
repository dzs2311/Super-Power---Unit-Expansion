--==========================================================================================================================	
-- 罗马禁卫军 -- 传统解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_PRAETORIAN',		'TXT_KEY_UNIT_SPUE_PRAETORIAN',		'UNIT_SPUE_PRAETORIAN',		1);
 
INSERT INTO Units 	
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts,	WorkRate)
SELECT	'UNIT_SPUE_PRAETORIAN', 	'UNITCLASS_SPUE_PRAETORIAN', PrereqTech, 'POLICY_TRADITION',	RangedCombat,	30,	Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, 3,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_PRAETORIAN',	'TXT_KEY_CIV5_SPUE_PRAETORIAN_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_PRAETORIAN_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_GUNPOWDER', XPValueAttack, XPValueDefense, 'UNITCLASS_MUSKETMAN', 'ART_DEF_UNIT_SPUE_PRAETORIAN',	14,	'SPUE_UNIT_FLAG_ATLAS',	17,	'SPUE_UNITS_ATLAS',	1,	200
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
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_WEIYANG',		'TXT_KEY_UNIT_SPUE_WEIYANG',			'UNIT_SPUE_WEIYANG',		2);

INSERT INTO Units 	
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_WEIYANG', 	'UNITCLASS_SPUE_WEIYANG', PrereqTech, 'POLICY_TRADITION',	RangedCombat,	30,	Range, Special, -1, -1, FaithCost, RequiresFaithPurchaseEnabled, 3,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_WEIYANG',	'TXT_KEY_CIV5_SPUE_WEIYANG_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_WEIYANG_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_GUNPOWDER', XPValueAttack, XPValueDefense, 'UNITCLASS_MUSKETMAN', 'ART_DEF_UNIT_SPUE_HANGUARD',	3,	'SPUE_UNIT_FLAG2_ATLAS',	19,	'SPUE_UNITS_ATLAS',	1
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
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_NEW', 	'UNITCLASS_SPUE_KNIGHT_NEW', PrereqTech, 'POLICY_LIBERTY',	RangedCombat,	Combat,	Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_NEW',	'TXT_KEY_CIVILOPEDIA_UNITS_MEDIEVAL_KNIGHT_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_KNIGHT_NEW_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_KNIGHT_NEW',	0,	'SPUE_KNKN_FLAG_ATLAS',	32,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_KNIGHT_NEW',	'UNITCLASS_LANCER');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_CORPS_1'),
		('UNIT_SPUE_KNIGHT_NEW', 	'PROMOTION_SPUE_KNIGHT_NEW');

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
SELECT	'UNIT_SPUE_KNIGHT_NEW', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================	
-- 采邑骑士 -- 自主解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit)
VALUES	('UNITCLASS_SPUE_KNIGHT_NEW1',		'TXT_KEY_UNIT_SPUE_KNIGHT_NEW1',	'UNIT_SPUE_KNIGHT_NEW1');

INSERT INTO Units 	
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_KNIGHT_NEW1', 	'UNITCLASS_SPUE_KNIGHT_NEW1', PrereqTech, 'POLICY_LIBERTY',	RangedCombat,	Combat,	Range, Special, -1, -1, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_KNIGHT_NEW1',	'TXT_KEY_CIVILOPEDIA_UNITS_MEDIEVAL_KNIGHT_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_KNIGHT_NEW1_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_KNIGHT',	25,	'UNIT_FLAG_ATLAS',	26,	'UNIT_ATLAS_1',	1
FROM Units WHERE Type = 'UNIT_KNIGHT';

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
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_KNIGHT_NEW1',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				  UnitAIType)
SELECT	'UNIT_SPUE_KNIGHT_NEW1',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				 FlavorType, Flavor)
SELECT	'UNIT_SPUE_KNIGHT_NEW1', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_KNIGHT_NEW1', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';

--==========================================================================================================================	
-- 羽林骑 -- 荣誉解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_YULIN_CAVALRY',	'TXT_KEY_UNIT_SPUE_YULIN_CAVALRY',	'UNIT_SPUE_YULIN_CAVALRY',	2);

INSERT INTO Units 	
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_YULIN_CAVALRY', 	'UNITCLASS_SPUE_YULIN_CAVALRY', 'TECH_HORSEBACK_RIDING', 'POLICY_HONOR',	RangedCombat,	Combat,	Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_YULIN_CAVALRY',	'TXT_KEY_CIV5_SPUE_YULIN_CAVALRY_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_YULIN_CAVALRY_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_YULIN_CAVALRY',	0,	'SPUE_YLCA_FLAG_ATLAS',	18,	'SPUE_UNITS_ATLAS',	1
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
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, HurryCostModifier, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_ROHAN_CAVALRY', 	'UNITCLASS_SPUE_ROHAN_CAVALRY', 'TECH_HORSEBACK_RIDING', 'POLICY_HONOR',	RangedCombat,	30,	Range, Special, -1, -1, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY',	'TXT_KEY_CIV5_SPUE_ROHAN_CAVALRY_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_ROHAN_CAVALRY_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_ROHAN_CAVALRY',	12,	'SPUE_UNIT_FLAG_ATLAS',	20,	'SPUE_UNITS_ATLAS',	1
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
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_FUCHUAN', 	'UNITCLASS_SPUE_FUCHUAN', PrereqTech, 'POLICY_EXPLORATION',	RangedCombat,	Combat,	Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FUCHUAN',	'TXT_KEY_CIV5_SPUE_FUCHUAN_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_FUCHUAN_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FUCHUAN',	2,	'SPUE_UNIT_FLAG2_ATLAS',	21,	'SPUE_UNITS_ATLAS',	1
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
-- 热气球 -- 理性解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,							DefaultUnit)
VALUES	('UNITCLASS_SPUE_HOT_AIR_BALLOON',		'TXT_KEY_UNIT_SPUE_HOT_AIR_BALLOON',	'UNIT_SPUE_HOT_AIR_BALLOON');

INSERT INTO Units 	
		(Type, 							Class,								PrereqTech,		PolicyType,				RangedCombat,	Combat,	  Range, Special, Cost, HurryCostModifier,	FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass,				Domain,		 DefaultUnitAI,		Description,						Civilopedia,								Strategy,								 Help,									   Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset,		UnitFlagAtlas,				PortraitIndex, 	IconAtlas,			NoMinorGifts)
VALUES	('UNIT_SPUE_HOT_AIR_BALLOON', 	'UNITCLASS_SPUE_HOT_AIR_BALLOON',	'TECH_ASTRONOMY', 'POLICY_RATIONALISM',	25,				25,		  1,	 null,	  120,	33,					-1,		   -1,							 6,		  'UNITCOMBAT_HELICOPTER', 'DOMAIN_LAND', 'UNITAI_EXPLORE', 'TXT_KEY_UNIT_SPUE_HOT_AIR_BALLOON',	'TXT_KEY_CIV5_SPUE_HOT_AIR_BALLOON_TEXT', 	'TXT_KEY_SP_UNITS_RECON_UNITS_STRATEGY', 'TXT_KEY_UNIT_SPUE_HOT_AIR_BALLOON_HELP', 1,		1,				 1,					 1,						-1,			10,				   0,				  100,		   null,		 3,			3,				 null,					   'ART_DEF_UNIT_SPUE_HOT_AIR_BALLOON',	4,						'SPUE_UNIT_FLAG2_ATLAS',	29,				'SPUE_UNITS_ATLAS',	1);


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
		(Type, 		Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_GREAT_CROSS', 	'UNITCLASS_SPUE_GREAT_CROSS', PrereqTech, 'POLICY_PIETY',	0,	Combat,	0, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GREAT_CROSS',	'TXT_KEY_CIV5_SPUE_GREAT_CROSS_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_GREAT_CROSS_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, 'UNITCLASS_SPUE_MORTAR', 'ART_DEF_UNIT_SPUE_GREAT_CROSS',	0,	'SPUE_CROS_FLAG_ATLAS',	30,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_TREBUCHET';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_GREAT_CROSS',	'UNITCLASS_SPUE_MORTAR');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_GREAT_CROSS', 	'PROMOTION_SPUE_GREAT_CROSS');


--INSERT INTO Unit_BuildingClassRequireds 	
--		(UnitType, 					BuildingClassType)
--SELECT	'UNIT_SPUE_GREAT_CROSS',	BuildingClassType
--FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_TREBUCHET';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_GREAT_CROSS',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_TREBUCHET';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_GREAT_CROSS',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_TREBUCHET';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_GREAT_CROSS',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_TREBUCHET';	

--INSERT INTO Unit_ResourceQuantityRequirements 	
--		(UnitType, 				   ResourceType, Cost)
--SELECT	'UNIT_SPUE_GREAT_CROSS',	   ResourceType, Cost
--FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_TREBUCHET';

--==========================================================================================================================	
-- 达芬奇坦克 -- 美学解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_DVC_TANK',			'TXT_KEY_UNIT_SPUE_DVC_TANK',		'UNIT_SPUE_DVC_TANK',		2);

INSERT INTO Units 	
		(Type, 						Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_DVC_TANK', 	'UNITCLASS_SPUE_DVC_TANK', 'TECH_ACOUSTICS', 'POLICY_AESTHETICS',	RangedCombat,	60,	Range, Special, 260, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_DVC_TANK',	'TXT_KEY_CIV5_SPUE_DVC_TANK_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_DVC_TANK_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_COMBUSTION', XPValueAttack, XPValueDefense, 'UNITCLASS_WWI_TANK', 'ART_DEF_UNIT_SPUE_DVC_TANK',	0,	'SPUE_DVCT_FLAG_ATLAS',	27,	'SPUE_UNITS_ATLAS',	1
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

--==========================================================================================================================	
-- 中古佣兵团 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FCOMPANY',			'TXT_KEY_UNIT_SPUE_FCOMPANY',		'UNIT_SPUE_FCOMPANY',		4);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_FCOMPANY', 	'UNITCLASS_SPUE_FCOMPANY', PrereqTech, 'POLICY_SPUE_FCOMPANY',	0,	30,	0, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FCOMPANY',	'TXT_KEY_CIV5_SPUE_FCOMPANY_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_FCOMPANY_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FCOMPANY',	13,	'SPUE_UNIT_FLAG_ATLAS',	16,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_FCOMPANY',		'UNITCLASS_MUSKETMAN');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_FCOMPANY', 		'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_FCOMPANY', 		'PROMOTION_NO_CASUALTIES');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_FCOMPANY',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FCOMPANY',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_FCOMPANY',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_FCOMPANY',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_FCOMPANY',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_UniqueNames	
		(UnitType, 					UniqueName)
VALUES	('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME1'),
		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME2'),
		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME3'),
		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME4'),
		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME5'),
		('UNIT_SPUE_FCOMPANY',		'TXT_KEY_UNIT_SPUE_FCOMPANY_NAME6');
--==========================================================================================================================	
-- 里尔火炮佣兵 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_LIL_BOMBARD',		'TXT_KEY_UNIT_SPUE_LIL_BOMBARD',	'UNIT_SPUE_LIL_BOMBARD',	3);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_LIL_BOMBARD', 'UNITCLASS_SPUE_LIL_BOMBARD', PrereqTech, 'POLICY_SPUE_LIL_BOMBARD', RangedCombat, Combat, Range, Special, 150, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_LIL_BOMBARD',	'TXT_KEY_CIV5_SPUE_LIL_BOMBARD_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_LIL_BOMBARD_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_LIL_BOMBARD',	0,	'SPUE_LILBOMB_FLAG_ATLAS',	40,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_CULVERIN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_LIL_BOMBARD',	'UNITCLASS_CANNON');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_LIL_BOMBARD', 	'PROMOTION_CITY_SIEGE'),
		('UNIT_SPUE_LIL_BOMBARD', 	'PROMOTION_NO_CASUALTIES');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 					BuildingClassType)
SELECT	'UNIT_SPUE_LIL_BOMBARD',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CANNON';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_LIL_BOMBARD',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_AITypes 	
		(UnitType, 					UnitAIType)
SELECT	'UNIT_SPUE_LIL_BOMBARD',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CANNON';

INSERT INTO Unit_Flavors 	
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_LIL_BOMBARD',	   FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CANNON';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_LIL_BOMBARD',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CANNON';
--==========================================================================================================================	
-- 南洋海盗船 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_SSPRIVATEER',		'TXT_KEY_UNIT_SPUE_SSPRIVATEER',	'UNIT_SPUE_SSPRIVATEER',	2);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_SSPRIVATEER', 'UNITCLASS_SPUE_SSPRIVATEER', PrereqTech, 'POLICY_SPUE_SSPRIVATEER', 100,	100,	 2, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SSPRIVATEER',	'TXT_KEY_CIV5_SPUE_SSPRIVATEER_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_SSPRIVATEER_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SSPRIVATEER',	0,	'SPUE_SSPRIV_FLAG_ATLAS',	44,	'SPUE_UNITS_ATLAS',	1
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
		(UnitType, 				   FlavorType, Flavor)
SELECT	'UNIT_SPUE_SSPRIVATEER',	  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FRIGATE';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_SSPRIVATEER',   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FRIGATE';
--==========================================================================================================================	
-- 热那亚弩手 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_GENOAXBOW',		'TXT_KEY_UNIT_SPUE_GENOAXBOW',		'UNIT_SPUE_GENOAXBOW',		3);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_GENOAXBOW', 'UNITCLASS_SPUE_GENOAXBOW', PrereqTech, 'POLICY_SPUE_GENOAXBOW', RangedCombat,	Combat,	 Range, Special, 60, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_GENOAXBOW',	'TXT_KEY_CIV5_SPUE_GENOAXBOW_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_GENOAXBOW_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_GENOAXBOW',	0,	'SPUE_GENOAX_FLAG_ATLAS',	43,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_CROSSBOWMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_GENOAXBOW',		'UNITCLASS_VOLLEY_GUN');

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

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_GENOAXBOW',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CROSSBOWMAN';
--==========================================================================================================================	
-- 瑞士卫队 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_SWISSGUARD',		'TXT_KEY_UNIT_SPUE_SWISSGUARD',		'UNIT_SPUE_SWISSGUARD',		2);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	Combat, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_SWISSGUARD', 'UNITCLASS_SPUE_SWISSGUARD', PrereqTech, 'POLICY_SPUE_SWISSGUARD',	Combat, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_SWISSGUARD',	'TXT_KEY_CIV5_SPUE_SWISSGUARD_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_SWISSGUARD_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SWISSGUARD',	0,	'SPUE_SWISSG_FLAG_ATLAS',	42,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_SWISSGUARD',	'UNITCLASS_TERCIO');

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

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   ResourceType, Cost)
SELECT	'UNIT_SPUE_SWISSGUARD',	   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';
--==========================================================================================================================	
-- 瓦兰吉佣兵 -- 商业解锁
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,								Description,						DefaultUnit,			MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_VARANGIAN',		'TXT_KEY_UNIT_SPUE_VARANGIAN',		'UNIT_SPUE_VARANGIAN',	3);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_VARANGIAN', 'UNITCLASS_SPUE_VARANGIAN', PrereqTech, 'POLICY_SPUE_VARANGIAN', RangedCombat,	Combat,	 Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_VARANGIAN',	'TXT_KEY_CIV5_SPUE_VARANGIAN_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_VARANGIAN_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_VARANGIAN',	0,	'SPUE_VARANMER_FLAG_ATLAS',	45,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 				UnitClassType)
VALUES	('UNIT_SPUE_VARANGIAN',	'UNITCLASS_MUSKETMAN');
		

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

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_VARANGIAN',	 ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LONGSWORDSMAN';

--==========================================================================================================================	
-- 瓦兰吉卫队 -- 商业解锁
--==========================================================================================================================
--INSERT INTO UnitClasses
--		(Type,								Description,						DefaultUnit,					MaxPlayerInstances)
--VALUES	('UNITCLASS_SPUE_VARANGIAN_GUARD',	'TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD','UNIT_SPUE_VARANGIAN_GUARD',	1);

INSERT INTO Units 	
		(Type, 					Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_VARANGIAN_GUARD', 'UNITCLASS_SPUE_VARANGIAN', PrereqTech, 'POLICY_SPUE_VARANGIAN_GUARD', RangedCombat,	Combat+10,	 Range, Special, -1, FaithCost, RequiresFaithPurchaseEnabled, Moves,   1,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD',	'TXT_KEY_CIV5_SPUE_VARANGIAN_GUARD_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_VARANGIAN_GUARD_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_RIFLING', XPValueAttack, XPValueDefense, 'UNITCLASS_RIFLEMAN', 'ART_DEF_UNIT_SPUE_VARANGIAN_GUARD',	0,	'SPUE_VARANGUARD_FLAG_ATLAS',	41,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_LONGSWORDSMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_VARANGIAN_GUARD',	'UNITCLASS_RIFLEMAN');
		

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_VARANGIAN_GUARD', 	'PROMOTION_INFANTRY_COMBAT'),
		('UNIT_SPUE_VARANGIAN_GUARD', 	'PROMOTION_SHOCK_1'),
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
-- SUPER 055-- 秩序:卫国战争 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ORDER_SUPER_055',		'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055',		'UNIT_SPUE_ORDER_SUPER_055',		1);
 
INSERT INTO Units 	
		(Type, 							Class, PrereqTech, PolicyType,	RangedCombat,	Combat,	  Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	Civilopedia,	Strategy,	Help,	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, UnitFlagIconOffset, UnitFlagAtlas,	PortraitIndex, 	IconAtlas,	NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_SUPER_055', 	'UNITCLASS_SPUE_ORDER_SUPER_055', PrereqTech, 'POLICY_PATRIOTIC_WAR',	RangedCombat + RangedCombat,	Combat + Combat,	Range, Special, Cost, FaithCost, RequiresFaithPurchaseEnabled, 3,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055',	'TXT_KEY_CIV5_SPUE_ORDER_SUPER_055_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SUPER_055_WARSHIP',	0,	'SPUE_S055_FLAG_ATLAS',	25,	'SPUE_UNITS_ATLAS',	1
FROM Units WHERE Type = 'UNIT_CHINESE_052D';

-- INSERT INTO Unit_FreePromotions
-- 		(UnitType, 						PromotionType)
-- VALUES	('UNIT_SPUE_ORDER_SUPER_055', 	'PROMOTION_INFANTRY_COMBAT'),
-- 		('UNIT_SPUE_ORDER_SUPER_055', 	'PROMOTION_SPUE_ORDER_SUPER_055');

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	  PromotionType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_CHINESE_052D';

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	  BuildingClassType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_CHINESE_052D';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 	  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_CHINESE_052D';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  UnitAIType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_CHINESE_052D';

INSERT INTO Unit_Flavors 	
		(UnitType, 				FlavorType, Flavor)
SELECT	'UNIT_SPUE_ORDER_SUPER_055', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_CHINESE_052D';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				 ResourceType, Cost)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_CHINESE_052D';