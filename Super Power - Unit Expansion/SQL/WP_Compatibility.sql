--世界强权兼容
CREATE TABLE IF NOT EXISTS ROG_GlobalUserSettings (Type text default null, Value integer default 0);
INSERT INTO ROG_GlobalUserSettings(Type, Value) SELECT 'SuperUEForWP', 0;

--DROP TRIGGER SuperUEForWP1;
--DROP TRIGGER SuperUEForWP2;
CREATE TRIGGER SuperUEForWP1
AFTER UPDATE ON ROG_GlobalUserSettings
WHEN NEW.Type = 'SuperUEForWP' AND NEW.Value= 1
BEGIN
    -- 军事单位添加强权资源需求
    INSERT INTO Unit_ResourceQuantityRequirements
            (UnitType,                              ResourceType,           Cost)
    -- 朱斯蒂尼亚尼弩手
    SELECT  'UNIT_SPUE_GENOAXBOW_ELITE',            'RESOURCE_LUMBER',      1 UNION ALL
    -- 巨人掷弹兵
    SELECT  'UNIT_SPUE_HESSIAN_ELITE',              'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 神机营
    SELECT  'UNIT_SPUE_SHENJI_MUSKETEER',           'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 射石炮
    SELECT  'UNIT_SPUE_BOMBARD',                    'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 臼炮
    SELECT  'UNIT_SPUE_MORTAR',                     'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 野战炮
    SELECT  'UNIT_SPUE_FIELDGUN',                   'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 黑骑士
    SELECT  'UNIT_SPUE_REITER',                     'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 胸甲骑兵
    SELECT  'UNIT_SPUE_CUIRASSIER',                 'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- kv2
    SELECT  'UNIT_SPUE_ORDER_KV2',                  'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 装甲掷弹兵
    SELECT  'UNIT_SPUE_AUTOCRACY_PANZERG',          'RESOURCE_GUNPOWDER',   1 UNION ALL 

    -- 楼船
    SELECT  'UNIT_SPUE_TOWEREDSHIP',                'RESOURCE_LUMBER',      1 UNION ALL
    -- 海洋之火
    SELECT  'UNIT_SPUE_OCEAN_FIRE',                 'RESOURCE_LUMBER',      1 UNION ALL
    -- 纵火帆船
    SELECT  'UNIT_SPUE_FIRESHIP',                   'RESOURCE_LUMBER',      1 UNION ALL
    -- 倭寇帆船
    SELECT  'UNIT_SPUE_FUNE',                       'RESOURCE_LUMBER',      1 UNION ALL
    -- 南洋海盗船
    SELECT  'UNIT_SPUE_SSPRIVATEER',                'RESOURCE_LUMBER',      2 UNION ALL
    -- 福船
    SELECT  'UNIT_SPUE_FUCHUAN',                    'RESOURCE_LUMBER',      2 UNION ALL
    -- 私掠舰
    SELECT  'UNIT_SPUE_PRIVATEER',                  'RESOURCE_LUMBER',      2 UNION ALL
    -- 宝船旗舰
    SELECT  'UNIT_SPUE_TREASURE_FLEET',             'RESOURCE_LUMBER',      2 UNION ALL
    -- 蒸汽护卫舰
    SELECT  'UNIT_SPUE_FRIGATE',                    'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 风帆铁甲舰
    SELECT  'UNIT_SPUE_IRONCLAD',                   'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 鱼雷艇
    SELECT  'UNIT_SPUE_TORPEDOBOAT',                'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 长滩号
    SELECT  'UNIT_SPUE_FREEDOM_LONG_BEACH',         'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- 鹰击055
    SELECT  'UNIT_SPUE_ORDER_SUPER_055',            'RESOURCE_GUNPOWDER',   2 UNION ALL
    -- 超级要塞
    SELECT  'UNIT_SPUE_AUTOCRACY_JUFORTRESSSHIP',   'RESOURCE_GUNPOWDER',   2 UNION ALL
    SELECT  'UNIT_SPUE_AUTOCRACY_JUFORTRESSHEAD',   'RESOURCE_GUNPOWDER',   2 UNION ALL

    -- 喷火式战斗机
    SELECT  'UNIT_SPUE_FREEDOM_SPITFIRE',           'RESOURCE_GUNPOWDER',   1 UNION ALL
    -- su47
    SELECT  'UNIT_SPUE_ORDER_SU47',                 'RESOURCE_GUNPOWDER',   1;
END;

--开启兼容
UPDATE ROG_GlobalUserSettings SET Value = 1 
WHERE Type = 'SuperUEForWP' AND EXISTS (SELECT * FROM ROG_GlobalUserSettings WHERE Type= 'WORLD_POWER_PATCH' AND Value = 1);

CREATE TRIGGER SuperUEForWP2
AFTER UPDATE ON ROG_GlobalUserSettings
WHEN NEW.Type = 'WORLD_POWER_PATCH' AND NEW.Value= 1
BEGIN
    UPDATE ROG_GlobalUserSettings SET Value = 1 
    WHERE Type = 'SuperUEForWP' AND EXISTS (SELECT * FROM ROG_GlobalUserSettings WHERE Type= 'SuperUEForWP' AND Value = 0);
END;