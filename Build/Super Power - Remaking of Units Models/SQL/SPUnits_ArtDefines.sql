--==========================================================================================================================
-- ART DEFINES
--==========================================================================================================================
------------------------------------------------------------------------------------------------------------------------
--T-34--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_RUSSIAN_T34', 1, 'Vehicle');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_RUSSIAN_T34', 'ART_DEF_UNIT_MEMBER_RUSSIAN_T34', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_RUSSIAN_T34', 'Assets/Units/Tank/Tank.fxsxml', 'METALSM', 'METAL', 0.119999997317791);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 0, 1, 'ART_DEF_UNIT_MEMBER_RUSSIAN_T34', 1, 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION6POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_RUSSIAN_T34', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_TANK_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_RUSSIAN_T34', 'SV_Tank.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--T-34--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_M4A3', 1, 'Vehicle');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_M4A3', 'ART_DEF_UNIT_MEMBER_M4A3', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_M4A3', 'M4A3_Sherman_IV.fxsxml', 'METALSM', 'METAL', 0.119999997317791);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 0, 1, 'ART_DEF_UNIT_MEMBER_M4A3', 1, 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION6POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_M4A3', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_TANK_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_M4A3', 'SV_Sherman.dds', 'Unit');

------------------------------------------------------------------------------------------------------------------------
--French Eurocopter--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_FRANCE_EUROCOPTER_TIGER', 1, 'FighterWing');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_FRANCE_EUROCOPTER_TIGER', 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER', 'eurotiger_france.fxsxml', 'METALLRG', 'METAL', 0.05600000035762787, 'Air');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (MoveRate, EnableActions, HasRefaceAfterCombat, UnitMemberType, AttackRadius, TurnRateMin, TurnRateMax) VALUES
(2.0, 'Idle Attack Bombard Death Run', 0, 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER', 135.0, 0.25, 0.5);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", ProjectileSpeed, HitEffect, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER', 0, 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, HitEffect, VisKillStrengthMin, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER', 1, 1.0, 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 1.0, 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ID, ProjectileSpeed, HitEffect, VisKillStrengthMin, SubIndex) VALUES
('EXPLOSION200POUND', 15.0, 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER', 1, 50.0, 'PROJECTILE', 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 25.0, 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_FRANCE_EUROCOPTER_TIGER', 'SV_TigetCopter.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--F-35----CARRIER-FIGHTER-ADV--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_CARRIER_FIGHTER_ADV', 1, 'FighterWing');

UPDATE ArtDefine_UnitInfoMemberInfos SET
NumMembers = 3
WHERE UnitInfoType = 'ART_DEF_UNIT_JET_FIGHTER';

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_CARRIER_FIGHTER_ADV', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV', 'F-35.fxsxml', 'METALLRG', 'METAL', 0.0900000035762787, 'Air');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (MoveRate, EnableActions, HasRefaceAfterCombat, UnitMemberType, AttackRadius, TurnRateMin, TurnRateMax) VALUES
(2.0, 'Idle Attack Bombard Death Run', 0, 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV', 135.0, 0.25, 0.5);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", ProjectileSpeed, HitEffect, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV', 0, 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, HitEffect, VisKillStrengthMin, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV', 1, 1.0, 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 1.0, 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ID, ProjectileSpeed, HitEffect, VisKillStrengthMin, SubIndex) VALUES
('EXPLOSION200POUND', 15.0, 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV', 1, 50.0, 'PROJECTILE', 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 25.0, 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_CARRIER_FIGHTER_ADV', 'SV_JetFighter.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--F-14--CARRIER-FIGHTER-JET
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_CARRIER_FIGHTER_JET', 1, 'FighterWing');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_CARRIER_FIGHTER_JET', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET', 'F-14_5.fxsxml', 'METALLRG', 'METAL', 0.0900000035762787, 'Air');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (MoveRate, EnableActions, HasRefaceAfterCombat, UnitMemberType, AttackRadius, TurnRateMin, TurnRateMax) VALUES
(2.0, 'Idle Attack Bombard Death Run', 0, 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET', 135.0, 0.25, 0.5);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", ProjectileSpeed, HitEffect, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET', 0, 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, HitEffect, VisKillStrengthMin, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET', 1, 1.0, 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 1.0, 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ID, ProjectileSpeed, HitEffect, VisKillStrengthMin, SubIndex) VALUES
('EXPLOSION200POUND', 15.0, 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET', 1, 50.0, 'PROJECTILE', 3.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 25.0, 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_CARRIER_FIGHTER_JET', 'SV_Intercepter.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--Kirov--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS', 'ART_DEF_UNIT_MEMBER_KIROV_BATTLECRUISER_DZS', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_KIROV_BATTLECRUISER_DZS', 'USSR_Kirov.fxsxml', 'METALLRG', 'METAL', 0.12, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_KIROV_BATTLECRUISER_DZS', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION20POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_KIROV_BATTLECRUISER_DZS', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_KIROV_BATTLECRUISER_DZS', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS', 'SV_BattleCruiser.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--BMP--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_ASSYRIAN_BMP', 1, 'Vehicle');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_ASSYRIAN_BMP', 'ART_DEF_UNIT_MEMBER_ASSYRIAN_BMP', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_ASSYRIAN_BMP', 'BMP2Iraq.fxsxml', 'METALSM', 'CLOTH', 0.120000001490116);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 1, 1, 'ART_DEF_UNIT_MEMBER_ASSYRIAN_BMP', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_ASSYRIAN_BMP', 0, 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_ASSYRIAN_BMP', 'SV_BMP.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--OTTOMAN COBRA--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_OTTOMAN_COBRA', 1, 'Vehicle');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_OTTOMAN_COBRA', 'ART_DEF_UNIT_MEMBER_OTTOMAN_COBRA', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_OTTOMAN_COBRA', 'BRDM2Iraq.fxsxml', 'METALSM', 'CLOTH', 0.09);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 1, 1, 'ART_DEF_UNIT_MEMBER_OTTOMAN_COBRA', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_OTTOMAN_COBRA', 0, 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_OTTOMAN_COBRA', 'SV_OttomanCobra.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--Minas Garaes--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_BRAZILIAN_MINAS_GERAES', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_BRAZILIAN_MINAS_GERAES', 'ART_DEF_UNIT_MEMBER_BRAZILIAN_MINAS_GERAES', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_BRAZILIAN_MINAS_GERAES', 'MinasGaraes.fxsxml', 'METALLRG', 'METAL', 0.140000035762787, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_BRAZILIAN_MINAS_GERAES', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION1TON', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_BRAZILIAN_MINAS_GERAES', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_BRAZILIAN_MINAS_GERAES', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_BRAZILIAN_MINAS_GERAES', 'SV_BrazilNavy.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--PZL 23--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_POLISH_PZL23', 1, 'FighterWing');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_POLISH_PZL23', 'ART_DEF_UNIT_MEMBER_POLISH_PZL23', 4);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_POLISH_PZL23', 'PZL_P.23_Karas.fxsxml', 'METALLRG', 'METAL', 0.0796, 'Air');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (MoveRate, EnableActions, HasRefaceAfterCombat, UnitMemberType, AttackRadius, TurnRateMin, TurnRateMax) VALUES
(2.00000002384186, 'Idle Attack Bombard Death Run', 0, 'ART_DEF_UNIT_MEMBER_POLISH_PZL23', 45.0, 0.25, 0.5);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_POLISH_PZL23', 0, 1.0, 1.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, TargetGround, HitRadius, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, WeaponTypeTag, ID, VisKillStrengthMin, HitEffect, IsDropped, SubIndex) VALUES
('EXPLOSION200POUND', 1, 15.0, 'ART_DEF_UNIT_MEMBER_POLISH_PZL23', 0, 50.0, 3.0, 'EXPLOSIVE', 'PROJECTILE', 25.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 1, 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_POLISH_PZL23', 'SV_Pzl.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--JAS39--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_SWEDISH_JAS39_FIGHTER', 1, 'FighterWing');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_SWEDISH_JAS39_FIGHTER', 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER', 2);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER', 'Rafale.fxsxml', 'METALLRG', 'METAL', 0.1, 'Air');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (MoveRate, EnableActions, HasRefaceAfterCombat, UnitMemberType, AttackRadius, TurnRateMin, TurnRateMax) VALUES
(2.00000002384186, 'Idle Attack Bombard Death Run', 0, 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER', 45.0, 0.25, 0.5);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER', 0, 1.0, 1.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, TargetGround, HitRadius, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, WeaponTypeTag, ID, VisKillStrengthMin, HitEffect, IsDropped, SubIndex) VALUES
('EXPLOSION200POUND', 1, 15.0, 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER', 0, 50.0, 3.0, 'EXPLOSIVE', 'PROJECTILE', 25.0, 'ART_DEF_VEFFECT_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 1, 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_SWEDISH_JAS39_FIGHTER', 'SV_SwedenFighter.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--2A3--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_NUCLEAR_ARTILLERY', 1, 'Vehicle');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_NUCLEAR_ARTILLERY', 'ART_DEF_UNIT_MEMBER_NUCLEAR_ARTILLERY', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_NUCLEAR_ARTILLERY', 'M40_Long_Tom_2A3.fxsxml', 'METALSM', 'METAL', 0.16);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 0, 1, 'ART_DEF_UNIT_MEMBER_NUCLEAR_ARTILLERY', 1, 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION6POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_NUCLEAR_ARTILLERY', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_TANK_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_NUCLEAR_ARTILLERY', 'SV_NuclearGun.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--Georgios Avero--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_GREEK_ARMORED_CRUISER', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_GREEK_ARMORED_CRUISER', 'ART_DEF_UNIT_MEMBER_GREEK_ARMORED_CRUISER', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_GREEK_ARMORED_CRUISER', 'Pisa_Class.fxsxml', 'METALLRG', 'METAL', 0.09, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_GREEK_ARMORED_CRUISER', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION200POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_GREEK_ARMORED_CRUISER', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_GREEK_ARMORED_CRUISER', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_GREEK_ARMORED_CRUISER', 'SV_GreeceGA.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--Spain Canarias--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_SPANISH_CANARIAS', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_SPANISH_CANARIAS', 'ART_DEF_UNIT_MEMBER_SPANISH_CANARIAS', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_SPANISH_CANARIAS', 'Triba_Class.fxsxml', 'METALLRG', 'METAL', 0.15, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_SPANISH_CANARIAS', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION200POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_SPANISH_CANARIAS', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_SPANISH_CANARIAS', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_SPANISH_CANARIAS', 'SV_SpanishCrusier.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--CANADIAN FIGHTER--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_IROQUOIAN_CANADIAN_FIGHTER', 1, 'FighterWing');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_IROQUOIAN_CANADIAN_FIGHTER', 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER', 4);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER', 'Hawker_Hurricane_MK_II.fxsxml', 'METALLRG', 'METAL', 0.07, 'Air');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (MoveRate, EnableActions, HasRefaceAfterCombat, UnitMemberType, AttackRadius, TurnRateMin, TurnRateMax) VALUES
(1.60000002384186, 'Idle Attack Bombard Death Run', 0, 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER', 45.0, 0.25, 0.5);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, HitRadius, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 15.0, 'BULLETHC', 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER', 0, 1.0, 1.0, 'ART_DEF_VEFFECT_IROQUOIAN_CANADIAN_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, TargetGround, HitRadius, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, WeaponTypeTag, ID, VisKillStrengthMin, HitEffect, IsDropped, SubIndex) VALUES
('EXPLOSION200POUND', 1, 15.0, 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER', 0, 50.0, 3.0, 'EXPLOSIVE', 'PROJECTILE', 25.0, 'ART_DEF_VEFFECT_IROQUOIAN_CANADIAN_FIGHTER_MACHINE_GUN_HIT_$(TERRAIN)', 1, 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_IROQUOIAN_CANADIAN_FIGHTER', 'SV_CanadaFighter.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--777--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_EGYPT_UNIT777', 1, 'UnFormed');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_EGYPT_UNIT777', 'ART_DEF_UNIT_MEMBER_EGYPT_UNIT777', 10);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_EGYPT_UNIT777', 'Civ5_AfricanSF_v2.fxsxml', 'FLESH', 'CLOTH', 0.12);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, ReformBeforeCombat, ShortMoveRate, TargetHeight, ShortMoveRadius) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady Walk AttackCharge', 1, 1, 'ART_DEF_UNIT_MEMBER_EGYPT_UNIT777', 1, 0.309999994039536, 8.0, 12.0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", SubIndex) VALUES
('BULLET', 'BULLET', 'ART_DEF_UNIT_MEMBER_EGYPT_UNIT777', 0, 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_EGYPT_UNIT777', 'SV_Unit777.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--AUSTRIAN_SKODA--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_AUSTRIAN_SKODA', 1, 'ThreeBigGuns');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_AUSTRIAN_SKODA', 'ART_DEF_UNIT_MEMBER_AUSTRIAN_SKODA', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_AUSTRIAN_SKODA', '77cmFk.fxsxml', 'WOODSM', 'WOOD', 0.119999997317791);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (HasLongRangedAttack, EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat) VALUES
(1, 'Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 1, 1, 'ART_DEF_UNIT_MEMBER_AUSTRIAN_SKODA', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ProjectileSpeed, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION6POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_AUSTRIAN_SKODA', 0, 50.0, 5.0, 25.0, 'ART_DEF_VEFFECT_CANNON_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_AUSTRIAN_SKODA', 'SV_FieldGun.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--Olifant--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_ZULU_OLIFANT', 1, 'Vehicle');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_ZULU_OLIFANT', 'ART_DEF_UNIT_MEMBER_ZULU_OLIFANT', 3);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale) VALUES
('ART_DEF_UNIT_MEMBER_ZULU_OLIFANT', 'centurion.fxsxml', 'METALSM', 'METAL', 0.100000001490116);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasStationaryMelee, ReformBeforeCombat, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 0, 1, 'ART_DEF_UNIT_MEMBER_ZULU_OLIFANT', 1, 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION20POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_ZULU_OLIFANT', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_TANK_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_ZULU_OLIFANT', 'SV_OliTank.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--Re Umberto-class ironclad--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_ROMAN_LITTORIO', 3);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_ROMAN_LITTORIO', 'ART_DEF_UNIT_MEMBER_ROMAN_LITTORIO', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_ROMAN_LITTORIO', 'Littorio_Class.fxsxml', 'METALLRG', 'METAL', 0.11, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_ROMAN_LITTORIO', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION1TON', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_ROMAN_LITTORIO', 0, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_ROMAN_LITTORIO', 1, 50.0, 25.0, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_ROMAN_LITTORIO', 'SV_ItalyNavy.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--PZL W3 Helicopter--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates) VALUES
('ART_DEF_UNIT_POLISH_PZLW3_HELICOPTER', 1);

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_POLISH_PZLW3_HELICOPTER', 'ART_DEF_UNIT_MEMBER_POLISH_PZLW3_HELICOPTER', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_POLISH_PZLW3_HELICOPTER', 'Mi8Poland.fxsxml', 'METALLRG', 'METAL', 0.120000001490116, 'Hover');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady', 1, 1, 'ART_DEF_UNIT_MEMBER_POLISH_PZLW3_HELICOPTER');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_POLISH_PZLW3_HELICOPTER', 0, 1.0, 1.0, 'ART_DEF_VEFFECT_GUNSHIP_MACHINE_GUN_HIT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", VisKillStrengthMax, ID, ProjectileSpeed, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('EXPLOSION20POUND', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_POLISH_PZLW3_HELICOPTER', 0, 15.0, 'PROJECTILE', 4.0, 10.0, 'ART_DEF_VEFFECT_GUNSHIP_MACHINE_GUN_HIT_$(TERRAIN)', 1);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_POLISH_PZLW3_HELICOPTER', 'SV_PolandCopter.dds', 'Unit');
------------------------------------------------------------------------------------------------------------------------
--SMAN IEUP RAILGUN CRUISER--
------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ArtDefine_UnitInfos (Type, DamageStates, Formation) VALUES
('ART_DEF_UNIT_SMAN_IEUP_RAILGUN_CRUISER', 3, '');

INSERT OR REPLACE INTO ArtDefine_UnitInfoMemberInfos (UnitInfoType, UnitMemberInfoType, NumMembers) VALUES
('ART_DEF_UNIT_SMAN_IEUP_RAILGUN_CRUISER', 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER', 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberInfos (Type, Model, MaterialTypeSoundOverrideTag, MaterialTypeTag, Scale, Domain) VALUES
('ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER', 'SMAN_IEUP_Railgun_Cruiser.fxsxml', 'METALLRG', 'METAL', 0.109999999403954, 'Sea');

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombats (EnableActions, HasRefaceAfterCombat, HasShortRangedAttack, UnitMemberType, HasLeftRightAttack, HasIndependentWeaponFacing) VALUES
('Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady AttackSurfaceToAir', 0, 1, 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER', 1, 1);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", ID, VisKillStrengthMax, ProjectileSpeed, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('RAILGUN', 'EXPLOSIVE', 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER', 0, 'ART_DEF_VEFFECT_TRAIL_RAILGUN_PROJ', 50, 5.300000190734863, 25, '', 0);

INSERT OR REPLACE INTO ArtDefine_UnitMemberCombatWeapons (WeaponTypeSoundOverrideTag, WeaponTypeTag, UnitMemberType, "Index", ID, VisKillStrengthMax, ProjectileSpeed, VisKillStrengthMin, HitEffect, SubIndex) VALUES
('BULLETHC', 'BULLETHC', 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER', 1, 'ART_DEF_VEFFECT_TRAIL_RAILGUN_PROJ', 50, 5.300000190734863, 25, 'ART_DEF_VEFFECT_ARTILLERY_IMPACT_$(TERRAIN)', 0);

INSERT OR REPLACE INTO ArtDefine_StrategicView (StrategicViewType, Asset, TileType) VALUES
('ART_DEF_UNIT_SMAN_IEUP_RAILGUN_CRUISER', 'SV_MissileCruiser.dds', 'Unit');
--==========================================================================================================================
-- ART DEFINES:052D, E-MO, KIrov, WS2
--==========================================================================================================================
------------------------------------------------------------------------------------------------------------------------
-- ArtDefine_UnitInfos
------------------------------------------------------------------------------------------------------------------------			
INSERT INTO ArtDefine_UnitInfos 
		(Type, 										DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_SP_052D',						DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_MISSILE_CRUISER';		

INSERT INTO ArtDefine_UnitInfos 
		(Type, 										DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_SP_ENGLISH_SHIPOFTHELINE',	DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_U_ENGLISH_SHIPOFTHELINE';

INSERT INTO ArtDefine_UnitInfos 
		(Type, 										DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_SP_KIROV_BATTLECRUISER',		DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_MISSILE_CRUISER';

INSERT INTO ArtDefine_UnitInfos 
		(Type, 										DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_SP_PARTICLE_CANNON',			DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_SMAN_IEUP_RAILGUN_CRUISER';

INSERT INTO ArtDefine_UnitInfos 
		(Type, 										DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_CHINESE_WEISHI',				DamageStates, 	Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_ROCKET_ARTILLERY';
------------------------------------------------------------------------------------------------------------------------
-- ArtDefine_UnitInfoMemberInfos
------------------------------------------------------------------------------------------------------------------------
INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								 NumMembers)
SELECT	'ART_DEF_UNIT_SP_052D', 					'ART_DEF_UNIT_MEMBER_SP_052D',					 NumMembers
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType = 'ART_DEF_UNIT_MISSILE_CRUISER';

INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								 NumMembers)
SELECT	'ART_DEF_UNIT_SP_ENGLISH_SHIPOFTHELINE', 	'ART_DEF_UNIT_MEMBER_SP_ENGLISH_SHIPOFTHELINE',	 NumMembers
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType = 'ART_DEF_UNIT_U_ENGLISH_SHIPOFTHELINE';

INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								 NumMembers)
SELECT	'ART_DEF_UNIT_SP_KIROV_BATTLECRUISER', 		'ART_DEF_UNIT_MEMBER_SP_KIROV_BATTLECRUISER',	 NumMembers
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType = 'ART_DEF_UNIT_MISSILE_CRUISER';

INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								 NumMembers)
SELECT	'ART_DEF_UNIT_SP_PARTICLE_CANNON', 			'ART_DEF_UNIT_MEMBER_SP_PARTICLE_CANNON',		 NumMembers
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType = 'ART_DEF_UNIT_SMAN_IEUP_RAILGUN_CRUISER';

INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								 NumMembers)
SELECT	'ART_DEF_UNIT_CHINESE_WEISHI', 				'ART_DEF_UNIT_MEMBER_CHINESE_WEISHI',		 NumMembers
FROM ArtDefine_UnitInfoMemberInfos WHERE UnitInfoType = 'ART_DEF_UNIT_ROCKET_ARTILLERY';
------------------------------------------------------------------------------------------------------------------------
-- ArtDefine_UnitMemberCombats
------------------------------------------------------------------------------------------------------------------------
INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,									EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_SP_052D',						EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,									EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_SP_ENGLISH_SHIPOFTHELINE',		EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_SHIPOFTHELINE';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,									EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_SP_KIROV_BATTLECRUISER',		EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,									EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_SP_PARTICLE_CANNON',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,									EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_CHINESE_WEISHI',				EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_ROCKETARTILLERY';
------------------------------------------------------------------------------------------------------------------------
-- ArtDefine_UnitMemberCombatWeapons
------------------------------------------------------------------------------------------------------------------------
INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,									"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_052D',						"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,									"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_ENGLISH_SHIPOFTHELINE',		"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_SHIPOFTHELINE';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,									"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_KIROV_BATTLECRUISER',		"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,									"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_PARTICLE_CANNON',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,									"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_CHINESE_WEISHI',				"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_ROCKETARTILLERY';
------------------------------------------------------------------------------------------------------------------------
-- ArtDefine_UnitMemberInfos
------------------------------------------------------------------------------------------------------------------------
INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,	ZOffset, Domain, Model, 					MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_052D',					0.11,	ZOffset, Domain, '052D.fxsxml',				MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,	ZOffset, Domain, Model, 					MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_ENGLISH_SHIPOFTHELINE',	0.14,	ZOffset, Domain, 'ENG_MoW.fxsxml',			MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_U_ENGLISH_SHIPOFTHELINE';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,	ZOffset, Domain, Model, 					MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_KIROV_BATTLECRUISER',	0.11,	ZOffset, Domain, 'USSR_Kirov.fxsxml',		MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,	ZOffset, Domain, Model, 					MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_SP_PARTICLE_CANNON',		0.15,	ZOffset, Domain, 'Railgun_xship.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_SMAN_IEUP_RAILGUN_CRUISER';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,	ZOffset, Domain, Model, 						MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_CHINESE_WEISHI',			0.2,	ZOffset, Domain, 'rocketartillery_ws2.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_ROCKETARTILLERY';
------------------------------------------------------------------------------------------------------------------------
-- ArtDefine_StrategicView
------------------------------------------------------------------------------------------------------------------------
INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 						TileType,	Asset)
SELECT	'ART_DEF_UNIT_SP_052D',						'Unit', 	Asset
FROM ArtDefine_StrategicView WHERE StrategicViewType = 'ART_DEF_UNIT_MODERN_DESTROYER';	

INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 						TileType,	Asset)
SELECT	'ART_DEF_UNIT_SP_ENGLISH_SHIPOFTHELINE',	'Unit', 	Asset
FROM ArtDefine_StrategicView WHERE StrategicViewType = 'ART_DEF_UNIT_U_ENGLISH_SHIPOFTHELINE';	

INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 						TileType,	Asset)
SELECT	'ART_DEF_UNIT_SP_KIROV_BATTLECRUISER',		'Unit', 	Asset
FROM ArtDefine_StrategicView WHERE StrategicViewType = 'ART_DEF_UNIT_MISSILE_CRUISER';	

INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 						TileType,	Asset)
SELECT	'ART_DEF_UNIT_SP_PARTICLE_CANNON',			'Unit', 	Asset
FROM ArtDefine_StrategicView WHERE StrategicViewType = 'ART_DEF_UNIT_MISSILE_CRUISER';	

INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 						TileType,	Asset)
SELECT	'ART_DEF_UNIT_CHINESE_WEISHI',				'Unit', 	Asset
FROM ArtDefine_StrategicView WHERE StrategicViewType = 'ART_DEF_UNIT_ROCKET_ARTILLERY';	
--==========================================================================================================================
-- ART DEFINES Update
--==========================================================================================================================
--LCS--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'USS Independence (LCS-2).fxsxml', Scale = 0.115
WHERE Type = 'ART_DEF_UNIT_MEMBER_FW_NEODESTROYER';
--Railgun Battleship--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'PLAN_ArsenalShip.fxsxml', Scale = 0.17
WHERE Type = 'ART_DEF_UNIT_MEMBER_ARSENAL_SHIP';
--Modern Militia--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Infantry_American_v3.fxsxml', Scale = 0.14
WHERE Type = 'ART_DEF_UNIT_MEMBER_MILITIA_MODERN';
--MBT--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'T72B3.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_MAIN_BATTLE_TANK';
--Conscript--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ra3_ussr_conscript.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_CONSCRIPTMAN';
--ENTERPRISE CARRIER--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Enterprise_CV6.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_ENTERPRISE';
--NUCLEAR CARRIER--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'SP_CVN_Nimitz_Generic_v1.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_NUCLEAR_CARRIER';
--Corvette--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ri_flower_corvette.fxsxml', Scale = 0.09
WHERE Type = 'ART_DEF_UNIT_MEMBER_CORVETTE';
--Modern Destroyer--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ArleighBurkeDDG83.fxsxml', Scale = 0.11
WHERE Type = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';
--Intercepter--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'F15.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_INTERCEPTER';
--Super Carrier--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Gerald Ford.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_SUPER_CARRIER';
--ww1 Paratrooper--
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_WWI_PARATROOPER';
--Elite Rider--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Xuanjia_Elite.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_ELITE_RIDER';
--PikeMan--
UPDATE ArtDefine_UnitMemberInfos SET Model = 'RER_PIKE.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_PIKEMAN';
--MusketMan--
UPDATE ArtDefine_UnitMemberInfos SET Model = 'hremm-tc.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_MUSKETMAN';
--ZHENGHE_FLEET--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ZHENGHE_FLEET.fxsxml', Scale = 0.16
WHERE Type = 'ART_DEF_UNIT_MEMBER_ZHENGHE_FLEET';
