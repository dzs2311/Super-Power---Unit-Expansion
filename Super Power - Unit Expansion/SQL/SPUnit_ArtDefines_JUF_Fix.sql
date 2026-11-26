--==========================================================================================================================
-- 超级要塞 美术定义（补丁文件）
-- 2026-11-26
--
-- 背景：SPUnit_ArtDefines.sql 第 839 行有一条 "INSERT ... VALUES" 的值被注释、
-- 插入语句本身没注释，SQLite 在这条报错后中止整个文件，导致从第 863 行往后的
-- 所有美术定义都没进数据库（超级要塞因此回退成长矛兵）。
-- 本文件把这几十条中"要塞需要"的部分单独重放，不影响其它单位。
--
-- 若将来修好 SPUnit_ArtDefines.sql 本身（把第 839 / 863 / 2840 行的孤儿 INSERT 注释掉，
-- 或删除），本文件可以删除。
--==========================================================================================================================

------------------------------------------------------------------------------------------------------------------------
--独裁：超级要塞 --
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_SPUE_JUFORTRESSSHIP', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_SPUE_JUFORTRESSSHIP', 'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSSHIP', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSSHIP', 'JUFortressShip_VLS.fxsxml', 'METALLRG', 'METAL', 0.16, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSSHIP', 0, 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION20POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSSHIP', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSSHIP', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_SPUE_JUFORTRESSSHIP', 'SV_SPUE_JUF.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--独裁：大头 --
------------------------------------------------------------------------------------------------------------------------
INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 					TileType,	Asset)
VALUES	('ART_DEF_UNIT_SPUE_JUFORTRESSHEAD',	'Unit', 	'SV_SPUE_JUF.dds');
		
INSERT INTO ArtDefine_UnitInfos 
		(Type, 									DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_SPUE_JUFORTRESSHEAD',		DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_MECH';	

INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,							UnitMemberInfoType,					  			NumMembers)
SELECT	'ART_DEF_UNIT_SPUE_JUFORTRESSHEAD',		'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSHEAD',	  	NumMembers
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_SPMECH';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,								EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSHEAD',		EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_SPMECH';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,								"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSHEAD',		"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_SPMECH';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,		ZOffset, Domain, Model, 					 	MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SPUE_JUFORTRESSHEAD',		0.16,		ZOffset, Domain, 'JUFortressHEAD.fxsxml', 		MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_SPMECH';	
