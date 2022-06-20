--==========================================================================================================================
-- IconTextureAtlasesa
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_UNITS_ATLAS', 				256, 		'SPUE_IconAtlas256.dds',			8, 				8),
			('SPUE_UNITS_ATLAS', 				128, 		'SPUE_IconAtlas128.dds',			8, 				8),
			('SPUE_UNITS_ATLAS', 				80, 		'SPUE_IconAtlas080.dds',			8, 				8),
			('SPUE_UNITS_ATLAS', 				64, 		'SPUE_IconAtlas064.dds',			8, 				8),
			('SPUE_UNITS_ATLAS', 				45, 		'SPUE_IconAtlas045.dds',			8, 				8),
			('SPUE_UNITS_ATLAS', 				32, 		'SPUE_IconAtlas032.dds',			8, 				8),
			('SPUE_UNIT_FLAG_ATLAS',			32,			'SPUE_UnitFlagAlpha032.dds',		4, 				4),
			('SPUE_UNIT_FLAG2_ATLAS',			32,			'SPUE_UnitFlag2Alpha032.dds',		4, 				4),
			('SPUE_PIST_FLAG_ATLAS',			32,			'SPUE_Pistol_flag.dds',				1, 				1),	-- 手枪骑兵
			('SPUE_MOXB_FLAG_ATLAS',			32,			'SPUE_mountedxbow_flag.dds',		1, 				1),	-- 具装骑射手
			('SPUE_VPFG_FLAG_ATLAS',			32,			'SPUE_VP_FIELDGUN_flag.dds',		1, 				1),	-- 野战炮/意大利炮
			('SPUE_VPAC_FLAG_ATLAS',			32,			'SPUE_armoredcarflag.dds',			1, 				1),	-- 轻型装甲车
			('SPUE_YLCA_FLAG_ATLAS',			32,			'SPUE_Yulin_flag.dds',				1, 				1),	-- 羽林骑
			('SPUE_CROS_FLAG_ATLAS',			32,			'SPUE_GreatCross_flag.dds',			1, 				1),	-- 大十字架
			('SPUE_DVCT_FLAG_ATLAS',			32,			'SPUE_DVC_Tank_flag.dds',			1, 				1),	-- 达芬奇坦克
			('SPUE_KNKN_FLAG_ATLAS',			32,			'SPUE_Knight_New_flag.dds',			1, 				1),	-- 王城骑士
			('SPUE_FALC_FLAG_ATLAS',			32,			'SPUE_Falconet_flag.dds',			1, 				1),	-- 鹰炮
			('SPUE_CULV_FLAG_ATLAS',			32,			'SPUE_culverin_flag.dds',			1, 				1),	-- 长炮
			('SPUE_MORTAR_FLAG_ATLAS',			32,			'SPUE_mortar_flag.dds',				1, 				1),	-- 臼炮
			('SPUE_WWII_FLAG_ATLAS',			32,			'SPUE_wwi_infantry_flag.dds',		1, 				1),	-- 早期现代步兵
			('SPUE_S055_FLAG_ATLAS',			32,			'SPUE_SUPER_055_flag.dds',			1, 				1);	-- S055
-- 商业政策树
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_LILBOMB_FLAG_ATLAS',			32,			'SPUE_LilBomBard_flag.dds',			1, 				1),	-- 里尔火炮佣兵
			('SPUE_SSPRIV_FLAG_ATLAS',			32,			'SPUE_SouthSeaPrivateer_flag.dds',	1, 				1),	-- 南洋海盗船
			('SPUE_GENOAX_FLAG_ATLAS',			32,			'SPUE_GenoaXBow_flag.dds',			1, 				1),	-- 热那亚弩手
			('SPUE_SWISSG_FLAG_ATLAS',			32,			'SPUE_SwissGuard_flag.dds',			1, 				1),	-- 瑞士卫队
			('SPUE_VARANMER_FLAG_ATLAS',		32,			'SPUE_VarangianMercenary_flag.dds',	1, 				1),	-- 瓦兰吉雇佣兵
			('SPUE_VARANGUARD_FLAG_ATLAS',		32,			'SPUE_VarangianGuard_flag.dds',		1, 				1);	-- 瓦兰吉卫队
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases	(Atlas, IconSize, Filename, IconsPerRow, IconsPerColumn) VALUES
	('promoVP_atlas_00', 256, 'promoVP_00_256.dds', '8', '8'),
	('promoVP_atlas_00', 064, 'promoVP_00_064.dds', '8', '8'),
	('promoVP_atlas_00', 045, 'promoVP_00_045.dds', '8', '8'),
	('promoVP_atlas_00', 032, 'promoVP_00_032.dds', '8', '8'),
	('promoVP_atlas_00', 016, 'promoVP_00_016.dds', '8', '8'),

	('promoVP_atlas_01', 256, 'promoVP_01_256.dds', '8', '8'),
	('promoVP_atlas_01', 064, 'promoVP_01_064.dds', '8', '8'),
	('promoVP_atlas_01', 045, 'promoVP_01_045.dds', '8', '8'),
	('promoVP_atlas_01', 032, 'promoVP_01_032.dds', '8', '8'),
	('promoVP_atlas_01', 016, 'promoVP_01_016.dds', '8', '8'),

	('promoVP_atlas_02', 256, 'promoVP_02_256.dds', '8', '8'),
	('promoVP_atlas_02', 064, 'promoVP_02_064.dds', '8', '8'),
	('promoVP_atlas_02', 045, 'promoVP_02_045.dds', '8', '8'),
	('promoVP_atlas_02', 032, 'promoVP_02_032.dds', '8', '8'),
	('promoVP_atlas_02', 016, 'promoVP_02_016.dds', '8', '8'),

	('promoVP_atlas_03', 256, 'promoVP_03_256.dds', '8', '8'),
	('promoVP_atlas_03', 064, 'promoVP_03_064.dds', '8', '8'),
	('promoVP_atlas_03', 045, 'promoVP_03_045.dds', '8', '8'),
	('promoVP_atlas_03', 032, 'promoVP_03_032.dds', '8', '8'),
	('promoVP_atlas_03', 016, 'promoVP_03_016.dds', '8', '8'),

	('extraPromo_Atlas', 256, 'extraPromo_256.dds', '8', '8'),
	('extraPromo_Atlas', 064, 'extraPromo_064.dds', '8', '8'),
	('extraPromo_Atlas', 045, 'extraPromo_045.dds', '8', '8'),
	('extraPromo_Atlas', 032, 'extraPromo_032.dds', '8', '8'),
	('extraPromo_Atlas', 016, 'extraPromo_016.dds', '8', '8'),
	
	('tempVPPI_Atlas', 256, 'tempVPPI_256.dds', '8', '2'),
	('tempVPPI_Atlas', 064, 'tempVPPI_064.dds', '8', '2'),
	('tempVPPI_Atlas', 045, 'tempVPPI_045.dds', '8', '2'),
	('tempVPPI_Atlas', 032, 'tempVPPI_032.dds', '8', '2'),
	('tempVPPI_Atlas', 016, 'tempVPPI_016.dds', '8', '2');