------------------------------------------------------------------------------------------------------------------------
-- UnitArtInfo Update
------------------------------------------------------------------------------------------------------------------------
--T-34--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_RUSSIAN_T34"
WHERE Type = "UNIT_RUSSIAN_T34";

--Tank--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_M4A3"
WHERE Type = "UNIT_TANK";

--Georgios Avero--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_GREEK_ARMORED_CRUISER"
WHERE Type = "UNIT_GREEK_ARMORED_CRUISER";

--Spain Canarias--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_SPANISH_CANARIAS"
WHERE Type = "UNIT_SPANISH_CANARIAS";

--CANADIAN FIGHTER--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_IROQUOIAN_CANADIAN_FIGHTER"
WHERE Type = "UNIT_IROQUOIAN_CANADIAN_FIGHTER";

--777--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_EGYPT_UNIT777"
WHERE Type = "UNIT_EGYPT_UNIT777";

--AUSTRIAN_SKODA--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_AUSTRIAN_SKODA"
WHERE Type = "UNIT_AUSTRIAN_SKODA";

--Olifant--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_ZULU_OLIFANT"
WHERE Type = "UNIT_ZULU_OLIFANT";

--Re Umberto-class ironclad--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_ROMAN_LITTORIO"
WHERE Type = "UNIT_ROMAN_LITTORIO";

--PZL W3 Helicopter--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_POLISH_PZLW3_HELICOPTER"
WHERE Type = "UNIT_POLISH_PZLW3_HELICOPTER";

--French Eurocopter--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_FRANCE_EUROCOPTER_TIGER"
WHERE Type = "UNIT_FRANCE_EUROCOPTER_TIGER";

--CARRIER-FIGHTER-ADV--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_CARRIER_FIGHTER_ADV"
WHERE Type = "UNIT_CARRIER_FIGHTER_ADV";

--CARRIER-FIGHTER-JET--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_CARRIER_FIGHTER_JET"
WHERE Type = "UNIT_CARRIER_FIGHTER_JET";

--KIROV--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_KIROV_BATTLECRUISER_DZS"
WHERE Type = "UNIT_KIROV_BATTLECRUISER";

--BMP
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_ASSYRIAN_BMP"
WHERE Type = "UNIT_ASSYRIAN_BMP";

--OTTOMAN COBRA--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_OTTOMAN_COBRA"
WHERE Type = "UNIT_OTTOMAN_COBRA";

--Minas Geraes--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_BRAZILIAN_MINAS_GERAES"
WHERE Type = "UNIT_BRAZILIAN_MINAS_GERAES";

--PZL 23--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_POLISH_PZL23"
WHERE Type = "UNIT_POLISH_PZL23";

--JAS39--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_SWEDISH_JAS39_FIGHTER"
WHERE Type = "UNIT_SWEDISH_JAS39_FIGHTER";


--POLYNESIAN_CARGOSHIP--
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_U_POLYNESIAN_WAR_CANOE"
WHERE Type = "UNIT_POLYNESIAN_CARGOSHIP";

--ZHENGHE_FLEET--
--UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_ZHENGHE_FLEET_NEW"
--WHERE Type = "UNIT_ZHENGHE_FLEET";

--2A3-
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_NUCLEAR_ARTILLERY"
WHERE Type = "UNIT_NUCLEAR_ARTILLERY";

--052D-
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_SP_052D"
WHERE Type = "UNIT_CHINESE_052D";

--E-MOW-
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_SP_ENGLISH_SHIPOFTHELINE"
WHERE Type = "UNIT_ENGLISH_SHIPOFTHELINE";

--UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_SP_KIROV_BATTLECRUISER"
--WHERE Type = "UNIT_KIROV_BATTLECRUISER";

--PARTICLE CANNON-
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_SP_PARTICLE_CANNON"
WHERE Type = "UNIT_PARTICLE_CANNON";

--WS2-
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_CHINESE_WEISHI"
WHERE Type = "UNIT_CHINESE_WEISHI";

------------------------------------------------------------------------------------------------------------------------
--Faster Aircraft Animation
------------------------------------------------------------------------------------------------------------------------
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = "ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_IROQUOIAN_CANADIAN_FIGHTER";

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = "ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_FRANCE_EUROCOPTER_TIGER";

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = "ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_ADV";

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = "ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_CARRIER_FIGHTER_JET";

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = "ART_DEF_UNIT_MEMBER_POLISH_PZL23";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_POLISH_PZL23";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_POLISH_PZL23";

UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate WHERE UnitMemberType = "ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER";
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0 AND UnitMemberType = "ART_DEF_UNIT_MEMBER_SWEDISH_JAS39_FIGHTER";

------------------------------------------------------------------------------------------------------------------------
-- SP EXTENDED ModCompatibility
------------------------------------------------------------------------------------------------------------------------
UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_MODERN_DESTROYER"
WHERE Type = "UNIT_MODERN_DESTROYER";

UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_NUCLEAR_SUBMARINE"
WHERE Type = "UNIT_NUCLEAR_SUBMARINE";

UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_HEAVY_CRUISER"
WHERE Type = "UNIT_HEAVY_CRUISER";

UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_DREADNOUGHT"
WHERE Type = "UNIT_DREADNOUGHT";

UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_MAIN_BATTLE_TANK"
WHERE Type = "UNIT_MAIN_BATTLE_TANK";

UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_COBRA_GUNSHIP"
WHERE Type = "UNIT_ATTACK_HELICOPTER";

--UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_JET_FIGHTER"
--WHERE Type = "UNIT_JET_FIGHTER";

UPDATE Units SET UnitArtInfo =  "ART_DEF_UNIT_FRANCE_BATTERY"
WHERE Type = "UNIT_FRANCE_BATTERY";

