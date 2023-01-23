--=========================================================================================================================================================	
-- UnitPromotions_UnitCombatMods
--=========================================================================================================================================================
-- 反骑兵
UPDATE UnitPromotions_UnitCombatMods SET Modifier = 100 WHERE PromotionType = 'PROMOTION_ANTI_MOUNTED'      AND UnitCombatType = 'UNITCOMBAT_MOUNTED';
UPDATE UnitPromotions_UnitCombatMods SET Modifier = 25  WHERE PromotionType = 'PROMOTION_FORMATION_1'       AND UnitCombatType = 'UNITCOMBAT_MOUNTED';
UPDATE UnitPromotions_UnitCombatMods SET Modifier = 25  WHERE PromotionType = 'PROMOTION_FORMATION_2'       AND UnitCombatType = 'UNITCOMBAT_MOUNTED';
-- 反坦克   
UPDATE UnitPromotions_UnitCombatMods SET Modifier = 100 WHERE PromotionType = 'PROMOTION_ANTI_TANK'         AND UnitCombatType = 'UNITCOMBAT_ARMOR';
UPDATE UnitPromotions_UnitCombatMods SET Modifier = 25  WHERE PromotionType = 'PROMOTION_AMBUSH_1'          AND UnitCombatType = 'UNITCOMBAT_ARMOR';
UPDATE UnitPromotions_UnitCombatMods SET Modifier = 25  WHERE PromotionType = 'PROMOTION_AMBUSH_2'          AND UnitCombatType = 'UNITCOMBAT_ARMOR';
--=========================================================================================================================================================
-- UnitPromotions_UnitClasses
--=========================================================================================================================================================
-- 反方阵
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_SPEARMAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_PIKEMAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_LANDSKNECHT';
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_TERCIO';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_SPEARMAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_PIKEMAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_LANDSKNECHT';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_TERCIO';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_SPEARMAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_PIKEMAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_LANDSKNECHT';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_TERCIO';
-- 反反坦克
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_ANTI_TANK_GUN';
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_TANK_DESTROYER';
UPDATE UnitPromotions_UnitClasses SET Attack = 100      WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_ATGM_VEHICLE';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_ANTI_TANK_GUN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_TANK_DESTROYER';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_ATGM_VEHICLE';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_ANTI_TANK_GUN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_TANK_DESTROYER';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_ATGM_VEHICLE';
-- 反陆军游猎
UPDATE UnitPromotions_UnitClasses SET Attack = 75       WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_CHARIOT_ARCHER';
UPDATE UnitPromotions_UnitClasses SET Attack = 75       WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_NUMIDIAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 75       WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_MEDIEVAL_CHARIOT';
UPDATE UnitPromotions_UnitClasses SET Attack = 75       WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_BOMBARD';
UPDATE UnitPromotions_UnitClasses SET Attack = 75       WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_CAVALRY';
UPDATE UnitPromotions_UnitClasses SET Attack = 75       WHERE PromotionType = 'PROMOTION_ARCHERY_COMBAT'    AND UnitClassType  = 'UNITCLASS_CRUISER_TANK';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_CHARIOT_ARCHER';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_NUMIDIAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_MEDIEVAL_CHARIOT';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_BOMBARD';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_CAVALRY';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_1'        AND UnitClassType  = 'UNITCLASS_CRUISER_TANK';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_CHARIOT_ARCHER';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_NUMIDIAN';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_MEDIEVAL_CHARIOT';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_BOMBARD';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_CAVALRY';
UPDATE UnitPromotions_UnitClasses SET Attack = 33       WHERE PromotionType = 'PROMOTION_ACCURACY_2'        AND UnitClassType  = 'UNITCLASS_CRUISER_TANK';



