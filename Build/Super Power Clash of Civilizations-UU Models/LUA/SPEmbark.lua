-- SPEmbark
-- Author: excal
-- DateCreated: 2020/7/27 21:39:48
--------------------------------------------------------------
function EmbarkGraphic(playerID)
	local iPlayer = Game.GetActivePlayer()
	local pPlayer = Players[iPlayer]
	local pEraType = pPlayer:GetCurrentEra()
	local pEraID = GameInfo.Eras[pEraType].ID;

	if  pEraID <= GameInfo.Eras["ERA_CLASSICAL"].ID  then
		pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEY")
	elseif  pEraID >= GameInfo.Eras["ERA_MEDIEVAL"].ID and pEraID <= GameInfo.Eras["ERA_RENAISSANCE"].ID then
		pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_GALLEON")
	elseif pEraID >= GameInfo.Eras["ERA_INDUSTRIAL"].ID then
		pPlayer:SetEmbarkedGraphicOverride("ART_DEF_UNIT_TRANSPORT")
	end
	
end
GameEvents.PlayerDoTurn.Add(EmbarkGraphic)

