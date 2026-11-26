--==========================================================================================================================
-- 超级要塞 变形过场单位（dummy）
-- 2026-11-26
--
-- 用途：玩家点【变形】时，真单位 → 本过场单位（播 fold/unfold）→ 目标真单位。
-- 只活 3.5 秒；Cost = -1 不可建造；AI 侧不生成它。
-- 资产：Art\Units\Policy\11-Autocracy\TransformUnit\（TU_MODEL_fbxskel.gr2 + 4 条动画）
--==========================================================================================================================

-- ----------------------------------------------------------------------------
-- 超级要塞（变形：海→空）
-- ----------------------------------------------------------------------------
INSERT INTO UnitClasses
		(Type,							Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_TU_SEA2AIR',	'TXT_KEY_UNIT_SPUE_TU_SEA2AIR',	'UNIT_SPUE_TU_SEA2AIR',		1);

INSERT INTO Units 	
		(Type, 									Class,										ProjectPrereq,				PrereqTech, 		PolicyBranchType,			RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,										Civilopedia,										Strategy, Help,														Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_TU_SEA2AIR', 	'UNITCLASS_SPUE_TU_SEA2AIR', 	NULL,	NULL, 	'POLICY_BRANCH_AUTOCRACY',	1060,			1060,	    6, 			5,					60,						Special, -1, 		-1, -1,					RequiresFaithPurchaseEnabled, 8,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_TU_SEA2AIR',		'TXT_KEY_CIV5_SPUE_TU_SEA2AIR_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_TU_SEA2AIR_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_TU_SEA2AIR',	0,					'SPUE_HEAD_FLAG_ATLAS',	12,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
SELECT	'UNIT_SPUE_TU_SEA2AIR', PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP';

INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES
('UNIT_SPUE_TU_SEA2AIR', 'PROMOTION_SPUE_TU_TRANSFORMING');


INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_SPUE_TU_SEA2AIR', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_SPUE_TU_SEA2AIR', 'ART_DEF_UNIT_MEMBER_SPUE_TU_SEA2AIR', 1);

-- Scale 0.4 = 真单位 0.16 × 2.5（过场模型几何保持 1x）
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_SPUE_TU_SEA2AIR', 'TU_SeaToAir.fxsxml', 'METALLRG', 'METAL', 0.4, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_SPUE_TU_SEA2AIR', 0, 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION20POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_SPUE_TU_SEA2AIR', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_SPUE_TU_SEA2AIR', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_SPUE_TU_SEA2AIR', 'SV_SPUE_JUF.dds', 'Unit');

-- ----------------------------------------------------------------------------
-- 超级要塞（变形：空→海）
-- ----------------------------------------------------------------------------
INSERT INTO UnitClasses
		(Type,							Description,						DefaultUnit,				MaxPlayerInstances)
VALUES	('UNITCLASS_SPUE_TU_AIR2SEA',	'TXT_KEY_UNIT_SPUE_TU_AIR2SEA',	'UNIT_SPUE_TU_AIR2SEA',		1);

INSERT INTO Units 	
		(Type, 									Class,										ProjectPrereq,				PrereqTech, 		PolicyBranchType,			RangedCombat,	Combat,		Range, 		AirInterceptRange,	ExtraMaintenanceCost,	Special, Cost, 		FaithCost, HurryCostModifier, 	RequiresFaithPurchaseEnabled, Moves,	CombatClass, Domain, DefaultUnitAI, Description,										Civilopedia,										Strategy, Help,														Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, UnitArtInfo,							UnitFlagIconOffset, UnitFlagAtlas,			PortraitIndex, 	IconAtlas,			NoMinorGifts)
SELECT	'UNIT_SPUE_TU_AIR2SEA', 	'UNITCLASS_SPUE_TU_AIR2SEA', 	NULL,	NULL, 	'POLICY_BRANCH_AUTOCRACY',	1060,			1060,	    6, 			5,					60,						Special, -1, 		-1, -1,					RequiresFaithPurchaseEnabled, 8,   		CombatClass, Domain, DefaultUnitAI, 'TXT_KEY_UNIT_SPUE_TU_AIR2SEA',		'TXT_KEY_CIV5_SPUE_TU_AIR2SEA_TEXT', 	Strategy, 'TXT_KEY_UNIT_SPUE_TU_AIR2SEA_HELP', 		Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, RangedCombatLimit, CombatLimit, ObsoleteTech, XPValueAttack, XPValueDefense, GoodyHutUpgradeUnitClass, 'ART_DEF_UNIT_SPUE_TU_AIR2SEA',	0,					'SPUE_HEAD_FLAG_ATLAS',	12,				'SPUE_IDEO_ATLAS',	1
FROM Units WHERE Type = 'UNIT_MISSILE_CRUISER';

INSERT INTO Unit_FreePromotions (UnitType, PromotionType)
SELECT	'UNIT_SPUE_TU_AIR2SEA', PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP';

INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES
('UNIT_SPUE_TU_AIR2SEA', 'PROMOTION_SPUE_TU_TRANSFORMING');


INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_SPUE_TU_AIR2SEA', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_SPUE_TU_AIR2SEA', 'ART_DEF_UNIT_MEMBER_SPUE_TU_AIR2SEA', 1);

-- Scale 0.4 = 真单位 0.16 × 2.5（过场模型几何保持 1x）
INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_SPUE_TU_AIR2SEA', 'TU_AirToSea.fxsxml', 'METALLRG', 'METAL', 0.4, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_SPUE_TU_AIR2SEA', 0, 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION20POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_SPUE_TU_AIR2SEA', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_SPUE_TU_AIR2SEA', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_SPUE_TU_AIR2SEA', 'SV_SPUE_JUF.dds', 'Unit');

-- ----------------------------------------------------------------------------
-- 标记晋升：过场单位身上的"正在变形"标记（AI 过滤 / 读档回收都靠它）
-- ----------------------------------------------------------------------------
INSERT INTO UnitPromotions
		(Type,									Description,								Help,											Sound,		CannotBeChosen,	LostWithUpgrade,	PortraitIndex,	IconAtlas,		PediaType,	PediaEntry)
SELECT	'PROMOTION_SPUE_TU_TRANSFORMING',		'TXT_KEY_PROMOTION_SPUE_TU_TRANSFORMING',	'TXT_KEY_PROMOTION_SPUE_TU_TRANSFORMING_HELP',	Sound,		1,				1,					PortraitIndex,	IconAtlas,		PediaType,	PediaEntry
FROM UnitPromotions WHERE Type = 'PROMOTION_SPUE_AUTOCRACY_JUFORTRESS';
