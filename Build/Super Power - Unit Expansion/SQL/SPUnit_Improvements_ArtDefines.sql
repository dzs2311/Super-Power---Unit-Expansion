INSERT INTO ArtDefine_LandmarkTypes 
			(Type, 								LandmarkType,	FriendlyName)
VALUES		('ART_DEF_IMPROVEMENT_SPUE_RECC',	'Improvement', 	'RECC');

INSERT INTO ArtDefine_Landmarks 
			(ImprovementType, 						Era,	State,				 Scale, LayoutHandler,	ResourceType,			Model,								TerrainContour)
VALUES		('ART_DEF_IMPROVEMENT_SPUE_RECC',		'Any', 	'UnderConstruction', 0.5,	'SNAPSHOT',		'ART_DEF_RESOURCE_ALL', 'RomanEmpire_CityCenter_HB.fxsxml', 1),
			('ART_DEF_IMPROVEMENT_SPUE_RECC',		'Any', 	'Constructed',		 0.5,	'SNAPSHOT',		'ART_DEF_RESOURCE_ALL', 'RomanEmpire_CityCenter_B.fxsxml',  1),
			('ART_DEF_IMPROVEMENT_SPUE_RECC',		'Any', 	'Pillaged',			 0.5,	'SNAPSHOT',		'ART_DEF_RESOURCE_ALL', 'RomanEmpire_CityCenter_PL.fxsxml', 1);


INSERT INTO ArtDefine_StrategicView(StrategicViewType, TileType, Asset)
SELECT 'ART_DEF_IMPROVEMENT_SPUE_RECC', 'Improvement', 'SV_RECC.dds';
