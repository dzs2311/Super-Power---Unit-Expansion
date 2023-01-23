--=========================================================================================================================
-- IconFontTextures
--==========================================================================================================================
INSERT OR REPLACE INTO IconFontTextures 
			(IconFontTexture,					IconFontTextureFile)
VALUES		('ICON_FONT_TEXTURE_CPM_PROMO',		'FontIcons_CPM');
--=========================================================================================================================
-- IconFontMapping
--==========================================================================================================================
INSERT OR REPLACE INTO IconFontMapping
			(IconName,							IconFontTexture,					IconMapping) 
VALUES		('ICON_PROMOTION_CPM',				'ICON_FONT_TEXTURE_CPM_PROMO',		1);
--=========================================================================================================================
-- IconTextureAtlases
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases	
			(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn) 
VALUES		('promo_CPM_atlas', 				256, 		'promo_CPM_256.dds', 					'1', 			'1'),
			('promo_CPM_atlas', 				064, 		'promo_CPM_064.dds', 					'1', 			'1'),
			('promo_CPM_atlas', 				045, 		'promo_CPM_045.dds', 					'1', 			'1'),
			('promo_CPM_atlas', 				032, 		'promo_CPM_032.dds', 					'1', 			'1'),
			('promo_CPM_atlas', 				016, 		'promo_CPM_016.dds', 					'1', 			'1');
--=========================================================================================================================
-- UnitPromotions
--==========================================================================================================================
INSERT OR REPLACE INTO UnitPromotions
		(Type, 							Description, 							Help, 										Sound, 				CannotBeChosen, CombatPercent, 	PortraitIndex, 	IconAtlas, 			PediaType, 			PediaEntry)
VALUES	('PROMOTION_SPUE_COMBAT_1',		'TXT_KEY_PROMOTION_SPUE_COMBAT_1',		'TXT_KEY_PROMOTION_SPUE_COMBAT_1_HELP',		'AS2D_IF_LEVELUP',	1, 				1,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_1'),
		('PROMOTION_SPUE_COMBAT_2',		'TXT_KEY_PROMOTION_SPUE_COMBAT_2',		'TXT_KEY_PROMOTION_SPUE_COMBAT_2_HELP',		'AS2D_IF_LEVELUP',	1, 				2,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_2'),
		('PROMOTION_SPUE_COMBAT_4',		'TXT_KEY_PROMOTION_SPUE_COMBAT_4',		'TXT_KEY_PROMOTION_SPUE_COMBAT_4_HELP',		'AS2D_IF_LEVELUP',	1, 				4,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_4'),
		('PROMOTION_SPUE_COMBAT_8',		'TXT_KEY_PROMOTION_SPUE_COMBAT_8',		'TXT_KEY_PROMOTION_SPUE_COMBAT_8_HELP',		'AS2D_IF_LEVELUP',	1, 				8,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_8'),
		('PROMOTION_SPUE_COMBAT_16',	'TXT_KEY_PROMOTION_SPUE_COMBAT_16',		'TXT_KEY_PROMOTION_SPUE_COMBAT_16_HELP',	'AS2D_IF_LEVELUP',	1, 				16,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_16'),
		('PROMOTION_SPUE_COMBAT_32',	'TXT_KEY_PROMOTION_SPUE_COMBAT_32',		'TXT_KEY_PROMOTION_SPUE_COMBAT_32_HELP',	'AS2D_IF_LEVELUP',	1, 				32,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_32'),
		('PROMOTION_SPUE_COMBAT_64',	'TXT_KEY_PROMOTION_SPUE_COMBAT_64',		'TXT_KEY_PROMOTION_SPUE_COMBAT_64_HELP',	'AS2D_IF_LEVELUP',	1, 				64,				0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_64'),
		('PROMOTION_SPUE_COMBAT_128',	'TXT_KEY_PROMOTION_SPUE_COMBAT_128',	'TXT_KEY_PROMOTION_SPUE_COMBAT_128_HELP',	'AS2D_IF_LEVELUP',	1, 				128,			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_128'),
		('PROMOTION_SPUE_COMBAT_256',	'TXT_KEY_PROMOTION_SPUE_COMBAT_256',	'TXT_KEY_PROMOTION_SPUE_COMBAT_256_HELP',	'AS2D_IF_LEVELUP',	1, 				256,			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_256'),
		('PROMOTION_SPUE_COMBAT_512',	'TXT_KEY_PROMOTION_SPUE_COMBAT_512',	'TXT_KEY_PROMOTION_SPUE_COMBAT_512_HELP',	'AS2D_IF_LEVELUP',	1, 				512,			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_512'),
		('PROMOTION_SPUE_COMBAT_1024',	'TXT_KEY_PROMOTION_SPUE_COMBAT_1024',	'TXT_KEY_PROMOTION_SPUE_COMBAT_1024_HELP',	'AS2D_IF_LEVELUP',	1, 				1024, 			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_1024'),
		('PROMOTION_SPUE_COMBAT_2048',	'TXT_KEY_PROMOTION_SPUE_COMBAT_2048',	'TXT_KEY_PROMOTION_SPUE_COMBAT_2048_HELP',	'AS2D_IF_LEVELUP',	1, 				2048, 			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_2048'),
		('PROMOTION_SPUE_COMBAT_4096',	'TXT_KEY_PROMOTION_SPUE_COMBAT_4096',	'TXT_KEY_PROMOTION_SPUE_COMBAT_4096_HELP',	'AS2D_IF_LEVELUP',	1, 				4096, 			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_4096'),
		('PROMOTION_SPUE_COMBAT_8192',	'TXT_KEY_PROMOTION_SPUE_COMBAT_8192',	'TXT_KEY_PROMOTION_SPUE_COMBAT_8192_HELP',	'AS2D_IF_LEVELUP',	1, 				8192, 			0,				'promo_CPM_atlas',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_SPUE_COMBAT_8192');
--=========================================================================================================================
-- TNL Support
--==========================================================================================================================
-- UnitPromotions - ADD COLUMN IconString
-- ALTER TABLE UnitPromotions ADD IconString text default '[ICON_PROMOTION_ATTRIBUTES]';
-- UPDATE UnitPromotions SET IconString = '[ICON_PROMOTION_CPM]'			WHERE IconAtlas = 'promo_CPM_atlas' AND PortraitIndex = 0;
--=========================================================================================================================
-- Language_zh_CN
--==========================================================================================================================
INSERT OR REPLACE INTO Language_zh_CN
		(Tag, 									Text)
VALUES	('TXT_KEY_PROMOTION_SPUE_COMBAT_1',		'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2',		'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4',		'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8',		'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_16',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_32',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_64',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_128',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_256',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_512',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_1024',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2048',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4096',	'[ICON_STRENGTH]战斗力加成'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8192',	'[ICON_STRENGTH]战斗力加成');

INSERT OR REPLACE INTO Language_zh_CN
		(Tag, 										Text)
VALUES	('TXT_KEY_PROMOTION_SPUE_COMBAT_1_HELP',	'+1%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2_HELP',	'+2%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4_HELP',	'+4%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8_HELP',	'+8%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_16_HELP',	'+16%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_32_HELP',	'+32%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_64_HELP',	'+64%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_128_HELP',	'+128%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_256_HELP',	'+256%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_512_HELP',	'+512%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_1024_HELP',	'+1024%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2048_HELP',	'+2048%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4096_HELP',	'+4096%[ICON_STRENGTH]战斗力。'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8192_HELP',	'+8192%[ICON_STRENGTH]战斗力。');

--=========================================================================================================================
-- Language_en_US
--==========================================================================================================================
INSERT OR REPLACE INTO Language_en_US
		(Tag, 									Text)
VALUES	('TXT_KEY_PROMOTION_SPUE_COMBAT_1',		'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2',		'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4',		'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8',		'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_16',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_32',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_64',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_128',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_256',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_512',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_1024',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2048',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4096',	'[ICON_STRENGTH]Combat Strength Bonus'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8192',	'[ICON_STRENGTH]Combat Strength Bonus');

INSERT OR REPLACE INTO Language_en_US
		(Tag, 										Text)
VALUES	('TXT_KEY_PROMOTION_SPUE_COMBAT_1_HELP',	'+1%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2_HELP',	'+2%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4_HELP',	'+4%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8_HELP',	'+8%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_16_HELP',	'+16%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_32_HELP',	'+32%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_64_HELP',	'+64%[ICON_STRENGTH]Combat Strength'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_128_HELP',	'+128%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_256_HELP',	'+256%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_512_HELP',	'+512%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_1024_HELP',	'+1024%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_2048_HELP',	'+2048%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_4096_HELP',	'+4096%[ICON_STRENGTH]Combat Strength.'),
		('TXT_KEY_PROMOTION_SPUE_COMBAT_8192_HELP',	'+8192%[ICON_STRENGTH]Combat Strength.');


