--==========================================================================================================================
-- ART DEFINES Update
--==========================================================================================================================
--Spartan300--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Swordsman_Greece_v2.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_SPARTAN300';
--LCS--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Sweden_VisbyCorvettes_VLS_FWD.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_FW_NEODESTROYER';

UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FW_NEODESTROYER';
--ArsenalShip--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'USN_ArsenalShip_VLS_FWD.fxsxml', Scale = 0.17
WHERE Type = 'ART_DEF_UNIT_MEMBER_ARSENAL_SHIP';

UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_ARSENAL_SHIP';
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
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Russia_Kuznetsov_New.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_NUCLEAR_CARRIER';
--Corvette--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ri_flower_corvette.fxsxml', Scale = 0.09
WHERE Type = 'ART_DEF_UNIT_MEMBER_CORVETTE';
--Modern Destroyer--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ArleighBurkeDDG83_VLS_FWD.fxsxml', Scale = 0.11
WHERE Type = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';

UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';
--Missile Cruiser--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'missilecruiser_VLS_FWD.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';
--Intercepter--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'F15.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_INTERCEPTER';
--Super Carrier--
--UPDATE ArtDefine_UnitMemberInfos SET Model =  'Gerald Ford.fxsxml', Scale = 0.12
--WHERE Type = 'ART_DEF_UNIT_MEMBER_SUPER_CARRIER';

UPDATE ArtDefine_UnitMemberInfos SET Model =  'Shtorm.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_SUPER_CARRIER';
--ww1 Paratrooper--
UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_WWI_PARATROOPER';
--Elite Rider--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Xuanjia_Elite.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_ELITE_RIDER';

--MusketMan--
--UPDATE ArtDefine_UnitMemberInfos SET Model = 'aoed3mm-tc.fxsxml'
--WHERE Type = 'ART_DEF_UNIT_MEMBER_MUSKETMAN';
--ZHENGHE_FLEET--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ZHENGHE_FLEET_DE.fxsxml', Scale = 0.16
WHERE Type = 'ART_DEF_UNIT_MEMBER_ZHENGHE_FLEET';
--十字军自行火炮--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'PZH2000_CSPG.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_CRUSADER_ARTILLERY';
--弓骑兵--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'HorseArcher_Final.fxsxml', Scale = 0.12
WHERE Type = 'ART_DEF_UNIT_MEMBER_MEDIEVAL_CHARIOT';

UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5
WHERE UnitInfoType = 'ART_DEF_UNIT_MEDIEVAL_CHARIOT';
--近卫军--
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 12
WHERE UnitInfoType = 'ART_DEF_UNIT_NATIONAL_GUARD';
--长炮--代替重炮
UPDATE ArtDefine_UnitMemberInfos SET Model =  'aoe3de_culverin.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_CULVERIN';
--***线列步兵***--代替来复枪兵
UPDATE ArtDefine_UnitMemberInfos SET Model =  'civ5_genmm1.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_RIFLEMAN';
--鹰炮--代替排放枪
UPDATE ArtDefine_UnitMemberInfos SET Model =  'aoe3de_falconet.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_VOLLEY_GUN';
--大炮兵连--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'u_artillery_napoleon.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_FRANCE_BATTERY';
--Infantry SAM--
--UPDATE ArtDefine_UnitMemberInfos SET Model =  'KJ-S.fxsxml', Scale = 0.10
--WHERE Type = 'ART_DEF_UNIT_MEMBER_ANTITANK_INFANTRY';
--Mobile Artillery--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'M109NATO.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_SPARTILLERY';
--摩托化步兵
--UPDATE ArtDefine_UnitMemberInfos SET Model =  'GER_SdKfz_251_D_win.fxsxml', Scale = 0.10
--UPDATE ArtDefine_UnitMemberInfos SET Model =  'GER_SdKfz_251_camo2.fxsxml', Scale = 0.10-UPDATE ArtDefine_UnitMemberInfos SET Model =  'GER_SdKfz_251_camo2.fxsxml', Scale = 0.10
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Unit_Era6_Common_ArmouredPersonnelCarriers.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_MOTORISED_INFANTRY';
--反坦克导弹
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Striker4_ATGM.fxsxml', Scale = 0.13
WHERE Type = 'ART_DEF_UNIT_MEMBER_ATGM_VEHICLE';
-- 西北风两攻
UPDATE ArtDefine_UnitMemberInfos SET Model =  'Mistral.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_FRANCE_MISTRAL';
--==========================================================================================================================
-- UnitArtInfo Update
--==========================================================================================================================
--T-34--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_RUSSIAN_T34'
WHERE Type = 'UNIT_RUSSIAN_T34';

--Tank--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_M4A3'
WHERE Type = 'UNIT_TANK';

--Georgios Avero--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_GREEK_ARMORED_CRUISER'
WHERE Type = 'UNIT_GREEK_ARMORED_CRUISER';

--Spain Canarias--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPANISH_CANARIAS'
WHERE Type = 'UNIT_SPANISH_CANARIAS';

--CANADIAN FIGHTER--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_IROQUOIAN_CANADIAN_FIGHTER'
WHERE Type = 'UNIT_IROQUOIAN_CANADIAN_FIGHTER';

--777--
-- UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_EGYPT_UNIT777'
-- WHERE Type = 'UNIT_EGYPT_UNIT777';

--AUSTRIAN_SKODA--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_AUSTRIAN_SKODA'
WHERE Type = 'UNIT_AUSTRIAN_SKODA';

--Olifant--
-- UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_ZULU_OLIFANT'
-- WHERE Type = 'UNIT_ZULU_OLIFANT';

--Re Umberto-class ironclad--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_ROMAN_LITTORIO'
WHERE Type = 'UNIT_ROMAN_LITTORIO';

--PZL W3 Helicopter--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_POLISH_PZLW3_HELICOPTER'
WHERE Type = 'UNIT_POLISH_PZLW3_HELICOPTER';

--French Eurocopter--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_FRANCE_EUROCOPTER_TIGER'
WHERE Type = 'UNIT_FRANCE_EUROCOPTER_TIGER';

--CARRIER-FIGHTER-ADV--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_CARRIER_FIGHTER_ADV'
WHERE Type = 'UNIT_CARRIER_FIGHTER_ADV';

--CARRIER-FIGHTER-JET--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_CARRIER_FIGHTER_JET'
WHERE Type = 'UNIT_CARRIER_FIGHTER_JET';

--KIROV--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS'
WHERE Type = 'UNIT_KIROV_BATTLECRUISER';

--BMP
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_ASSYRIAN_BMP'
WHERE Type = 'UNIT_ASSYRIAN_BMP';

--OTTOMAN COBRA--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_OTTOMAN_COBRA'
WHERE Type = 'UNIT_OTTOMAN_COBRA';

--Minas Geraes--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_BRAZILIAN_MINAS_GERAES'
WHERE Type = 'UNIT_BRAZILIAN_MINAS_GERAES';

--PZL 23--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_POLISH_PZL23'
WHERE Type = 'UNIT_POLISH_PZL23';

--JAS39--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SWEDISH_JAS39_FIGHTER'
WHERE Type = 'UNIT_SWEDISH_JAS39_FIGHTER';


--POLYNESIAN_CARGOSHIP--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_U_POLYNESIAN_WAR_CANOE'
WHERE Type = 'UNIT_POLYNESIAN_CARGOSHIP';

--ZHENGHE_FLEET--
--UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_ZHENGHE_FLEET_NEW'
--WHERE Type = 'UNIT_ZHENGHE_FLEET';

--2A3-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_NUCLEAR_ARTILLERY'
WHERE Type = 'UNIT_NUCLEAR_ARTILLERY';

--052D-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SP_052D'
WHERE Type = 'UNIT_CHINESE_052D';

--E-MOW-
--UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_FUCHUAN'
--WHERE Type = 'UNIT_ENGLISH_SHIPOFTHELINE';
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SP_ENGLISH_SHIPOFTHELINE'
WHERE Type = 'UNIT_ENGLISH_SHIPOFTHELINE';

--UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SP_KIROV_BATTLECRUISER'
--WHERE Type = 'UNIT_KIROV_BATTLECRUISER';

--PARTICLE CANNON-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SP_PARTICLE_CANNON'
WHERE Type = 'UNIT_PARTICLE_CANNON';

--WS2-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_CHINESE_WEISHI'
WHERE Type = 'UNIT_CHINESE_WEISHI';

--上帝之杖--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_ORBITAL_STRIKE'
WHERE Type = 'UNIT_ORBITAL_STRIKE';

--超级黑客-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_HACKER'
WHERE Type = 'UNIT_HACKER';

--***火枪骑兵***--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_PISTOL'
WHERE Type = 'UNIT_BOMBARD';

--***加农炮***--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_FIELDGUN'
WHERE Type = 'UNIT_CANNON';

--***重骑兵***--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_HEAVY_CAVALRY_ANCIENT'
WHERE Type = 'UNIT_HORSEMAN';

--***具装骑兵***--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_HEAVY_CAVALRY'
WHERE Type = 'UNIT_KNIGHT';

--***火枪手***--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_MUSKETMAN'
WHERE Type = 'UNIT_MUSKETMAN';

--***步兵支援装甲车****--
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_MOBILE_SAM'
WHERE Type = 'UNIT_SAM_INFANTRY';

--奥斯曼私掠舰-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_OTTOMAN_CORSAIR'
WHERE Type = 'UNIT_OTTOMAN_PRIVATEER';

--波斯奇兹尔巴什骑兵-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_PERSIA_QIZILBASH'
WHERE Type = 'UNIT_OTTOMAN_SIPAHI';

--丹麦艾布萨隆支援舰-
UPDATE Units SET UnitArtInfo =  'ART_DEF_UNIT_SPUE_ABSALON'
WHERE Type = 'UNIT_DANISH_ABSALON';
------------------------------------------------------------------------------------------------------------------------
--Faster Aircraft Animation
------------------------------------------------------------------------------------------------------------------------
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER';

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER';

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV';

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET';

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_POLISH_PZL23';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_POLISH_PZL23';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_POLISH_PZL23';

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER';
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = 'ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER';

------------------------------------------------------------------------------------------------------------------------
-- World Power Mod Compatibility
------------------------------------------------------------------------------------------------------------------------
--铁浮屠
UPDATE ArtDefine_UnitMemberInfos SET Model = 'Jurchen_IronPagoda_black.fxsxml'
WHERE Type = 'ART_DEF_UNIT_IRON_BUDDHA';
-- 055VLS
UPDATE ArtDefine_UnitMemberInfos SET Model = '055_VLS_FWD.fxsxml', Scale = 0.15
WHERE Type = 'ART_DEF_UNIT_MEMBER_055DESTROYER';
UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_055DESTROYER';
--Missile Cruiser--
UPDATE ArtDefine_UnitMemberInfos SET Model =  'missilecruiser_VLS_FWD.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';
UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';
-- 长重炮
UPDATE ArtDefine_UnitMemberInfos SET Model = 'aoe3de_culverin.fxsxml'
WHERE Type = 'ART_DEF_UNIT_MEMBER_CULVERIN';
-- 现代驱逐舰
UPDATE ArtDefine_UnitMemberInfos SET Model =  'ArleighBurkeDDG83_VLS_FWD.fxsxml', Scale = 0.11
WHERE Type = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';
UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';
-- 卫士火箭炮《HumanKind》模型
UPDATE Units 
SET UnitArtInfo =  'ART_DEF_UNIT_CHINESE_WEISHI'
WHERE Type = 'UNIT_CHINESE_WEISHI';
-- 攻击机仍然用A10，F14->海军舰载机
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_ATTACK_AIRCRAFT'
WHERE Type = 'UNIT_ATTACK_AIRCRAFT';
-- 长剑士使用更花里胡哨的模型
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_LONGSWORDSMAN'
WHERE Type = 'UNIT_LONGSWORDSMAN';
-- ATGM 使用斯崔克模型
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_ATGM_VEHICLE'
WHERE Type = 'UNIT_ATGM_VEHICLE';

-- 主战坦克使用T72B3
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_MAIN_BATTLE_TANK'
WHERE Type = 'UNIT_MAIN_BATTLE_TANK';
-- 二战坦克使用德国款
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_M4A3'
WHERE Type = 'UNIT_TANK';
-- 大炮兵连采用东拼西凑版
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_FRANCE_BATTERY'
WHERE Type = 'UNIT_FRANCE_BATTERY';
-- 加农炮采用帝三版
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_SPUE_FIELDGUN'
WHERE Type = 'UNIT_CANNON';
-- 长炮采用帝三版
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_CULVERIN'
WHERE Type = 'UNIT_CULVERIN';
-- 基洛夫VLS
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS'
WHERE Type = 'UNIT_KIROV_BATTLECRUISER';
-- 武库舰VLS
UPDATE Units
SET UnitArtInfo = 'ART_DEF_UNIT_ARSENAL_SHIP'
WHERE Type = 'UNIT_FUTURE_BATTLESHIP';
--Spain Canarias--西班牙加那利级
UPDATE Units 
SET UnitArtInfo =  'ART_DEF_UNIT_SPANISH_CANARIAS'
WHERE Type = 'UNIT_SPANISH_CANARIAS';
--Georgios Avero--希腊乔治阿韦罗夫
UPDATE Units 
SET UnitArtInfo =  'ART_DEF_UNIT_GREEK_ARMORED_CRUISER'
WHERE Type = 'UNIT_GREEK_ARMORED_CRUISER';
--重巡不变--用战列舰太怪了
UPDATE Units 
SET UnitArtInfo =  'ART_DEF_UNIT_HEAVY_CRUISER'
WHERE Type = 'UNIT_HEAVY_CRUISER';
--核潜艇不变
UPDATE Units 
SET UnitArtInfo =  'ART_DEF_UNIT_NUCLEAR_SUBMARINE'
WHERE Type = 'UNIT_NUCLEAR_SUBMARINE';
--现代驱逐 052DVLS
UPDATE Units 
SET UnitArtInfo =  'ART_DEF_UNIT_SP_052D'
WHERE Type = 'UNIT_MODERN_DESTROYER' AND UnitArtInfo = 'ART_DEF_UNIT_052';

CREATE TRIGGER SPUE_EXTENDED
AFTER INSERT ON ArtDefine_UnitInfos
WHEN 'ART_DEF_UNIT_SIEGE05P' = NEW.Type
BEGIN
	-- 铁浮屠
	UPDATE ArtDefine_UnitMemberInfos SET Model = 'Jurchen_IronPagoda_black.fxsxml'
	WHERE Type = 'ART_DEF_UNIT_IRON_BUDDHA';

	-- 055VLS
	UPDATE ArtDefine_UnitMemberInfos SET Model = '055_VLS_FWD.fxsxml', Scale = 0.15
	WHERE Type = 'ART_DEF_UNIT_MEMBER_055DESTROYER';

	UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
	WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_055DESTROYER';

	--Missile Cruiser--
	UPDATE ArtDefine_UnitMemberInfos SET Model =  'missilecruiser_VLS_FWD.fxsxml'
	WHERE Type = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

	UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
	WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MISSILECRUISER';

	-- 长重炮
	UPDATE ArtDefine_UnitMemberInfos SET Model = 'aoe3de_culverin.fxsxml'
	WHERE Type = 'ART_DEF_UNIT_MEMBER_CULVERIN';

	-- 现代驱逐舰
	UPDATE ArtDefine_UnitMemberInfos SET Model =  'ArleighBurkeDDG83_VLS_FWD.fxsxml', Scale = 0.11
	WHERE Type = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';

	UPDATE ArtDefine_UnitMemberCombats SET HasLeftRightAttack = 0, HasIndependentWeaponFacing = 0
	WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MODERNDESTROYER';

	-- 卫士火箭炮《HumanKind》模型
	UPDATE Units 
	SET UnitArtInfo =  'ART_DEF_UNIT_CHINESE_WEISHI'
	WHERE Type = 'UNIT_CHINESE_WEISHI';
	-- 攻击机仍然用A10，F14->海军舰载机
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_ATTACK_AIRCRAFT'
	WHERE Type = 'UNIT_ATTACK_AIRCRAFT';

	-- 长剑士使用更花里胡哨的模型
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_LONGSWORDSMAN'
	WHERE Type = 'UNIT_LONGSWORDSMAN';
	-- ATGM 使用斯崔克模型
	-- UPDATE Units
	-- SET UnitArtInfo = 'ART_DEF_UNIT_ATGM_VEHICLE'
	-- WHERE Type = 'UNIT_ATGM_VEHICLE';

	-- 主战坦克使用T72B3
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_MAIN_BATTLE_TANK'
	WHERE Type = 'UNIT_MAIN_BATTLE_TANK';
	-- 二战坦克使用德国款
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_M4A3'
	WHERE Type = 'UNIT_TANK';

	-- 大炮兵连采用东拼西凑版
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_FRANCE_BATTERY'
	WHERE Type = 'UNIT_FRANCE_BATTERY';
	-- 加农炮采用帝三版
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_SPUE_FIELDGUN'
	WHERE Type = 'UNIT_CANNON';
	-- 长炮采用帝三版
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_CULVERIN'
	WHERE Type = 'UNIT_CULVERIN';

	-- 基洛夫VLS
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS'
	WHERE Type = 'UNIT_KIROV_BATTLECRUISER';
	-- 武库舰VLS
	UPDATE Units
	SET UnitArtInfo = 'ART_DEF_UNIT_ARSENAL_SHIP'
	WHERE Type = 'UNIT_FUTURE_BATTLESHIP';
	--Spain Canarias--西班牙加那利级
	UPDATE Units 
	SET UnitArtInfo =  'ART_DEF_UNIT_SPANISH_CANARIAS'
	WHERE Type = 'UNIT_SPANISH_CANARIAS';
	--Georgios Avero--希腊乔治阿韦罗夫
	UPDATE Units 
	SET UnitArtInfo =  'ART_DEF_UNIT_GREEK_ARMORED_CRUISER'
	WHERE Type = 'UNIT_GREEK_ARMORED_CRUISER';
	--重巡不变--用战列舰太怪了
	UPDATE Units 
	SET UnitArtInfo =  'ART_DEF_UNIT_HEAVY_CRUISER'
	WHERE Type = 'UNIT_HEAVY_CRUISER';
	--核潜艇不变
	UPDATE Units 
	SET UnitArtInfo =  'ART_DEF_UNIT_NUCLEAR_SUBMARINE'
	WHERE Type = 'UNIT_NUCLEAR_SUBMARINE';
	--现代驱逐 052DVLS
	UPDATE Units 
	SET UnitArtInfo =  'ART_DEF_UNIT_SP_052D'
	WHERE Type = 'UNIT_MODERN_DESTROYER' AND UnitArtInfo = 'ART_DEF_UNIT_052';

END;
