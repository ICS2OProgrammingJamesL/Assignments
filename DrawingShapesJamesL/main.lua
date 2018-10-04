-----------------------------------------------------------------------------------------
-- Title: DrawingShapesJamesL
-- Name: James Lyall
-- Course: ICS2O/3C
-- This program display different shapes and their names
-----------------------------------------------------------------------------------------

-- Create my local variables
local verticesTriangle
local verticesTriangle = { 200,200, 0,200, 100,0 }
local TriangleX = 150
local TriangleY = 100
local myTriangle
local myTriangle = display.newPolygon( TriangleX, TriangleY, verticesTriangle)
local areaText
local textSize = 35
local myHexagon 
local HexagonX = 150
local hexagonY = 100
local verticesHexagon
local verticesHexagon = {}

-- set background colour of my screen.
display.setDefault("background", 1, 0.4, 1)

-- Set the stroke width and colour.
myTriangle.strokeWidth = 10
myTriangle:setStrokeColor(0/255, 0/255, 0/255)

-- set the stroke colour
myTriangle:setFillColor(50/255, 200/255, 100/255)











 







