-- main
-- Author: conan.morris
-- DateCreated: 9/11/2013 9:37:35 PM
--------------------------------------------------------------
print("Loaded Fortress Borders Script")


UNOCCUPIED_FORT_TURNS = 5		-- Turns a fort can be unoccupied before nature will retake it and the 
								-- land around it
MAX_FORT_CITY_DISTANCE = 5		-- Distance a plot needs to be away from a city to allow nature to retake
								-- the land if the fort is unoccupied

-- ##############################################################################
-- Methods for finding plots in any direction from a given plot
PlotMath = {};

	function PlotMath.isEvenRow(yPosition)
		if yPosition == 0 or math.fmod(yPosition,2) == 0 then
			return true
		end
		return false
	end

	function PlotMath.getHexNorthWest(position)
		local newPosition = {}
		newPosition.xPosition = position.xPosition
		newPosition.yPosition = position.yPosition + 1

		if PlotMath.isEvenRow(position.yPosition) == true then
			newPosition.xPosition = newPosition.xPosition - 1
		end
		return newPosition
	end

	function PlotMath.getHexNorthEast(position)
		local newPosition = {}
		newPosition.xPosition = position.xPosition
		newPosition.yPosition = position.yPosition + 1

		if PlotMath.isEvenRow(position.yPosition) == false then
			newPosition.xPosition = newPosition.xPosition + 1
		end
		return newPosition
	end

	function PlotMath.getHexSouthWest(position)
		local newPosition = {}
		newPosition.xPosition = position.xPosition 
		newPosition.yPosition = position.yPosition - 1

		if PlotMath.isEvenRow(position.yPosition) == true then
			newPosition.xPosition = newPosition.xPosition - 1
		end
		return newPosition
	end

	function PlotMath.getHexSouthEast(position)
		local newPosition = {}
		newPosition.xPosition = position.xPosition
		newPosition.yPosition = position.yPosition - 1

		if PlotMath.isEvenRow(position.yPosition) == false then
			newPosition.xPosition = newPosition.xPosition + 1
		end
		return newPosition
	end

	function PlotMath.getHexEast(position)
		local newPosition = {}
		newPosition.xPosition = position.xPosition + 1
		newPosition.yPosition = position.yPosition
		return newPosition
	end

	function PlotMath.getHexWest(position)
		local newPosition = {}
		newPosition.xPosition = position.xPosition - 1
		newPosition.yPosition = position.yPosition
		return newPosition
	end

-- ###############################################################################
-- Set Timer for fort ownership. If there is no until in the fort for x number
-- of turns the fort and all land around it will be lost if it is not close to 
-- a city you own
function setPlotOwnershipTimer(centerPlot, iPlayer)
	local db = Modding.OpenSaveData()
	local x = centerPlot.xPosition
	local y = centerPlot.yPosition

	db.SetValue("fort-timer-" .. x .. "-" .. y, UNOCCUPIED_FORT_TURNS)
	db.SetValue("fort-owner-" .. x .. "-" .. y, iPlayer)
end

-- ###############################################################################
-- Set the owner if a hex, and all adjacent hex's
function claimTerritoryAroundHex(centerPlot, iPlayer, iFortOwner)

	print("Claiming territory")
	setPlotOwner(centerPlot, iPlayer, 8192, iFortOwner)
	setPlotOwner(PlotMath.getHexEast(centerPlot), iPlayer, 8192, iFortOwner)
	setPlotOwner(PlotMath.getHexWest(centerPlot), iPlayer, 8192, iFortOwner)
	setPlotOwner(PlotMath.getHexNorthWest(centerPlot), iPlayer, 8192, iFortOwner)
	setPlotOwner(PlotMath.getHexNorthEast(centerPlot), iPlayer, 8192, iFortOwner)
	setPlotOwner(PlotMath.getHexSouthWest(centerPlot), iPlayer, 8192, iFortOwner)
	setPlotOwner(PlotMath.getHexSouthEast(centerPlot), iPlayer, 8192, iFortOwner)
end

--###############################################################################
-- Set the owner of a plot
function setPlotOwner(mapPlot, iPlayer, iCity, iFortOriginalOwner)

	--print("Land at: " .. mapPlot.xPosition .. ", " .. mapPlot.yPosition)
	local pPlot = Map.GetPlot(mapPlot.xPosition, mapPlot.yPosition)
	local iFortOwner = nil

	if(iPlayer == nil) then
		print("Nil iPlayer")
		return
	end
	--print("iPlayer: " .. iPlayer)
	
	local pPlayer = Players[iPlayer]

	if(pPlot == nil) then
		print("Nil Plot")
		return
	end

	-- Give land back to nature
	if(iPlayer == -1) then
		local iClosestCity = nil

		-- Check for fort original owner
		if(iFortOriginalOwner == nil or iFortOriginalOwner == -1) then
			iFortOwner = pPlot:GetOwner()
			if(iFortOwner == nil or iFortOwner == -1) then
				print("!!!!Fort owner is nil!!!")
				return
			end
		else
			iFortOwner = iFortOriginalOwner
		end
		
		-- Dont retake land if plot is close enough to a city owned by the fort owner
		for pCity in Players[iFortOwner]:Cities() do
			local pCityPlot = pCity:Plot()
			if(Map.PlotDistance(pCityPlot:GetX(), pCityPlot:GetY(), pPlot:GetX(), pPlot:GetY()) < MAX_FORT_CITY_DISTANCE) then
				return
			end
		end

		-- Dont retake land if plot is owned by someone other than the fort owner
		if(pPlot:GetOwner() ~= iFortOwner) then
			print("Don't retake land owned by someone else")
			return
		end

		print ("Nature retakes land at: " .. pPlot:GetX() .. ", " .. pPlot:GetY())
	else
		local iPlotOwner = pPlot:GetOwner()
		if(iPlotOwner ~= nil and iPlotOwner ~= -1) then
			local iPlotPlayerTeam = Players[iPlotOwner]:GetTeam()
			local pFortPlayerTeam = Teams[iPlayer]
			-- Don't take plots from players you are not at war with
			if(pFortPlayerTeam:IsAtWar(iPlotPlayerTeam) == false) then
				print("Don't take plot from friend")
				return
			end
		end

		print ( Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescriptionKey()) .. " Taking land at: " .. pPlot:GetX() .. ", " .. pPlot:GetY())
	end
	pPlot:SetOwner(iPlayer, 8192)
end

--#########################################################################
-- Detect the creation of an improvment
Events.SerialEventImprovementCreated.Add(
	function(hex1, hex2, continent1, continent2, iPlayer, 
		improvementType, improvmentRRType, improvementEra, improvementState, improvmentEra2)
		local pPlot = Map.GetPlot(ToGridFromHex(hex1, hex2))

		print("Improvement built: " .. improvementType)
		if (pPlot:GetImprovementType() ~= GameInfoTypes.IMPROVEMENT_FORT_SPUE) 
		then
			return true
		elseif improvementState ~= 4 then
			return true
		end	
		
		local pPlayer = Players[iPlayer]
		
		-- I'm not sure what hex1 and hex2 are, but this converts them to x,y coords,
		-- then to a map plot.
		
				
		centerPlot = {}
		centerPlot.xPosition = pPlot:GetX()
		centerPlot.yPosition = pPlot:GetY()

		setPlotOwnershipTimer(centerPlot, iPlayer)
		claimTerritoryAroundHex(centerPlot, iPlayer, iPlayer)
		print(string.format("%d built on tile %d, %d (%d) by player %d.", improvementType, centerPlot.xPosition, centerPlot.xPosition, improvementState, iPlayer))
	end
)

--########################################################################
-- Detect the movement of a unit
function OnLocalMachineUnitPositionChanged( playerID, unitID, tableZ, u, v, a, b, c, d, e)
	
	local pPlayer = Players[ playerID ]
	local iCurrentPlayerTeam = pPlayer:GetTeam()
	local pCurrentPlayerTeam = Teams[iCurrentPlayerTeam]
	local pUnit = pPlayer:GetUnitByID( unitID )

	if ( pUnit == nil ) then
		return;
	end

	local pPlot = pUnit:GetPlot()
	local iPlotOwner = pPlot:GetOwner()

	--local pCity = pPlot:GetPlotCity()

	--print ( Locale.ConvertTextKey(pPlayer:GetCivilizationShortDescriptionKey()) .. " Moves " ..  Locale.ConvertTextKey(pUnit:GetNameKey()) .. " : ID : " .. unitID )
	--print("from: " .. pPlot:GetX() .. ", " .. pPlot:GetY())
	
	-- If Plot is a fort, check if civs are at war, and if so whomever 
	-- is currently on the fort claims the land
	if (pPlot:GetImprovementType() == GameInfoTypes.IMPROVEMENT_FORT_SPUE) then

	--	print("plot type is 14")
		local centerPlot = {}
		centerPlot.xPosition = pPlot:GetX()
		centerPlot.yPosition = pPlot:GetY()
		
		if(iPlotOwner == -1 or iPlotOwner == nil) then 
			print("Taking unclaimed fort: " .. centerPlot.xPosition .. ", " .. centerPlot.yPosition .. " | " .. playerID)
			setPlotOwnershipTimer(centerPlot, playerID)
			claimTerritoryAroundHex(centerPlot, playerID, iPlotOwner)
		else
		--	print("Plot owner: " .. iPlotOwner)
			local pPlotOwner = Players[iPlotOwner]
			local iPlotPlayerTeam = pPlotOwner:GetTeam()
			local pPlotPlayerTeam = Teams[iPlotPlayerTeam]

			-- At war with for owner. Take fort from owner
			if(pCurrentPlayerTeam:IsAtWar(iPlotPlayerTeam)) then
				print("At War. Taking fort: " .. centerPlot.xPosition .. ", " .. centerPlot.yPosition .. " | " .. playerID)
				setPlotOwnershipTimer(centerPlot, playerID)
				claimTerritoryAroundHex(centerPlot, playerID, iPlotOwner)
			else
			--	print("PEACE!!!")
			end
		end
	else
		--print("plot type is: " .. pPlot:GetImprovementType())
	end
	
--	if ( pPlot:IsCity() ) then
--		print("Plot is city")
--	end
end
Events.LocalMachineUnitPositionChanged.Add( OnLocalMachineUnitPositionChanged );


--#####################################################################
-- Detect the destruction of an improvement
function OnImprovementDestroyed(hexX, hexY, continent1, continent2, iPlayer, 
		improvementType)
	
--[[	
		--if(iPlayer == nil) then
			print("No player destroyed improvement")
		end

		if(improvementType == nil) then
			print("unknown improvement destroyed")
		end

		if improvementType ~= 37 then
			print("Destroyed: " .. improvementType)
			return true
		end	

		local pPlayer = Players[iPlayer]

		-- I'm not sure what hex1 and hex2 are, but this converts them to x,y coords,
		-- then to a map plot.
		local pPlot = Map.GetPlot(ToGridFromHex(hex1, hex2))
				
		centerPlot = {}
		centerPlot.xPosition = pPlot:GetX()
		centerPlot.yPosition = pPlot:GetY()

		claimTerritoryAroundHex(centerPlot, iPlayer)
		]]
end
--Events.SerialEventImprovementDestroyed.Add(OnImprovementDestroyed)


-- ######################################################################
-- Detect end? of each players turn
GameEvents.PlayerDoTurn.Add(
	function(iPlayer)
		local db = Modding.OpenSaveData()
		local fortTimer = nil
		local iW, iH = Map.GetGridSize()
		local pUnit = nil
		local pPlot = nil
		local iFortOwner = nil
		local centerPlot = {}
		
		if(iPlayer ~= 0) then
			return
		end
		print ("Turn start")
		for x = 0, iW - 1, 1 do
			for y = 0, iH - 1, 1 do
				iFortTimer = db.GetValue("fort-timer-" .. x .. "-" .. y)
				centerPlot.xPosition = x
				centerPlot.yPosition = y

				if(iFortTimer ~= nil) then
					print("Found a fort at: " .. x .. ", " .. y .. " Timer: " .. iFortTimer)
					pPlot = Map.GetPlot(x,y)
					pUnit = pPlot:GetUnit()
					--local pUnit = Unit.AtPlot(pPlot)
					iFortOwner = db.GetValue("fort-owner-" .. x .. "-" .. y)
					if(pUnit ~= nil) then				
						print("Unit: " .. Locale.ConvertTextKey(pUnit:GetNameKey()))
						
						-- Unit on fort owns it. Reset timer
						if(iFortOwner == pUnit:GetOwner()) then
							print("EXTENDING TIME")
							db.SetValue("fort-timer-" .. x .. "-" .. y, UNOCCUPIED_FORT_TURNS)
						-- Unit on for does not own it. Subtract from timer.
						else
							print("UNIT DOESN't OWN FORT. Unit owner: " .. pUnit:GetOwner() .. " fort owner: " .. iFortOwner)
							if(iFortTimer > 0) then
								db.SetValue("fort-timer-" .. x .. "-" .. y, iFortTimer -1)
							end
							
							-- If player on a fort and is at war with fort owner, change
							-- for ownership
							local iFortOwnerTeam = Players[iFortOwner]:GetTeam()
							local pUnitTeam = Teams[pUnit:GetTeam()]
							if(pUnitTeam:IsAtWar(iFortOwnerTeam)) then
								setPlotOwnershipTimer(centerPlot, playerID)
								claimTerritoryAroundHex(centerPlot, playerID, iFortOwner)
							end
						end
					-- No unit on fort. Subtract from timer
					else						
						if(iFortTimer > 0) then
							print("No Unit at fort")
							db.SetValue("fort-timer-" .. x .. "-" .. y, iFortTimer -1)
						end
					end

					-- No unit has recently occupied this for. Borders are lost
					if(iFortTimer == 0) then
						print("Lost fort!!!!!!!!!!!!!!!!!!!")
						claimTerritoryAroundHex(centerPlot, -1, iFortOwner)
						db.SetValue("fort-timer-" .. x .. "-" .. y, -1)
					else 
						if(iFortTimer ~= -1) then
							-- Just in case a lost for border overlaps with an occupied
							-- for, reclaim the territory.
							print("Reclaim for adjacent fort")
							claimTerritoryAroundHex(centerPlot, iFortOwner, iFortOwner)
						end
					end
				end
			end
		end
		print ("Turn end")
	end
)
-- ######################################################################
-- 禁卫军堡垒上限
function BuildAvailableSPUE(iPlayer, iUnit, iX, iY, iBuild)
	if Players[iPlayer] == nil then return end;
	if Map.GetPlot(iX, iY) == nil then
		return;
	end
	local pPlayer = Players[iPlayer];
	local pPlot = Map.GetPlot(iX, iY);
	
	if iBuild == GameInfo.Builds["BUILD_FORT_SPUE"].ID 
	and pPlayer:GetImprovementCount(GameInfoTypes.IMPROVEMENT_FORT_SPUE) >= 4
	then
		return false;
	else
		return true;
	end
end
GameEvents.PlayerCanBuild.Add(BuildAvailableSPUE)