--=========================================================================================================================
-- Projects
--==========================================================================================================================
INSERT INTO Projects
		(Type,						Description,						Help,									Civilopedia,								TechPrereq,					MaxGlobalInstances,	MaxTeamInstances,	Cost,	PortraitIndex,	IconAtlas)
VALUES	('PROJECT_SPUE_ORDER',		'TXT_KEY_PROJECT_SPUE_ORDER',		'TXT_KEY_PROJECT_SPUE_ORDER_HELP',		'TXT_KEY_PROJECT_SPUE_ORDER_PEDIA',			'TECH_ROBOTICS',			1,					1,					900,	29,				'SPBalance_ATLAS'),
		('PROJECT_SPUE_FREEDOM',	'TXT_KEY_PROJECT_SPUE_FREEDOM',		'TXT_KEY_PROJECT_SPUE_FREEDOM_HELP',	'TXT_KEY_PROJECT_SPUE_FREEDOM_PEDIA',		'TECH_COMPUTERS',			1,					1,					900,	29,				'SPBalance_ATLAS'),
		('PROJECT_SPUE_AUTOCRACY',	'TXT_KEY_PROJECT_SPUE_AUTOCRACY',	'TXT_KEY_PROJECT_SPUE_AUTOCRACY_HELP',	'TXT_KEY_PROJECT_SPUE_AUTOCRACY_PEDIA',		'TECH_ADVANCED_BALLISTICS',	1,					1,					900,	29,				'SPBalance_ATLAS');

INSERT INTO Project_Flavors
		(ProjectType,				FlavorType,				Flavor)
VALUES	('PROJECT_SPUE_ORDER',		'FLAVOR_RANGED',		120),
		('PROJECT_SPUE_ORDER',		'FLAVOR_NAVAL',			120),
		('PROJECT_SPUE_FREEDOM',	'FLAVOR_AIR_CARRIER',	120),
		('PROJECT_SPUE_FREEDOM',	'FLAVOR_RANGED',		120),
		('PROJECT_SPUE_AUTOCRACY',	'FLAVOR_RANGED',		120),
		('PROJECT_SPUE_AUTOCRACY',	'FLAVOR_NAVAL',			120);
--==========================================================================================================================	
-- SUPER 055-- 秩序 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ORDER_SUPER_055',		'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055',		'UNIT_SPUE_ORDER_SUPER_055',		4);
 
INSERT INTO Units 	
		(Type, 							Class,							  ProjectPrereq,		PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, 	AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	   CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,								UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_SUPER_055', 	'UNITCLASS_SPUE_ORDER_SUPER_055', 'PROJECT_SPUE_ORDER',	PrereqTech, 'POLICY_SPUE_ORDER',	450,	        450,	    3, 		10,					ExtraMaintenanceCost,	Special, Cost+Cost, FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves + 3,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055',	'TXT_KEY_CIV5_SPUE_ORDER_SUPER_055_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SUPER_055_WARSHIP',	0,					'SPUE_S055_FLAG_ATLAS',	0,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MODERN_DESTROYER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	  PromotionType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MODERN_DESTROYER';

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_ORDER_SUPER_055', 	'PROMOTION_SPUE_ORDER_SUPER_055');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	  BuildingClassType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MODERN_DESTROYER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 	  SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MODERN_DESTROYER';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  UnitAIType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MODERN_DESTROYER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				        FlavorType, Flavor)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MODERN_DESTROYER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				        ResourceType, Cost)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',    ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MODERN_DESTROYER';
--==========================================================================================================================	
-- KV2-- 秩序 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ORDER_KV2',			'TXT_KEY_UNIT_SPUE_ORDER_KV2',				'UNIT_SPUE_ORDER_KV2',		10);
 
INSERT INTO Units 	
		(Type, 							Class,						PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, 	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	   CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,				UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_KV2', 			'UNITCLASS_SPUE_ORDER_KV2', PrereqTech, 'POLICY_SPUE_ORDER',	Combat,			Combat,	    1, 		ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves - 2,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_KV2',		'TXT_KEY_CIV5_SPUE_ORDER_KV2_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_KV2_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_KV2',	0,					'SPUE_SKV2_FLAG_ATLAS',	1,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_TANK';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	PromotionType)
SELECT	'UNIT_SPUE_ORDER_KV2',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_TANK';

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_ORDER_KV2', 		'PROMOTION_SPUE_ORDER_KV2');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	BuildingClassType)
SELECT	'UNIT_SPUE_ORDER_KV2',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_TANK';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ORDER_KV2',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_TANK';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_ORDER_KV2',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_TANK';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  FlavorType, Flavor)
SELECT	'UNIT_SPUE_ORDER_KV2',    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_TANK';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  ResourceType, Cost)
SELECT	'UNIT_SPUE_ORDER_KV2',    ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_TANK';
--==========================================================================================================================	
-- Su47-- 秩序 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ORDER_SU47',			'TXT_KEY_UNIT_SPUE_ORDER_SU47',				'UNIT_SPUE_ORDER_SU47',		6);
 
INSERT INTO Units 	
		(Type, 								Class,							PrereqTech, PolicyType,				RangedCombat,	Combat,		Range,	AirInterceptRange, Immobile,	AirUnitCap,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_SU47', 			'UNITCLASS_SPUE_ORDER_SU47', 	PrereqTech, 'POLICY_SPUE_ORDER',	RangedCombat,	Combat,	    Range,	AirInterceptRange, Immobile,	AirUnitCap,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_SU47',		'TXT_KEY_CIV5_SPUE_ORDER_SU47_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_SU47_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SU47',	0,					'SPUE_SU47_FLAG_ATLAS',	2,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_INTERCEPTER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	PromotionType)
SELECT	'UNIT_SPUE_ORDER_SU47',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_INTERCEPTER';

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_ORDER_SU47', 		'PROMOTION_SPUE_ORDER_SU47');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	BuildingClassType)
SELECT	'UNIT_SPUE_ORDER_SU47',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_INTERCEPTER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ORDER_SU47',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_INTERCEPTER';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_ORDER_SU47',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_INTERCEPTER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  FlavorType, Flavor)
SELECT	'UNIT_SPUE_ORDER_SU47',    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_INTERCEPTER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  ResourceType, Cost)
SELECT	'UNIT_SPUE_ORDER_SU47',    ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_INTERCEPTER';
--==========================================================================================================================	
-- 空天母舰-- 自由 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,									DefaultUnit,							MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FREEDOM_HELICARRIER',		'TXT_KEY_UNIT_SPUE_FREEDOM_HELICARRIER',		'UNIT_SPUE_FREEDOM_HELICARRIER',		3);
 
INSERT INTO Units 	
		(Type, 								Class,							  		ProjectPrereq,			PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, 		ExtraMaintenanceCost,	AirInterceptRange,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy, Help,											Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER', 	'UNITCLASS_SPUE_FREEDOM_HELICARRIER', 	'PROJECT_SPUE_FREEDOM',	PrereqTech, 'POLICY_SPUE_FREEDOM',	RangedCombat,	500,		Range, 		ExtraMaintenanceCost,	AirInterceptRange,	Special, Cost+Cost, FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FREEDOM_HELICARRIER',	'TXT_KEY_CIV5_SPUE_FREEDOM_HELICARRIER_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_FREEDOM_HELICARRIER_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_HELICARRIER',	0,					'SPUE_HELI_FLAG_ATLAS',	4,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_NUCLEAR_CARRIER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	  		PromotionType)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_SUPER_CARRIER';

INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_SPUE_HOVERING'),
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_SPUE_FREEDOM_HELICARRIER'),
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_CARRIER_SUPPLY_1'),
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_CARRIER_SUPPLY_2'),
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_CORPS_1'),
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_CORPS_2');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	  		BuildingClassType)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_NUCLEAR_CARRIER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				 	  		SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',  	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_NUCLEAR_CARRIER';

INSERT INTO Unit_AITypes 	
		(UnitType, 				 	  		UnitAIType)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',  	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_NUCLEAR_CARRIER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				        	FlavorType, Flavor)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_NUCLEAR_CARRIER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				        	ResourceType, Cost)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',    ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_NUCLEAR_CARRIER';
--==========================================================================================================================	
-- 喷火-- 自由 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FREEDOM_SPITFIRE',		'TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE',		'UNIT_SPUE_FREEDOM_SPITFIRE',		6);
 
INSERT INTO Units 	
		(Type, 							Class,								PrereqTech, PolicyType,				RangedCombat,	Combat,		Range,	AirInterceptRange, Immobile,	AirUnitCap,	RangeAttackOnlyInDomain,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy, Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE', 	'UNITCLASS_SPUE_FREEDOM_SPITFIRE', 	PrereqTech, 'POLICY_SPUE_FREEDOM',	RangedCombat,	Combat,	    Range,	AirInterceptRange, Immobile,	AirUnitCap,	RangeAttackOnlyInDomain,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE',		'TXT_KEY_CIV5_SPUE_FREEDOM_SPITFIRE_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SPITFIRE',	0,					'SPUE_SPIT_FLAG_ATLAS',	5,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_FIGHTER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 		PromotionType)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_FIGHTER';

INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_FREEDOM_SPITFIRE', 		'PROMOTION_SPUE_FREEDOM_SPITFIRE');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 		BuildingClassType)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_FIGHTER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE',  	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FIGHTER';

INSERT INTO Unit_AITypes 	
		(UnitType, 						UnitAIType)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE',  	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_FIGHTER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  			FlavorType, Flavor)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE',    	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FIGHTER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  			ResourceType, Cost)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE',    	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FIGHTER';
--==========================================================================================================================	
-- 长滩-- 自由 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FREEDOM_LONG_BEACH',	'TXT_KEY_UNIT_SPUE_FREEDOM_LONG_BEACH',		'UNIT_SPUE_FREEDOM_LONG_BEACH',		1);
 
INSERT INTO Units 	
		(Type, 								Class,									PrereqTech, PolicyType,				RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy, Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH', 	'UNITCLASS_SPUE_FREEDOM_LONG_BEACH', 	PrereqTech, 'POLICY_SPUE_FREEDOM',	RangedCombat,	Combat,	    Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FREEDOM_LONG_BEACH',		'TXT_KEY_CIV5_SPUE_FREEDOM_LONG_BEACH_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_FREEDOM_LONG_BEACH_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_LONG_BEACH',	0,					'SPUE_CGN9_FLAG_ATLAS',	6,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 			PromotionType)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions
		(UnitType, 							PromotionType)
VALUES	('UNIT_SPUE_FREEDOM_LONG_BEACH', 	'PROMOTION_SPUE_FREEDOM_LONG_BEACH');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 			BuildingClassType)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_AITypes 	
		(UnitType, 						 UnitAIType)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  			FlavorType, Flavor)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH',    	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MISSILE_CRUISER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  			ResourceType, Cost)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH',    	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KIROV_BATTLECRUISER';
--==========================================================================================================================	
-- 超级要塞-- 独裁 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,										Description,										DefaultUnit,								MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_AUTOCRACY_JUFORTRESSSHIP',	'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',		'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',		1);

-- 海上堡垒 
INSERT INTO Units 	
		(Type, 									Class,										ProjectPrereq,				PrereqTech, PolicyType,					RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,										Civilopedia,										Strategy, Help,														Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'UNITCLASS_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROJECT_SPUE_AUTOCRACY',	PrereqTech, 'POLICY_SPUE_AUTOCRACY',	1060,			1060,	    6, 			5,					60,						Special, 4500, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, 8,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',		'TXT_KEY_CIV5_SPUE_AUTOCRACY_JUFORTRESSSHIP_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_JUFORTRESSSHIP',	0,					'SPUE_HEAD_FLAG_ATLAS',	12,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 				PromotionType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_FUTURE_BATTLESHIP';

INSERT INTO Unit_FreePromotions
		(UnitType, 								PromotionType)
VALUES	('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_SPUE_AUTOCRACY_JUFORTRESS');
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_SPUE_AUTOCRACY_JUFORTRESSSHIP');
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_CORPS_1'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_CORPS_2');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 				BuildingClassType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						 		SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_AITypes 	
		(UnitType, 						 		UnitAIType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  					FlavorType, Flavor)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',    	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MISSILE_CRUISER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  					ResourceType, Cost)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',    	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MISSILE_CRUISER';

--空中堡垒 
INSERT INTO Units 	
		(Type, 									Class,										ProjectPrereq,				PrereqTech, PolicyType,					RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,										Civilopedia,										Strategy, Help,														Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'UNITCLASS_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROJECT_SPUE_AUTOCRACY',	PrereqTech, 'POLICY_SPUE_AUTOCRACY',	1060,			1060,	    6, 			AirInterceptRange	60,						Special, -1, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, 8,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',		'TXT_KEY_CIV5_SPUE_AUTOCRACY_JUFORTRESSSHIP_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_JUFORTRESSHEAD',	0,					'SPUE_HEAD_FLAG_ATLAS', 8,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 				PromotionType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_FUTURE_BATTLESHIP';

INSERT INTO Unit_FreePromotions
		(UnitType, 								PromotionType)
VALUES	('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_SPUE_AUTOCRACY_JUFORTRESS'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_SPUE_AUTOCRACY_JUFORTRESSHEAD'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_SPUE_HOVERING'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_CORPS_1'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_CORPS_2');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 				BuildingClassType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						 		SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',  	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_AITypes 	
		(UnitType, 						 		UnitAIType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',  	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  					FlavorType, Flavor)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',    	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MISSILE_CRUISER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  					ResourceType, Cost)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',    	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MISSILE_CRUISER';
--==========================================================================================================================	
-- 装甲掷弹兵-- 独裁 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_AUTOCRACY_PANZERG',	'TXT_KEY_UNIT_SPUE_AUTOCRACY_PANZERG',		'UNIT_SPUE_AUTOCRACY_PANZERG',		10);
 
INSERT INTO Units 	
		(Type, 							Class,								PrereqTech, PolicyType,					RangedCombat,	Combat,		Range, 		ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,								Strategy, Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG', 	'UNITCLASS_SPUE_AUTOCRACY_PANZERG', PrereqTech, 'POLICY_SPUE_AUTOCRACY',	RangedCombat,	Combat,	   	Range, 		ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_PANZERG',		'TXT_KEY_CIV5_SPUE_AUTOCRACY_PANZERG_TEXT', Strategy, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_PANZERG_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_PANZERG',	0,					'SPUE_PANG_FLAG_ATLAS',	9,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_INFANTRY';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 		PromotionType)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG',  PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_INFANTRY';

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_AUTOCRACY_PANZERG', 'PROMOTION_SPUE_AUTOCRACY_PANZERG');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 		BuildingClassType)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_INFANTRY';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG',  SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_INFANTRY';

INSERT INTO Unit_AITypes 	
		(UnitType, 						UnitAIType)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_INFANTRY';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  			FlavorType, Flavor)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG',    	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_INFANTRY';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  			ResourceType, Cost)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG',    	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_INFANTRY';
