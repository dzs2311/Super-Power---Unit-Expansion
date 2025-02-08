UPDATE SPTriggerControler SET Enabled = 1 WHERE TriggerType = 'SPNDeleteALLUnitStrategicFlag';
UPDATE SPNewEffectControler SET Enabled = 1 WHERE Type = 'SP_DELETE_ALL_STRATEGIC_UNIT_FLAG';
--==========================================================================================================================
-- USER SETTINGS
--==========================================================================================================================
-- RER_GlobalUserSettings
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS 
SPUE_GlobalUserSettings (
	Type 											text 										default null,
	Value 											integer 									default 1);
--==========================================================================================================================	
-- USER SETTINGS
--==========================================================================================================================	
-- Modular Features that can be toggled on and off and then back on.
--------------------------------------------------------------------------
/*
	1 = Enabled (Default)
	0 = Disabled
*/
--------------------------------------------------------------------------
INSERT OR REPLACE INTO CustomModOptions
		(Name,												Value,		Class)
VALUES	('EVENTS_UNIT_DO_TURN',								1,			3); -- 开启单位过回合事件

UPDATE Defines 			SET Value = 100 WHERE Name = 'MAX_EVASION_PROBABILITY';
--==========================================================================================================================	
-- USER SETTINGS - VMC
--==========================================================================================================================	
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_UNIT_UPGRADES';			-- 开启单位升级事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_UNIT_RANGEATTACK';			-- 开启单位远程攻击事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_UNIT_CREATED';				-- 开启单位产生事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_BATTLES_CUSTOM_DAMAGE';	-- 开启单位减伤事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_PLAYER_TURN';				-- 开启玩家结束回合事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_UNIT_DO_TURN';				-- 开启单位过回合事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'EVENTS_UNIT_ACTIONS';				-- 开启单位劫掠事件
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'GLOBAL_EXCLUDE_FROM_GIFTS';		-- 开启城邦赠送豁免
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'PROMOTION_SPLASH_DAMAGE';			-- 开启单位溅射
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'PROMOTION_COLLATERAL_DAMAGE';		-- 开启单位穿透
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'ROG_CORE';						-- 开启单位强权效果
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'PROMOTIONS_ALLYCITYSTATE_BONUS';	-- 开启城邦盟友加强战斗力效果
UPDATE CustomModOptions SET Value = 1 	WHERE Name = 'PROMOTIONS_EXTRARES_BONUS';		-- 开启额外资源加强战斗力效果
UPDATE CustomModOptions SET Value = 1	WHERE Name = 'PROMOTION_AURA_PROMOTION';		-- 开启光环
--==========================================================================================================================	
-- 远程攻击劫掠 - VMC
--==========================================================================================================================	
ALTER TABLE Units ADD RangedPillage INTEGER DEFAULT 0;
-- 南洋海盗船
UPDATE Units SET RangedPillage = 1 WHERE Class IN ('UNITCLASS_SPUE_SSPRIVATEER');

