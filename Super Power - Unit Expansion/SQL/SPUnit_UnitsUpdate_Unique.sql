--==========================================================================================================================
-- Unique:Byzantium
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 						UnitClassType, 					UnitType)
VALUES	('CIVILIZATION_BYZANTIUM',	            'UNITCLASS_PIKEMAN',			'UNIT_SPUE_BYZANTIUM_LIMITANEI'),
		('CIVILIZATION_BYZANTIUM',	            'UNITCLASS_SPUE_YULIN_CAVALRY',	'UNIT_SPUE_BYZANTIUM_TAGMATA');

-- 边防军
INSERT INTO Units 	
		(Type, 			    			   Class, 	PrereqTech, RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost, 	FaithCost,  HurryCostModifier, PurchaseOnly, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,					Strategy,	Help,						    			   Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,       XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass,  UnitArtInfo, 								UnitFlagIconOffset, UnitFlagAtlas,						PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_BYZANTIUM_LIMITANEI',   Class, 	PrereqTech, RangedCombat,	Combat,	Range, ExtraMaintenanceCost,	Special, Cost,	FaithCost,  HurryCostModifier, PurchaseOnly, RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_BYZANTIUM_LIMITANEI',	'TXT_KEY_CIV5_XILIUYING_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_BYZANTIUM_LIMITANEI_HELP',  Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_BALLISTICS',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass,  'ART_DEF_UNIT_SPUE_BYZANTIUM_LIMITANEI',	0,					'UNIT_SPUE_BYZANTIUM_FLAG1_ATLAS',	37,				'SPUE02_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_PIKEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_BYZANTIUM_LIMITANEI',	'UNITCLASS_TERCIO');

INSERT INTO Unit_FreePromotions
		(UnitType, 			PromotionType)
VALUES	('UNIT_SPUE_BYZANTIUM_LIMITANEI', 	'PROMOTION_ANTI_MOUNTED'),
        ('UNIT_SPUE_BYZANTIUM_LIMITANEI', 	'PROMOTION_HALF_CASUALTIES'),
        ('UNIT_SPUE_BYZANTIUM_LIMITANEI', 	'PROMOTION_SPUE_BYZANTIUM_LIMITANEI');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 								BuildingClassType)
SELECT	'UNIT_SPUE_BYZANTIUM_LIMITANEI',		BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_PIKEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 								SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_BYZANTIUM_LIMITANEI',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_PIKEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 								UnitAIType)
SELECT	'UNIT_SPUE_BYZANTIUM_LIMITANEI',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_PIKEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 			    				FlavorType, Flavor)
SELECT	'UNIT_SPUE_BYZANTIUM_LIMITANEI',	    FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_PIKEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 			    				ResourceType, Cost)
SELECT	'UNIT_SPUE_BYZANTIUM_LIMITANEI',	    ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_PIKEMAN';

-- 皇家近卫
INSERT INTO Units 	
		(Type, 					       Class,  PolicyType, PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, Description,	                        Civilopedia,	                                Strategy,   Help,	                                		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                            UnitFlagIconOffset, UnitFlagAtlas,	                	PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_BYZANTIUM_TAGMATA', Class,  PolicyType, PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_BYZANTIUM_TAGMATA',	'TXT_KEY_CIV5_SPUE_BYZANTIUM_TAGMATA_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_BYZANTIUM_TAGMATA_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_BYZANTIUM_TAGMATA',	0,	                'UNIT_SPUE_BYZANTIUM_FLAG2_ATLAS',	38,	            'SPUE02_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_SPUE_YULIN_CAVALRY';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					    UnitClassType)
VALUES	('UNIT_SPUE_BYZANTIUM_TAGMATA',	'UNITCLASS_LANCER');

INSERT INTO Unit_FreePromotions
		(UnitType, 					        PromotionType)
VALUES	('UNIT_SPUE_BYZANTIUM_TAGMATA', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_BYZANTIUM_TAGMATA', 	'PROMOTION_SPUE_BYZANTIUM_TAGMATA');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				       BuildingClassType)
SELECT	'UNIT_SPUE_BYZANTIUM_TAGMATA', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				       SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_BYZANTIUM_TAGMATA', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				       UnitAIType)
SELECT	'UNIT_SPUE_BYZANTIUM_TAGMATA', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				       FlavorType, Flavor)
SELECT	'UNIT_SPUE_BYZANTIUM_TAGMATA', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				        ResourceType, Cost)
SELECT	'UNIT_SPUE_BYZANTIUM_TAGMATA', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================
-- Unique：Rome
--==========================================================================================================================
--==========================================================================================================================
-- Unique:Ottoman
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 						UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_OTTOMAN',	            'UNITCLASS_LANCER',		    'UNIT_SPUE_OTTOMAN_SIPAHI');

INSERT INTO Units 	
		(Type, 					    Class,  BaseSightRange,   PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	                    Civilopedia,	                            Strategy,   Help,	                                	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,      	   XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                    	UnitFlagIconOffset, UnitFlagAtlas,	    PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_OTTOMAN_SIPAHI', Class,  BaseSightRange+2, PrereqTech, RangedCombat,   Combat, Range, Special, Cost, Cost+Cost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves+1, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_OTTOMAN_SIPAHI',	'TXT_KEY_CIV5_SPUE_OTTOMAN_SIPAHI_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_OTTOMAN_SIPAHI_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_COMBINED_ARMS',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_U_OTTOMAN_SIPAHI',	46,	                'UNIT_FLAG_ATLAS',	3,	            'UNIT_ATLAS_2'
FROM Units WHERE Type = 'UNIT_LANCER';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					    UnitClassType)
VALUES	('UNIT_SPUE_OTTOMAN_SIPAHI',	'UNITCLASS_WWI_TANK');

INSERT INTO Unit_FreePromotions
		(UnitType, 					    PromotionType)
VALUES	('UNIT_SPUE_OTTOMAN_SIPAHI', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_OTTOMAN_SIPAHI', 	'PROMOTION_SCOUTING_1'),
		('UNIT_SPUE_OTTOMAN_SIPAHI', 	'PROMOTION_SCOUTING_2'),
		('UNIT_SPUE_OTTOMAN_SIPAHI', 	'PROMOTION_FORMATION_1');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				    BuildingClassType)
SELECT	'UNIT_SPUE_OTTOMAN_SIPAHI', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LANCER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_OTTOMAN_SIPAHI', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_AITypes 	
		(UnitType, 				    UnitAIType)
SELECT	'UNIT_SPUE_OTTOMAN_SIPAHI', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				    FlavorType, Flavor)
SELECT	'UNIT_SPUE_OTTOMAN_SIPAHI', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LANCER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				    ResourceType, Cost)
SELECT	'UNIT_SPUE_OTTOMAN_SIPAHI', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LANCER';
--==========================================================================================================================
-- Unique:China
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 						UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_CHINA',	                'UNITCLASS_KNIGHT',		    'UNIT_SPUE_CHINA_IRON_CAVALRY');

-- 六花甲骑
INSERT INTO Units 	
		(Type, 					        Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	                        Civilopedia,	                                Strategy,   Help,	                                		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,       XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                               UnitFlagIconOffset, UnitFlagAtlas,	                PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_CHINA_IRON_CAVALRY', Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves+1, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_CHINA_IRON_CAVALRY',	'TXT_KEY_CIV5_SPUE_CHINA_IRON_CAVALRY_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_CHINA_IRON_CAVALRY_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_COMBUSTION',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_CHINA_IRON_CAVALRY',	0,	                'UNIT_SPUE_CHINA_FLAG_ATLAS',	0,	            'UNIT_SPUE_CHINA_ATLAS'
FROM Units WHERE Type = 'UNIT_KNIGHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					        UnitClassType)
VALUES	('UNIT_SPUE_CHINA_IRON_CAVALRY',	'UNITCLASS_LANCER');

INSERT INTO Unit_FreePromotions
		(UnitType, 					        PromotionType)
VALUES	('UNIT_SPUE_CHINA_IRON_CAVALRY', 	'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_CHINA_IRON_CAVALRY', 	'PROMOTION_STRONGER_VS_DAMAGED'),
		('UNIT_SPUE_CHINA_IRON_CAVALRY', 	'PROMOTION_IGNORE_TERRAIN_COST'),
		('UNIT_SPUE_CHINA_IRON_CAVALRY', 	'PROMOTION_SPUE_CHINA_IRON_CAVALRY');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				        BuildingClassType)
SELECT	'UNIT_SPUE_CHINA_IRON_CAVALRY', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				        SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_CHINA_IRON_CAVALRY', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				        UnitAIType)
SELECT	'UNIT_SPUE_CHINA_IRON_CAVALRY', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_KNIGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				        FlavorType, Flavor)
SELECT	'UNIT_SPUE_CHINA_IRON_CAVALRY', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_KNIGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				        ResourceType, Cost)
SELECT	'UNIT_SPUE_CHINA_IRON_CAVALRY', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_KNIGHT';
--==========================================================================================================================
-- Unique:America
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 						UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_AMERICA',	            'UNITCLASS_DREADNOUGHT',	'UNIT_SPUE_AMERICA_CONNECTICUT');

INSERT INTO Units 	
		(Type, 					         Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, Description,	                            Civilopedia,	                                Strategy,   Help,	                                      Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,       	  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                              UnitFlagIconOffset, UnitFlagAtlas,	                	PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_AMERICA_CONNECTICUT', Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_AMERICA_CONNECTICUT',	'TXT_KEY_CIV5_SPUE_AMERICA_CONNECTICUT_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_AMERICA_CONNECTICUT_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_SUPERCONDUCTOR',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_AMERICA_CONNECTICUT',	 0,	                'UNIT_SPUE_AMERICAC_FLAG_ATLAS',	1,	            'UNIT_SPUE_AMERICA_ATLAS'
FROM Units WHERE Type = 'UNIT_DREADNOUGHT';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					        UnitClassType)
VALUES	('UNIT_SPUE_AMERICA_CONNECTICUT',	'UNITCLASS_BATTLESHIP');

INSERT INTO Unit_FreePromotions
		(UnitType, 					      PromotionType)
VALUES	('UNIT_SPUE_AMERICA_CONNECTICUT', 'PROMOTION_NAVAL_CAPITAL_SHIP'),
		('UNIT_SPUE_AMERICA_CONNECTICUT', 'PROMOTION_INDIRECT_FIRE'),
		('UNIT_SPUE_AMERICA_CONNECTICUT', 'PROMOTION_SPUE_AMERICA_CONNECTICUT');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				         BuildingClassType)
SELECT	'UNIT_SPUE_AMERICA_CONNECTICUT', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_DREADNOUGHT';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				         SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_AMERICA_CONNECTICUT', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_DREADNOUGHT';

INSERT INTO Unit_AITypes 	
		(UnitType, 				         UnitAIType)
SELECT	'UNIT_SPUE_AMERICA_CONNECTICUT', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_DREADNOUGHT';

INSERT INTO Unit_Flavors 	
		(UnitType, 				         FlavorType, Flavor)
SELECT	'UNIT_SPUE_AMERICA_CONNECTICUT', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_DREADNOUGHT';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				         ResourceType, Cost)
SELECT	'UNIT_SPUE_AMERICA_CONNECTICUT', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_DREADNOUGHT';
--==========================================================================================================================
-- Unique:Russia
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 					UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_RUSSIA',	            'UNITCLASS_RIFLEMAN',		'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT');

INSERT INTO Units 	
		(Type, 					  	 	  		 Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, Description,	                    		Civilopedia,	                        						Strategy,   Help,	                               	  	   		  Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,   		  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                          		 	 UnitFlagIconOffset, UnitFlagAtlas,						PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT',	'TXT_KEY_CIV5_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_MOBILIZATION_T',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT',	 1,	         		 'UNIT_SPUE_RUSSIA_FLAG_ATLAS',		0,	            'UNIT_SPUE_RUSSIA_ATLAS'
FROM Units WHERE Type = 'UNIT_RIFLEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 									UnitClassType)
VALUES	('UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT',	'UNITCLASS_GREAT_WAR_INFANTRY');

INSERT INTO Unit_FreePromotions
		(UnitType, 					  			  PromotionType)
VALUES	('UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', 'PROMOTION_GUNPOWDER_INFANTRY_COMBAT'),
		('UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', 'PROMOTION_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				  	 			 BuildingClassType)
SELECT	'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_RIFLEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				  	 			 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_RIFLEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				  	 			 UnitAIType)
SELECT	'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_RIFLEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  	 			 FlavorType, Flavor)
SELECT	'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_RIFLEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  	 			 ResourceType, Cost)
SELECT	'UNIT_SPUE_RUSSIA_SEMYONOVSKY_REGIMENT', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_RIFLEMAN';
--==========================================================================================================================
-- Unique:Sweden
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 						UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_SWEDEN',	            'UNITCLASS_LANCER',		    	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA');

INSERT INTO Units 	
		(Type, 					    	   Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves,   CombatClass, Domain, DefaultUnitAI, Description,	                    		Civilopedia,	                            Strategy,   Help,	                                			Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,      	   XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                    		UnitFlagIconOffset, UnitFlagAtlas,	    			PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA', Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves+1, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SWEDISH_HAKKAPELIITTA',	'TXT_KEY_CIV5_SWEDISH_HAKKAPELIITTA_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_SWEDISH_HAKKAPELIITTA_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_COMBINED_ARMS',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_U_SWEDISH_HAKKAPELITTA',	6,	                'EXPANSION_UNIT_FLAG_ATLAS',	6,	            'EXPANSION_UNIT_ATLAS_1'
FROM Units WHERE Type = 'UNIT_LANCER';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					    	UnitClassType)
VALUES	('UNIT_SPUE_SWEDISH_HAKKAPELIITTA',	'UNITCLASS_WWI_TANK');

INSERT INTO Unit_FreePromotions
		(UnitType, 					    	PromotionType)
VALUES	('UNIT_SPUE_SWEDISH_HAKKAPELIITTA', 'PROMOTION_KNIGHT_COMBAT'),
		('UNIT_SPUE_SWEDISH_HAKKAPELIITTA', 'PROMOTION_FORMATION_1'),
		('UNIT_SPUE_SWEDISH_HAKKAPELIITTA', 'PROMOTION_STRONGER_VS_DAMAGED'),
		('UNIT_SPUE_SWEDISH_HAKKAPELIITTA', 'PROMOTION_SPUE_SWEDISH_HAKKAPELIITTA');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				    	   BuildingClassType)
SELECT	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_LANCER';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				    	   SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_AITypes 	
		(UnitType, 				    	   UnitAIType)
SELECT	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_LANCER';

INSERT INTO Unit_Flavors 	
		(UnitType, 				    	   FlavorType, Flavor)
SELECT	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_LANCER';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				    	   ResourceType, Cost)
SELECT	'UNIT_SPUE_SWEDISH_HAKKAPELIITTA', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_LANCER';
--==========================================================================================================================
-- Unique:Japan
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 		UnitClassType, 					UnitType)
VALUES	('CIVILIZATION_JAPAN',	'UNITCLASS_GALLEASS',			'UNIT_SPUE_JAPAN_TEKKOUSEN');

-- 铁甲船
INSERT INTO Units 	
		(Type, 					  	 Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, Description,	                    	Civilopedia,	                        	Strategy,   Help,	                               	  Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,  			  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                         UnitFlagIconOffset, UnitFlagAtlas,	                PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_JAPAN_TEKKOUSEN', Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_JAPAN_TEKKOUSEN',	'TXT_KEY_CIV5_SPUE_JAPAN_TEKKOUSEN_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_JAPAN_TEKKOUSEN_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_MARINE_ENGINEERING',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_JAPAN_TEKKOUSEN',	0,	                'UNIT_SPUE_JAPANT_FLAG_ATLAS',	0,	            'UNIT_SPUE_JAPAN_ATLAS'
FROM Units WHERE Type = 'UNIT_GALLEASS';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 				   	  UnitClassType)
VALUES	('UNIT_SPUE_JAPAN_TEKKOUSEN', 'UNITCLASS_FRIGATE');

INSERT INTO Unit_FreePromotions
		(UnitType, 						PromotionType)
VALUES	('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_NAVALMELEE_COMBAT'),
		('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_OCEAN_IMPASSABLE'),
		('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_BOARDING_PARTY_1'),
		('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_BOARDING_PARTY_2'),
		('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_BOARDING_PARTY_3'),
		('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_ARMOR_PLATING_I'),
		('UNIT_SPUE_JAPAN_TEKKOUSEN', 	'PROMOTION_ARMOR_PLATING_II');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				 	 BuildingClassType)
SELECT	'UNIT_SPUE_JAPAN_TEKKOUSEN', BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_GALLEASS';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				  	 SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_JAPAN_TEKKOUSEN', SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_GALLEASS';

INSERT INTO Unit_AITypes 	
		(UnitType, 				  	 UnitAIType)
SELECT	'UNIT_SPUE_JAPAN_TEKKOUSEN', UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_GALLEASS';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  	 FlavorType, Flavor)
SELECT	'UNIT_SPUE_JAPAN_TEKKOUSEN', FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_GALLEASS';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  	 ResourceType, Cost)
SELECT	'UNIT_SPUE_JAPAN_TEKKOUSEN', ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_GALLEASS';
--==========================================================================================================================
-- Unique:England
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 		UnitClassType, 					UnitType)
VALUES	('CIVILIZATION_ENGLAND',	'UNITCLASS_SLOOP_OF_WAR',	'UNIT_SPUE_ENGLAND_GRAND_CARRACK');

INSERT INTO Units 	
		(Type, 								Class, 	PrereqTech,  RangedCombat,	Combat,	Range, 	ExtraMaintenanceCost,	Special, Cost, FaithCost,  HurryCostModifier, PurchaseOnly,	RequiresFaithPurchaseEnabled, Moves,   MoveAfterPurchase,	CombatClass, Domain, DefaultUnitAI, Description,								Civilopedia,										Strategy,	Help,												Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo, 								UnitFlagIconOffset, UnitFlagAtlas,					PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_ENGLAND_GRAND_CARRACK', 	Class, 	PrereqTech,  RangedCombat,	Combat,	Range, 	ExtraMaintenanceCost,	Special, Cost, FaithCost,  1, 				   1, 			RequiresFaithPurchaseEnabled, Moves,   1,					CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_ENGLAND_GRAND_CARRACK',	'TXT_KEY_CIV5_SPUE_ENGLAND_GRAND_CARRACK_TEXT', 	Strategy, 	'TXT_KEY_UNIT_SPUE_ENGLAND_GRAND_CARRACK_HELP', 	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_SONAR', XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_ENGLAND_GRAND_CARRACK',	0,					'UNIT_SPUE_ENGLAND_FLAG_ATLAS', 13,				'SPUE02_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_ENGLAND_GRAND_CARRACK',	'UNITCLASS_LIGHT_IRONCLAD');

INSERT INTO Unit_FreePromotions
		(UnitType, 								PromotionType)
VALUES	('UNIT_SPUE_ENGLAND_GRAND_CARRACK', 	'PROMOTION_NAVAL_HIT_AND_RUN'),
		('UNIT_SPUE_ENGLAND_GRAND_CARRACK', 	'PROMOTION_SPUE_ENGLAND_GRAND_CARRACK');
		
INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 							BuildingClassType)
SELECT	'UNIT_SPUE_ENGLAND_GRAND_CARRACK',	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 							SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_ENGLAND_GRAND_CARRACK',	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_AITypes 	
		(UnitType, 							UnitAIType)
SELECT	'UNIT_SPUE_ENGLAND_GRAND_CARRACK',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_SLOOP_OF_WAR';

INSERT INTO Unit_Flavors 	
		(UnitType, 			  					FlavorType, Flavor)
SELECT	'UNIT_SPUE_ENGLAND_GRAND_CARRACK',	  FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_SLOOP_OF_WAR';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				   			 ResourceType, Cost)
SELECT	'UNIT_SPUE_ENGLAND_GRAND_CARRACK',   ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_SLOOP_OF_WAR';
--==========================================================================================================================
-- Unique:France
--==========================================================================================================================
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 					UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_FRANCE',	            'UNITCLASS_RIFLEMAN',		'UNIT_SPUE_FRANCE_IMPERIAL_GUARD');

INSERT INTO Units 	
		(Type, 					  	 	  	Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, Description,	                    			Civilopedia,	                        			Strategy,   Help,	                               	  	   	Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech,   		XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,                          		 UnitFlagIconOffset, UnitFlagAtlas,						PortraitIndex, 	IconAtlas)
SELECT	'UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 	Class,  PrereqTech, RangedCombat,   Combat, Range, Special, Cost, FaithCost,  HurryCostModifier, RequiresFaithPurchaseEnabled, Moves, CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_FRANCE_IMPERIAL_GUARD',	'TXT_KEY_CIV5_SPUE_FRANCE_IMPERIAL_GUARD_TEXT', 	Strategy,   'TXT_KEY_UNIT_SPUE_FRANCE_IMPERIAL_GUARD_HELP', Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, 'TECH_MOBILIZATION_T',  XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_FRANCE_IMPERIAL_GUARD',	 0,	         		 'UNIT_SPUE_FRANCE_FLAG_ATLAS',		14,	            'SPUE02_UNITS_ATLAS'
FROM Units WHERE Type = 'UNIT_RIFLEMAN';

INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 							UnitClassType)
VALUES	('UNIT_SPUE_FRANCE_IMPERIAL_GUARD',	'UNITCLASS_GREAT_WAR_INFANTRY');

INSERT INTO Unit_FreePromotions
		(UnitType, 					  		PromotionType)
VALUES	('UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 'PROMOTION_GUNPOWDER_INFANTRY_COMBAT'),
		('UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 'PROMOTION_SPUE_FRANCE_IMPERIAL_GUARD');

INSERT INTO Unit_BuildingClassRequireds 	
		(UnitType, 				  	 		BuildingClassType)
SELECT	'UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 	BuildingClassType
FROM Unit_BuildingClassRequireds WHERE UnitType = 'UNIT_RIFLEMAN';

INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 				  	 		SelectionSound, FirstSelectionSound)
SELECT	'UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_RIFLEMAN';

INSERT INTO Unit_AITypes 	
		(UnitType, 				  	 		UnitAIType)
SELECT	'UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_RIFLEMAN';

INSERT INTO Unit_Flavors 	
		(UnitType, 				  	 		FlavorType, Flavor)
SELECT	'UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_RIFLEMAN';	

INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 				  	 		ResourceType, Cost)
SELECT	'UNIT_SPUE_FRANCE_IMPERIAL_GUARD', 	ResourceType, Cost
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_RIFLEMAN';
