--=========================================================================================================================
-- Projects
--==========================================================================================================================
INSERT INTO Projects
		(Type,						Description,						Help,									Civilopedia,								TechPrereq,					MaxGlobalInstances,	MaxTeamInstances,	Cost,	PortraitIndex,	IconAtlas,			PolicyBranchPrereq)
VALUES	('PROJECT_SPUE_ORDER',		'TXT_KEY_PROJECT_SPUE_ORDER',		'TXT_KEY_PROJECT_SPUE_ORDER_HELP',		'TXT_KEY_PROJECT_SPUE_ORDER_PEDIA',			'TECH_ROBOTICS',			1,					1,					900,	29,				'SPBalance_ATLAS',	'POLICY_BRANCH_ORDER'),
		('PROJECT_SPUE_ORDER_TANK',	'TXT_KEY_PROJECT_SPUE_ORDER_TANK',	'TXT_KEY_PROJECT_SPUE_ORDER_TANK_HELP',	'TXT_KEY_PROJECT_SPUE_ORDER_TANK_PEDIA',	'TECH_COMPOSITE',			1,					1,					600,	29,				'SPBalance_ATLAS',	'POLICY_BRANCH_ORDER'),
		('PROJECT_SPUE_FREEDOM',	'TXT_KEY_PROJECT_SPUE_FREEDOM',		'TXT_KEY_PROJECT_SPUE_FREEDOM_HELP',	'TXT_KEY_PROJECT_SPUE_FREEDOM_PEDIA',		'TECH_SATELLITES',			1,					1,					900,	29,				'SPBalance_ATLAS',	'POLICY_BRANCH_FREEDOM'),
		('PROJECT_SPUE_AUTOCRACY',	'TXT_KEY_PROJECT_SPUE_AUTOCRACY',	'TXT_KEY_PROJECT_SPUE_AUTOCRACY_HELP',	'TXT_KEY_PROJECT_SPUE_AUTOCRACY_PEDIA',		'TECH_INTERNET',			1,					1,					900,	29,				'SPBalance_ATLAS',	'POLICY_BRANCH_AUTOCRACY');

INSERT INTO Project_Flavors
		(ProjectType,				FlavorType,				Flavor)
VALUES	('PROJECT_SPUE_ORDER_TANK',	'FLAVOR_MOBILE',		120),
		('PROJECT_SPUE_ORDER',		'FLAVOR_RANGED',		120),
		('PROJECT_SPUE_ORDER',		'FLAVOR_NAVAL',			120),
		('PROJECT_SPUE_FREEDOM',	'FLAVOR_AIR_CARRIER',	120),
		('PROJECT_SPUE_FREEDOM',	'FLAVOR_RANGED',		120),
		('PROJECT_SPUE_AUTOCRACY',	'FLAVOR_RANGED',		120),
		('PROJECT_SPUE_AUTOCRACY',	'FLAVOR_NAVAL',			120);
--==========================================================================================================================	
-- 炎黄帝王坦克-- 秩序 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_NVOVRLORD',			'TXT_KEY_UNIT_SPUE_NVOVRLORD',				'UNIT_SPUE_NVOVRLORD',		1);
 
INSERT INTO Units 	
		(Type, 							Class,						ProjectPrereq,				PrereqTech,		PolicyBranchType,				RangedCombat,	Combat,		Range, 	ExtraMaintenanceCost,	Special, Cost, 				FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	   CombatClass, Domain, DefaultUnitAI, 		Description,						Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,	XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo,					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_NVOVRLORD', 			'UNITCLASS_SPUE_NVOVRLORD', 'PROJECT_SPUE_ORDER_TANK',	PrereqTech,		'POLICY_BRANCH_ORDER',			400,			400,	    1, 		ExtraMaintenanceCost,	Special, Cost+Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves - 2,   CombatClass, Domain, 'UNITAI_PARADROP', 	'TXT_KEY_UNIT_SPUE_NVOVRLORD',		'TXT_KEY_CIV5_SPUE_NVOVRLORD_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_NVOVRLORD_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, null, 			XPValueAttack, XPValueDefense, null, 						'ART_DEF_UNIT_SPUE_NVOVRLORD',	0,					'SPUE_LORD_FLAG_ATLAS',	3,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MAIN_BATTLE_TANK';

UPDATE Units SET SpecialCargo = 'SPECIALUNIT_NUKE', DomainCargo = 'DOMAIN_AIR'
WHERE Type = 'UNIT_SPUE_NVOVRLORD';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	PromotionType)
SELECT	'UNIT_SPUE_NVOVRLORD',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK';

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_SPUE_NVOVRLORD', 	'PROMOTION_SPUE_NVOVRLORD'),
		('UNIT_SPUE_NVOVRLORD', 	'PROMOTION_CAN_FULL_FIRE'),
		-- ('UNIT_SPUE_NVOVRLORD', 	'PROMOTION_CORPS_1'),
		-- ('UNIT_SPUE_NVOVRLORD', 	'PROMOTION_CORPS_2'),
		('UNIT_SPUE_NVOVRLORD', 	'PROMOTION_NUKE_IMMUNE'),
		('UNIT_SPUE_NVOVRLORD', 	'PROMOTION_ANTI_DEBUFF');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	BuildingClassType)
SELECT	'UNIT_SPUE_NVOVRLORD',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				SelectionSound, 				FirstSelectionSound)
SELECT	'UNIT_SPUE_NVOVRLORD',  'AS2D_SELECT_SPUE_NVOVRLORD', 	'AS2D_BIRTH_SPUE_NVOVRLORD'
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK';

INSERT INTO Unit_AITypes 	
		(UnitType, 				UnitAIType)
SELECT	'UNIT_SPUE_NVOVRLORD',  UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  FlavorType, Flavor)
SELECT	'UNIT_SPUE_NVOVRLORD',    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  ResourceType, Cost)
SELECT	'UNIT_SPUE_NVOVRLORD',    ResourceType, Cost + Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_MAIN_BATTLE_TANK';
--==========================================================================================================================	
-- SUPER 055-- 秩序 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_ORDER_SUPER_055',		'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055',		'UNIT_SPUE_ORDER_SUPER_055',		4);
 
INSERT INTO Units 	
		(Type, 							Class,							  ProjectPrereq,		PrereqTech,		PolicyBranchType,		RangedCombat,	Combat,		Range, 	AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	   CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,								UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_SUPER_055', 	'UNITCLASS_SPUE_ORDER_SUPER_055', 'PROJECT_SPUE_ORDER',	PrereqTech,		'POLICY_BRANCH_ORDER',	450,	        450,	    3, 		10,					ExtraMaintenanceCost,	Special, Cost+Cost, FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves + 3,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055',	'TXT_KEY_CIV5_SPUE_ORDER_SUPER_055_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_SUPER_055_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SUPER_055_WARSHIP',	0,					'SPUE_S055_FLAG_ATLAS',	0,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MODERN_DESTROYER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 	  PromotionType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MODERN_DESTROYER';

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_ORDER_SUPER_055', 	'PROMOTION_SPUE_ORDER_SUPER_055'),
		('UNIT_SPUE_ORDER_SUPER_055', 	'PROMOTION_NUKE_IMMUNE'),
		('UNIT_SPUE_ORDER_SUPER_055', 	'PROMOTION_ANTI_DEBUFF');


INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	  BuildingClassType)
SELECT	'UNIT_SPUE_ORDER_SUPER_055',  BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MODERN_DESTROYER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						SelectionSound, 					FirstSelectionSound)
VALUES	('UNIT_SPUE_ORDER_SUPER_055',  'AS2D_SELECT_SPUE_ORDER_SUPER_055', 'AS2D_BIRTH_SPUE_ORDER_SUPER_055');


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
		(Type, 							Class,						PrereqTech,		PolicyBranchType,		RangedCombat,	Combat,		Range, 	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	   CombatClass, Domain, DefaultUnitAI, Description,							Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, 		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 	UnitArtInfo,				UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_KV2', 			'UNITCLASS_SPUE_ORDER_KV2', PrereqTech,		'POLICY_BRANCH_ORDER',	Combat,			Combat,	    1, 		ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves - 2,   CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_KV2',		'TXT_KEY_CIV5_SPUE_ORDER_KV2_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_KV2_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_BVR_COMBAT', 	XPValueAttack, XPValueDefense, 'UNITCLASS_MODERN_ARMOR', 	'ART_DEF_UNIT_SPUE_KV2',	0,					'SPUE_SKV2_FLAG_ATLAS',	1,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_TANK';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_ORDER_KV2',		'UNITCLASS_MODERN_ARMOR');

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
		(UnitType, 				SelectionSound, 				FirstSelectionSound)
SELECT	'UNIT_SPUE_ORDER_KV2',  'AS2D_SELECT_SPUE_ORDER_KV2', 	'AS2D_BIRTH_SPUE_ORDER_KV2'
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
		(Type, 								Class,							PrereqTech,		PolicyBranchType,		RangedCombat,	Combat,		Range,	AirInterceptRange, Immobile,	AirUnitCap,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,						Civilopedia,								Strategy, Help,										Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_ORDER_SU47', 			'UNITCLASS_SPUE_ORDER_SU47', 	PrereqTech,		'POLICY_BRANCH_ORDER',	RangedCombat,	Combat,	    Range,	AirInterceptRange, Immobile,	AirUnitCap,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ORDER_SU47',		'TXT_KEY_CIV5_SPUE_ORDER_SU47_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_ORDER_SU47_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SU47',	0,					'SPUE_SU47_FLAG_ATLAS',	2,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_INTERCEPTER';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
VALUES	('UNIT_SPUE_ORDER_SU47',	'UNITCLASS_JET_FIGHTER');

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
		(UnitType, 				SelectionSound, 				FirstSelectionSound)
SELECT	'UNIT_SPUE_ORDER_SU47', 'AS2D_SELECT_SPUE_ORDER_SU47', 	'AS2D_BIRTH_SPUE_ORDER_SU47'
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
		(Type, 								Class,							  		ProjectPrereq,			PrereqTech, 		PolicyBranchType,		RangedCombat,	Combat,		Range, 	SpecialCargo,	DomainCargo, ExtraMaintenanceCost,	AirInterceptRange,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy, Help,											Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER', 	'UNITCLASS_SPUE_FREEDOM_HELICARRIER', 	'PROJECT_SPUE_FREEDOM',	'TECH_SATELLITES', 'POLICY_BRANCH_FREEDOM',	RangedCombat,	500,		Range, 	SpecialCargo,	DomainCargo, ExtraMaintenanceCost,	AirInterceptRange,	Special, Cost+Cost, FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FREEDOM_HELICARRIER',	'TXT_KEY_CIV5_SPUE_FREEDOM_HELICARRIER_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_FREEDOM_HELICARRIER_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_HELICARRIER',	0,					'SPUE_HELI_FLAG_ATLAS',	4,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_SUPER_CARRIER';

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
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_NUKE_IMMUNE'),
		('UNIT_SPUE_FREEDOM_HELICARRIER', 	'PROMOTION_ANTI_DEBUFF');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	  		BuildingClassType)
SELECT	'UNIT_SPUE_FREEDOM_HELICARRIER',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_NUCLEAR_CARRIER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						 	SelectionSound, 							FirstSelectionSound)
VALUES	('UNIT_SPUE_FREEDOM_HELICARRIER', 	'AS2D_SELECT_SPUE_FREEDOM_HELICARRIER', 	'AS2D_BIRTH_SPUE_FREEDOM_HELICARRIER');

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

INSERT INTO SPCarrierTransferPromotions
        (CarrierPromotionType,                      FighterPromotionType)
VALUES	('PROMOTION_SPUE_FREEDOM_HELICARRIER',		'PROMOTION_SPUE_FREEDOM_HELICARRIER_FIGHTER');
--==========================================================================================================================	
-- 喷火-- 自由 解锁 
--==========================================================================================================================
INSERT INTO UnitClasses
		(Type,									Description,								DefaultUnit,						MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_FREEDOM_SPITFIRE',		'TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE',		'UNIT_SPUE_FREEDOM_SPITFIRE',		6);
 
INSERT INTO Units 	
		(Type, 							Class,								PrereqTech, PolicyBranchType,			RangedCombat,	Combat,		Range,	AirInterceptRange, Immobile,	AirUnitCap,	RangeAttackOnlyInDomain,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy, Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FREEDOM_SPITFIRE', 	'UNITCLASS_SPUE_FREEDOM_SPITFIRE', 	PrereqTech, 'POLICY_BRANCH_FREEDOM',	RangedCombat,	Combat,	    Range,	AirInterceptRange, Immobile,	AirUnitCap,	RangeAttackOnlyInDomain,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE',		'TXT_KEY_CIV5_SPUE_FREEDOM_SPITFIRE_TEXT', 		Strategy, 'TXT_KEY_UNIT_SPUE_FREEDOM_SPITFIRE_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_SPITFIRE',	0,					'SPUE_SPIT_FLAG_ATLAS',	5,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_FIGHTER';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_FREEDOM_SPITFIRE',	'UNITCLASS_INTERCEPTER');

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
		(Type, 								Class,									PrereqTech, 			PolicyBranchType,			RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,									Strategy, Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,						UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_FREEDOM_LONG_BEACH', 	'UNITCLASS_SPUE_FREEDOM_LONG_BEACH', 	'TECH_NUCLEAR_FISSION', 'POLICY_BRANCH_FREEDOM',	RangedCombat,	Combat,	    Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FREEDOM_LONG_BEACH',		'TXT_KEY_CIV5_SPUE_FREEDOM_LONG_BEACH_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_FREEDOM_LONG_BEACH_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_LONG_BEACH',	0,					'SPUE_CGN9_FLAG_ATLAS',	6,				'SPUE_IDEO_ATLAS',	1
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
		(Type, 									Class,										ProjectPrereq,				PrereqTech, 		PolicyBranchType,			RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,										Civilopedia,										Strategy, Help,														Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'UNITCLASS_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROJECT_SPUE_AUTOCRACY',	'TECH_INTERNET', 	'POLICY_BRANCH_AUTOCRACY',	1060,			1060,	    6, 			5,					60,						Special, 4500, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, 8,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',		'TXT_KEY_CIV5_SPUE_AUTOCRACY_JUFORTRESSSHIP_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_JUFORTRESSSHIP',	0,					'SPUE_HEAD_FLAG_ATLAS',	12,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions	
		(UnitType, 				 				PromotionType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_FUTURE_BATTLESHIP';

INSERT INTO Unit_FreePromotions
		(UnitType, 								PromotionType)
VALUES	('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_SPUE_AUTOCRACY_JUFORTRESS'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_SPUE_AUTOCRACY_JUFORTRESSSHIP'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_NUKE_IMMUNE'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROMOTION_ANTI_DEBUFF');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 				BuildingClassType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MISSILE_CRUISER';

--AS3D_UNIT_MODERN_ARMOR_FORTIFY
INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						 		SelectionSound, 								FirstSelectionSound)
VALUES	('UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',  'AS2D_SELECT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'AS2D_BIRTH_SPUE_AUTOCRACY_JUFORTRESSSHIP');

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
		(Type, 									Class,										ProjectPrereq,				PrereqTech, 		PolicyBranchType,			RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,										Civilopedia,										Strategy, Help,														Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'UNITCLASS_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'PROJECT_SPUE_AUTOCRACY',	'TECH_INTERNET', 	'POLICY_BRANCH_AUTOCRACY',	1060,			1060,	    6, 			AirInterceptRange,	60,						Special, -1, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, 8,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',		'TXT_KEY_CIV5_SPUE_AUTOCRACY_JUFORTRESSSHIP_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_JUFORTRESSHEAD',	0,					'SPUE_HEAD_FLAG_ATLAS', 8,				'SPUE_IDEO_ATLAS',	1
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
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_ANTI_DEBUFF'),
		('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD', 	'PROMOTION_NUKE_IMMUNE');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 				BuildingClassType)
SELECT	'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',  	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_MISSILE_CRUISER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						 		SelectionSound, 								FirstSelectionSound)
VALUES	('UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',  'AS2D_SELECT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 	'AS2D_BIRTH_SPUE_AUTOCRACY_JUFORTRESSSHIP');

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
		(Type, 							Class,								PrereqTech, PolicyBranchType,			RangedCombat,	Combat,		Range, 		ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,								Strategy, Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,					UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_AUTOCRACY_PANZERG', 	'UNITCLASS_SPUE_AUTOCRACY_PANZERG', PrereqTech, 'POLICY_BRANCH_AUTOCRACY',	RangedCombat,	Combat,	   	Range, 		ExtraMaintenanceCost,	Special, Cost, 		FaithCost, -1,					RequiresFaithPurchaseEnabled, Moves,   	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_PANZERG',		'TXT_KEY_CIV5_SPUE_AUTOCRACY_PANZERG_TEXT', Strategy, 'TXT_KEY_UNIT_SPUE_AUTOCRACY_PANZERG_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_PANZERG',	0,					'SPUE_PANG_FLAG_ATLAS',	9,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_INFANTRY';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
VALUES	('UNIT_SPUE_AUTOCRACY_PANZERG',	'UNITCLASS_MOTORISED_INFANTRY');

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
