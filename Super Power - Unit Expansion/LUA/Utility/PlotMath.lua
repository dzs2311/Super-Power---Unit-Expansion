-- Lua Script1
-- Author: conan.morris
-- DateCreated: 9/11/2013 10:51:13 PM
--------------------------------------------------------------
include "math"

PlotMath = {};

function PlotMath.isEvenRow(yPosition)
	if yPosition == 0 or math.mod(yPosition,2) == 0 then
		return true
	end
	return false
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