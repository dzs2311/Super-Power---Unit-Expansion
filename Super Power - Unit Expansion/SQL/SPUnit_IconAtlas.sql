--==========================================================================================================================
-- IconTextureAtlases
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
			-- 通用单位、政策单位与特殊单位图标
VALUES		('SPUE_UNITS_ATLAS', 				256, 		'SPUE_IconAtlas256.dds',				8, 				8),
			('SPUE_UNITS_ATLAS', 				128, 		'SPUE_IconAtlas128.dds',				8, 				8),
			('SPUE_UNITS_ATLAS', 				080, 		'SPUE_IconAtlas080.dds',				8, 				8),
			('SPUE_UNITS_ATLAS', 				064, 		'SPUE_IconAtlas064.dds',				8, 				8),
			('SPUE_UNITS_ATLAS', 				045, 		'SPUE_IconAtlas045.dds',				8, 				8),
			('SPUE_UNITS_ATLAS', 				032, 		'SPUE_IconAtlas032.dds',				8, 				8),
			('SPUE02_UNITS_ATLAS', 				256, 		'SPUE02_IconAtlas256.dds',				8, 				8),
			('SPUE02_UNITS_ATLAS', 				128, 		'SPUE02_IconAtlas128.dds',				8, 				8),
			('SPUE02_UNITS_ATLAS', 				080, 		'SPUE02_IconAtlas080.dds',				8, 				8),
			('SPUE02_UNITS_ATLAS', 				064, 		'SPUE02_IconAtlas064.dds',				8, 				8),
			('SPUE02_UNITS_ATLAS', 				045, 		'SPUE02_IconAtlas045.dds',				8, 				8),
			('SPUE02_UNITS_ATLAS', 				032, 		'SPUE02_IconAtlas032.dds',				8, 				8),
			-- 意识形态单位图标
			('SPUE_IDEO_ATLAS', 				256, 		'SPUE_Ideology_IconAtlas256.dds',		4, 				4),
			('SPUE_IDEO_ATLAS', 				128, 		'SPUE_Ideology_IconAtlas128.dds',		4, 				4),
			('SPUE_IDEO_ATLAS', 				080, 		'SPUE_Ideology_IconAtlas080.dds',		4, 				4),
			('SPUE_IDEO_ATLAS', 				064, 		'SPUE_Ideology_IconAtlas064.dds',		4, 				4),
			('SPUE_IDEO_ATLAS', 				045, 		'SPUE_Ideology_IconAtlas045.dds',		4, 				4),
			('SPUE_IDEO_ATLAS', 				032, 		'SPUE_Ideology_IconAtlas032.dds',		4, 				4),
			('SPUE_GAIA_ATLAS', 				045, 		'IconAtlas045_GAIA.dds',				2, 				1),
			-- UU旗帜
			('SPUE_OTTOMAN_FLAG_ATLAS',			032, 		'flag_barbary_xebec.dds',				1, 				1), -- 奥斯曼私掠舰
			('SPUE_GERMAN_FLAG_ATLAS',			032, 		'SPUE_Doppelsoldner_32.dds',			1, 				1), -- 双薪剑士
			-- 单位旗帜
			('SPUE_UNIT_FLAG_ATLAS',			032,		'SPUE_UnitFlagAlpha032.dds',			4, 				4),
			('SPUE_UNIT_FLAG2_ATLAS',			032,		'SPUE_UnitFlag2Alpha032.dds',			4, 				4),
			('SPUE_HCAV_FLAG_ATLAS',			032,		'SPUE_HeavyCavalry_flag_32.dds',		1, 				1),	-- 重骑兵
			('SPUE_GOND_FLAG_ATLAS',			032,		'SPUE_GondorGuard_Flag.dds',			1, 				1),	-- 圣树守卫
			('SPUE_PIST_FLAG_ATLAS',			032,		'SPUE_Pistol_flag.dds',					1, 				1),	-- 手枪骑兵
			('SPUE_MOXB_FLAG_ATLAS',			032,		'SPUE_mountedxbow_flag.dds',			1, 				1),	-- 具装骑射手
			('SPUE_VPFG_FLAG_ATLAS',			032,		'SPUE_VP_FIELDGUN_flag.dds',			1, 				1),	-- 野战炮/意大利炮
			('SPUE_VPAC_FLAG_ATLAS',			032,		'SPUE_armoredcarflag.dds',				1, 				1),	-- 轻型装甲车
			('SPUE_YLCA_FLAG_ATLAS',			032,		'SPUE_Yulin_flag.dds',					1, 				1),	-- 羽林骑
			('SPUE_CROS_FLAG_ATLAS',			032,		'SPUE_GreatCross_flag.dds',				1, 				1),	-- 大十字架
			('SPUE_DVCT_FLAG_ATLAS',			032,		'SPUE_DVC_Tank_flag.dds',				1, 				1),	-- 达芬奇坦克
			('SPUE_DVCM_FLAG_ATLAS',			032,		'SPUE_DVC_RibaultUnitFlag_32.dds',		1, 				1),	-- 达芬奇机关炮
			('SPUE_KNKN_FLAG_ATLAS',			032,		'SPUE_Knight_New_flag.dds',				1, 				1),	-- 王城骑士
			('SPUE_FALC_FLAG_ATLAS',			032,		'SPUE_Falconet_flag.dds',				1, 				1),	-- 鹰炮
			('SPUE_CULV_FLAG_ATLAS',			032,		'SPUE_culverin_flag.dds',				1, 				1),	-- 长炮
			('SPUE_MORTAR_FLAG_ATLAS',			032,		'SPUE_mortar_flag.dds',					1, 				1),	-- 臼炮
			('SPUE_WWII_FLAG_ATLAS',			032,		'SPUE_wwi_infantry_flag.dds',			1, 				1);	-- 早期现代步兵

-- 奥斯曼私掠舰
-- INSERT OR REPLACE INTO IconTextureAtlases
-- 			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
-- VALUES		('UNIT_SPUE_OTTOMAN_ATLAS', 		256, 		'CorsairPicture_256.dds',				1,				1),
-- 			('UNIT_SPUE_OTTOMAN_ATLAS', 		128, 		'CorsairPicture_128.dds',				1, 				1),
-- 			('UNIT_SPUE_OTTOMAN_ATLAS', 		080, 		'CorsairPicture_080.dds',				1, 				1),
-- 			('UNIT_SPUE_OTTOMAN_ATLAS', 		064, 		'CorsairPicture_064.dds',				1, 				1),
-- 			('UNIT_SPUE_OTTOMAN_ATLAS', 		045, 		'CorsairPicture_045.dds',				1, 				1),
-- 			('UNIT_SPUE_OTTOMAN_ATLAS', 		032, 		'CorsairPicture_032.dds',				1, 				1),
-- 			('UNIT_SPUE_OTTOMAN_FLAG_ATLAS',	032, 		'CorsairFlag_032.dds',					1, 				1);

INSERT OR REPLACE INTO IconTextureAtlases
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('UNIT_SPUE_PERSIAQ_FLAG_ATLAS',	032, 		'QizilbashFlag_032.dds',				1, 				1);

-- 商业政策树佣兵单位
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_LILBOMB_FLAG_ATLAS',			032,		'SPUE_LilBomBard_flag.dds',				1, 				1),	-- 里尔火炮佣兵
			('SPUE_SSPRIV_FLAG_ATLAS',			032,		'SPUE_SouthSeaPrivateer_flag.dds',		1, 				1),	-- 南洋海盗船
			('SPUE_GENOAX_FLAG_ATLAS',			032,		'SPUE_GenoaXBow_flag.dds',				1, 				1),	-- 热那亚弩手
			('SPUE_SWISSG_FLAG_ATLAS',			032,		'SPUE_SwissGuard_flag.dds',				1, 				1),	-- 瑞士卫队
			('SPUE_VARANMER_FLAG_ATLAS',		032,		'SPUE_VarangianMercenary_flag.dds',		1, 				1),	-- 瓦兰吉雇佣兵
			('SPUE_VARANGUARD_FLAG_ATLAS',		032,		'SPUE_VarangianGuard_flag.dds',			1, 				1),	-- 瓦兰吉卫队
			('SPUE_IRON_TROOP_FLAG_ATLAS',		032,		'SPUE_iron_troop_flag_032.dds',			1, 				1), -- 铁人军
			('SPUE_FIRE_SHIP_FLAG_ATLAS',		032,		'SPUE_SMAN_Fireship_Flag_032.dds',		1, 				1); -- 火帆船

-- 虔信政策树骑士团单位
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_TEMP_FLAG_ATLAS',			032,		'SPUE_KnightsTemplar_Flag.dds',			1, 				1),	-- 圣殿骑士团
			('SPUE_HOSP_FLAG_ATLAS',			032,		'SPUE_KnightsHospitaller_Flag.dds',		1, 				1),	-- 医院骑士团
			('SPUE_TEUT_FLAG_ATLAS',			032,		'SPUE_KnightsTeutonic_Flag.dds',		1, 				1);	-- 条顿骑士团

-- 赞助政策树辅助单位	
INSERT OR REPLACE INTO IconTextureAtlases 	
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_BODYGUARD_FLAG_ATLAS',		032,		'SPUE_BodyGuard_Flag.dds',				1, 				1),	-- 将领卫队
			('SPUE_SOCII_FLAG_ATLAS',			032,		'SPUE_Socii_Flag.dds',					1, 				1), -- 同盟军团
			('SPUE_VSPEAR_FLAG_ATLAS',			032,		'SPUE_QiangSpearman_Flag.dds',			1, 				1),	-- 辅助塞尔维亚重步兵
			('SPUE_VCATAPHCRAT_FLAG_ATLAS',		032,		'SPUE_Cataphract_Flag.dds',				1, 				1),	-- 辅助亚美尼亚甲骑兵
			('SPUE_ALAN_FLAG_ATLAS',			032,		'SPUE_Alan_Flag.dds',					1, 				1), -- 辅助阿兰轻骑兵
			('SPUE_VMUSKETMAN_FLAG_ATLAS',		032,		'SPUE_Musketeer_Flag.dds',				1, 				1),	-- 神机营
			('SPUE_CAPTAIN_FLAG_ATLAS',			032,		'SPUE_TreasureFleet_Flag.dds',			1, 				1), -- 水师旗舰
			('SPUE_CORVETTE_FLAG_ATLAS',		032,		'SPUE_Galleon_Flag.dds',				1, 				1); -- 同盟征召护卫舰

-- 意识形态单位旗帜
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_S055_FLAG_ATLAS',			032,		'SPUE_YJ21_Flag.dds',					1, 				1),	-- 055
			('SPUE_SKV2_FLAG_ATLAS',			032,		'SPUE_KV2_Flag.dds',					1, 				1),	-- KV2
			('SPUE_SU47_FLAG_ATLAS',			032,		'SPUE_Su47_Flag.dds',					1, 				1),	-- Su47
			('SPUE_HELI_FLAG_ATLAS',			032,		'Flag_SPUE_Shield.dds',					1, 				1),	-- 空天母舰
			('SPUE_SPIT_FLAG_ATLAS',			032,		'Flag_SPUE_Spitfire.dds',				1, 				1),	-- 逆火
			('SPUE_CGN9_FLAG_ATLAS',			032,		'Flag_SPUE_CGN9.dds',					1, 				1),	-- 长滩
			('SPUE_HEAD_FLAG_ATLAS',			032,		'SPUE_Flag_JUF.dds',					1, 				1),	-- 大头
			('SPUE_PANG_FLAG_ATLAS',			032,		'SPUE_Flag_SDKFZ251.dds',				1, 				1);	-- 装甲掷弹兵
--==========================================================================================================================
-- 火帆船:IconTextureAtlasesa
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('FIRESHIP_PROMOTION_ATLAS', 		256, 		'SMAN_Fireship_Promotion_256.dds',		1, 				1),
			('FIRESHIP_PROMOTION_ATLAS', 		064, 		'SMAN_Fireship_Promotion_064.dds',		1, 				1),
			('FIRESHIP_PROMOTION_ATLAS', 		045, 		'SMAN_Fireship_Promotion_045.dds',		1, 				1),
			('FIRESHIP_PROMOTION_ATLAS', 		032, 		'SMAN_Fireship_Promotion_032.dds',		1, 				1);
--==========================================================================================================================
-- 禁卫军堡垒
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES		('SPUE_RECC_ATLAS', 				256, 		'RECC_256.dds',							2, 				1),
			('SPUE_RECC_ATLAS', 				064, 		'RECC_064.dds',							2, 				1),
			('SPUE_RECC_ATLAS', 				045, 		'RECC_045.dds',							2, 				1);
--==========================================================================================================================
-- VP:IconTextureAtlasesa
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases	
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn) 
VALUES		('promoVP_atlas_00', 				256, 		'promoVP_00_256.dds', 					'8', 			'8'),
			('promoVP_atlas_00', 				064, 		'promoVP_00_064.dds', 					'8', 			'8'),
			('promoVP_atlas_00', 				045, 		'promoVP_00_045.dds', 					'8', 			'8'),
			('promoVP_atlas_00', 				032, 		'promoVP_00_032.dds', 					'8', 			'8'),
			('promoVP_atlas_00', 				016, 		'promoVP_00_016.dds', 					'8', 			'8'),

			('promoVP_atlas_01', 				256, 		'promoVP_01_256.dds', 					'8', 			'8'),
			('promoVP_atlas_01', 				064, 		'promoVP_01_064.dds', 					'8', 			'8'),
			('promoVP_atlas_01', 				045, 		'promoVP_01_045.dds', 					'8', 			'8'),
			('promoVP_atlas_01', 				032, 		'promoVP_01_032.dds', 					'8', 			'8'),
			('promoVP_atlas_01', 				016, 		'promoVP_01_016.dds', 					'8', 			'8'),

			('promoVP_atlas_02', 				256, 		'promoVP_02_256.dds', 					'8', 			'8'),
			('promoVP_atlas_02', 				064, 		'promoVP_02_064.dds', 					'8', 			'8'),
			('promoVP_atlas_02', 				045, 		'promoVP_02_045.dds', 					'8', 			'8'),
			('promoVP_atlas_02', 				032, 		'promoVP_02_032.dds', 					'8', 			'8'),
			('promoVP_atlas_02', 				016, 		'promoVP_02_016.dds', 					'8', 			'8'),

			('promoVP_atlas_03', 				256, 		'promoVP_03_256.dds', 					'8', 			'8'),
			('promoVP_atlas_03', 				064, 		'promoVP_03_064.dds', 					'8', 			'8'),
			('promoVP_atlas_03', 				045, 		'promoVP_03_045.dds', 					'8', 			'8'),
			('promoVP_atlas_03', 				032, 		'promoVP_03_032.dds', 					'8', 			'8'),
			('promoVP_atlas_03', 				016, 		'promoVP_03_016.dds', 					'8', 			'8'),

			('extraPromo_Atlas', 				256, 		'extraPromo_256.dds', 					'8', 			'8'),
			('extraPromo_Atlas', 				064, 		'extraPromo_064.dds', 					'8', 			'8'),
			('extraPromo_Atlas', 				045, 		'extraPromo_045.dds', 					'8', 			'8'),
			('extraPromo_Atlas', 				032, 		'extraPromo_032.dds', 					'8', 			'8'),
			('extraPromo_Atlas', 				016, 		'extraPromo_016.dds', 					'8', 			'8'),

			('tempVPPI_Atlas', 					256, 		'tempVPPI_256.dds', 					'8', 			'2'),
			('tempVPPI_Atlas', 					064, 		'tempVPPI_064.dds', 					'8', 			'2'),
			('tempVPPI_Atlas', 					045, 		'tempVPPI_045.dds', 					'8', 			'2'),
			('tempVPPI_Atlas', 					032, 		'tempVPPI_032.dds', 					'8', 			'2'),
			('tempVPPI_Atlas', 					016, 		'tempVPPI_016.dds', 					'8', 			'2'),

			('SP_EAWPI_Atlas', 					256, 		'eaw_PI_256.dds', 						'2', 			'1'),
			('SP_EAWPI_Atlas', 					064, 		'eaw_PI_064.dds', 						'2', 			'1'),
			('SP_EAWPI_Atlas', 					045, 		'eaw_PI_045.dds', 						'2', 			'1'),
			('SP_EAWPI_Atlas', 					032, 		'eaw_PI_032.dds', 						'2', 			'1'),
			('SP_EAWPI_Atlas', 					016, 		'eaw_PI_016.dds', 						'2', 			'1');