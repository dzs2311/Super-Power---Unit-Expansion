-- CombatPercent_Misc
-- Author: dzs-local
-- DateCreated: 2022/12/3 13:24:54
--------------------------------------------------------------
local g_promotionCPM = {["1"]    = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_1"],
                        ["2"]    = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_2"],
                        ["4"]    = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_4"],
                        ["8"]    = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_8"],
                        ["16"]   = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_16"],
                        ["32"]   = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_32"],
                        ["64"]   = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_64"],
                        ["128"]  = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_128"],
                        ["256"]  = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_256"],
                        ["512"]  = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_512"],
                        ["1024"] = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_1024"],
                        ["2048"] = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_2048"],
                        ["4096"] = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_4096"],
                        ["8192"] = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_8192"]}

-- local g_numCPM = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192}
local g_numCPM = {8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1}

-- local promotion0001 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_1"].ID
-- local promotion0002 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_2"].ID
-- local promotion0004 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_4"].ID
-- local promotion0008 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_8"].ID
-- local promotion0016 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_16"].ID
-- local promotion0032 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_32"].ID
-- local promotion0064 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_64"].ID
-- local promotion0128 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_128"].ID
-- local promotion0256 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_256"].ID
-- local promotion0512 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_512"].ID
-- local promotion1024 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_1024"].ID
-- local promotion2048 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_2048"].ID
-- local promotion4096 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_4096"].ID
-- local promotion8192 = GameInfo.UnitPromotions["PROMOTION_SPUE_COMBAT_8192"].ID


local function toBits(num)
    num = math.ceil(num)
    if num >= 8192 *2 - 1 then
        num = 8192 * 2 - 1
    end
	local t = {}
    while num > 0 do
        for k, v in pairs(g_numCPM) do
            if num >= v then
                -- if v == g_numCPM[1] then
                -- g_flagCPM[tostring(v)] = 1
                t[#t + 1] = g_promotionCPM[tostring(v)]
                print("CPM_num="..num.."v="..v)
                num = num - v
                print("CPM_num_post="..num)
                break
            end
        end
    end
    return t
end

function SPUEAddCombatBonus(pUnit, iNum)
    -- iNum 为单位战斗力的百分比加成
    if pUnit == nil then return end
    if pUnit:IsDead() then return end
	local num = iNum
	local pTables = toBits(num)
    for k, v in pairs(g_promotionCPM) do
        pUnit:SetHasPromotion(v.ID, false)
    end
    if pTables == {} then return end
    for k1, v1 in pairs(pTables) do
        pUnit:SetHasPromotion(v1.ID, true)
    end
end