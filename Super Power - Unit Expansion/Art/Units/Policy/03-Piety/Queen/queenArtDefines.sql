-- Insert SQL Rules Here 
INSERT INTO ArtDefine_UnitInfos (Type,DamageStates,Formation) VALUES ('ART_DEF_UNIT_QUEEN', 1, "UnFormed");


INSERT INTO ArtDefine_UnitInfoMemberInfos VALUES ('ART_DEF_UNIT_QUEEN', 'ART_DEF_UNIT_MEMBER_QUEEN', 1);

INSERT INTO ArtDefine_UnitMemberInfos (Type, Scale, Model, MaterialTypeTag, MaterialTypeSoundOverrideTag)
    VALUES ('ART_DEF_UNIT_MEMBER_QUEEN', 0.15, 'queen.fxsxml', "CLOTH", "FLESH");


INSERT INTO ArtDefine_UnitMemberCombats (UnitMemberType, EnableActions, ShortMoveRadius, ShortMoveRate, TargetHeight, HasRefaceAfterCombat, ReformBeforeCombat)
	VALUES ('ART_DEF_UNIT_MEMBER_QUEEN', "Idle Attack RunCharge AttackCity Bombard Death BombardDefend Run Fortify CombatReady Walk AttackCharge", 12.0, 0.35, 8.0, 1, 1);


INSERT INTO ArtDefine_UnitMemberCombatWeapons (UnitMemberType, "Index", SubIndex, WeaponTypeTag, WeaponTypeSoundOverrideTag)
    VALUES ('ART_DEF_UNIT_MEMBER_QUEEN', 0, 0, "BLUNT", "SPEAR");






