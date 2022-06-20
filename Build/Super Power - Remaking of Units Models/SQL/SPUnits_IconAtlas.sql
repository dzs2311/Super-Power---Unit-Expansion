--==========================================================================================================================
-- IconTextureAtlasesa
--==========================================================================================================================
INSERT OR REPLACE INTO IconTextureAtlases 
			(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES		('RER_UNITS_ATLAS', 				256, 		'RER_UNITS_atlas_256.dds',			3, 				2),
			('RER_UNITS_ATLAS', 				128, 		'RER_UNITS_atlas_128.dds',			3, 				2),
			('RER_UNITS_ATLAS', 				80, 		'RER_UNITS_atlas_80.dds',			3, 				2),
			('RER_UNITS_ATLAS', 				64, 		'RER_UNITS_atlas_64.dds',			3, 				2),
			('RER_UNITS_ATLAS', 				45, 		'RER_UNITS_atlas_45.dds',			3, 				2);
--==========================================================================================================================
-- ª«π ÷Õº±Í
UPDATE Units SET IconAtlas = 'RER_UNITS_ATLAS', PortraitIndex = 3
WHERE Type = 'UNIT_MUSKETMAN';
