INSERT OR REPLACE INTO Audio_Sounds
		(SoundID,                                       Filename,                       LoadType)
VALUES	('SND_SELECT_SPUE_ORDER_SUPER_055',             '055_FirstSelect',              'DynamicResident'),
		('SND_BIRTH_SPUE_ORDER_SUPER_055',              '055_Select',                   'DynamicResident'),
		('SND_SELECT_SPUE_ORDER_KV2',             		'Kv2_FirstSelect',              'DynamicResident'),
		('SND_BIRTH_SPUE_ORDER_KV2',              		'Kv2_Select',                   'DynamicResident'),
		('SND_SELECT_SPUE_ORDER_SU47',             		'Berkut_FirstSelect',           'DynamicResident'),
		('SND_BIRTH_SPUE_ORDER_SU47',              		'Berkut_Select',                'DynamicResident'),
		('SND_SELECT_SPUE_NVOVRLORD',             		'OverLord_FirstSelect',         'DynamicResident'),
		('SND_BIRTH_SPUE_NVOVRLORD',              		'OverLord_Select',              'DynamicResident'),
		('SND_SELECT_SPUE_FREEDOM_HELICARRIER',         'HeliCarrier_FirstSelect',      'DynamicResident'),
		('SND_BIRTH_SPUE_FREEDOM_HELICARRIER',          'HeliCarrier_Select',           'DynamicResident'),
		('SND_SELECT_SPUE_AUTOCRACY_JUFORTRESSSHIP',    'Giga_FirstSelect',             'DynamicResident'),
		('SND_BIRTH_SPUE_AUTOCRACY_JUFORTRESSSHIP',     'Giga_Select',                  'DynamicResident');


		UNIT_SPUE_NVOVRLORD

INSERT OR REPLACE INTO Audio_2DSounds
		(ScriptID,                                      SoundID,                                  	SoundType,  MaxVolume,  MinVolume)
VALUES	('AS2D_SELECT_SPUE_ORDER_SUPER_055',            'SND_SELECT_SPUE_ORDER_SUPER_055',        	'GAME_SFX', 85,         85),
		('AS2D_BIRTH_SPUE_ORDER_SUPER_055',             'SND_BIRTH_SPUE_ORDER_SUPER_055',         	'GAME_SFX', 85,         85),
		('AS2D_SELECT_SPUE_ORDER_KV2',            		'SND_SELECT_SPUE_ORDER_KV2',           		'GAME_SFX', 85,         85),
		('AS2D_BIRTH_SPUE_ORDER_KV2',             		'SND_BIRTH_SPUE_ORDER_KV2',            		'GAME_SFX', 85,         85),
		('AS2D_SELECT_SPUE_ORDER_SU47',             	'SND_SELECT_SPUE_ORDER_SU47',            	'GAME_SFX', 85,         85),
		('AS2D_BIRTH_SPUE_ORDER_SU47',             		'SND_BIRTH_SPUE_ORDER_SU47',            	'GAME_SFX', 85,         85),
		('AS2D_SELECT_SPUE_NVOVRLORD',             		'SND_SELECT_SPUE_NVOVRLORD',            	'GAME_SFX', 85,         85),
		('AS2D_BIRTH_SPUE_NVOVRLORD',             		'SND_BIRTH_SPUE_NVOVRLORD',            		'GAME_SFX', 85,         85),
		('AS2D_SELECT_SPUE_FREEDOM_HELICARRIER',        'SND_SELECT_SPUE_FREEDOM_HELICARRIER',      'GAME_SFX', 85,         85),
		('AS2D_BIRTH_SPUE_FREEDOM_HELICARRIER',         'SND_BIRTH_SPUE_FREEDOM_HELICARRIER',       'GAME_SFX', 85,         85),
		('AS2D_SELECT_SPUE_AUTOCRACY_JUFORTRESSSHIP',   'SND_SELECT_SPUE_AUTOCRACY_JUFORTRESSSHIP', 'GAME_SFX', 85,         85),
		('AS2D_BIRTH_SPUE_AUTOCRACY_JUFORTRESSSHIP',    'SND_BIRTH_SPUE_AUTOCRACY_JUFORTRESSSHIP',  'GAME_SFX', 85,         85);
