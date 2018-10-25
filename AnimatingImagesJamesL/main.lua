-----------------------------------------------------------------------------------------
-- Title: Animating Images
-- Name: James Lyall
-- Course: ICS2O
-- This program animates images
-----------------------------------------------------------------------------------------

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = -5
scrollSpeed2 = 5

-- create text variable
local textobject

-- background image with width and height
local backgroundImage = display.newImageRect("Images/space.jpg", 2048, 1536)

-- display text on screen.
textObject = display.newText( "By James, didn't know  to shrink stuff :(", 500, 150, nil, 50 )
-- add colour to text.
textObject:setTextColor(20/255, 250/255, 25/255)

-- character image with width and height
local rocketship = display.newImageRect("Images/rocketship.png", 300, 300)
local car = display.newImageRect("Images/Car.png", 200, 200)
local motorbike = display.newImageRect("Images/motorbike.png", 200, 200)

-- set images transparent
rocketship.alpha = 1
car.alpha = 1
motorbike.alpha = 1

-- set the x and y values
rocketship.x = 500
rocketship.y = 800
car.x = 200
car.y = 0
motorbike.x = 1000
motorbike.y = 500

-- function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	rocketship.y = rocketship.y + scrollSpeed
    --change the transparency of the ship every time it moves so that it fades out
	rocketship.alpha = rocketship.alpha - 0.001
end

-- MoveMotorbike will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- function: MoveMotorbike
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveMotorbike(event)
	-- add the scroll speed to the x-value of the ship
	motorbike.x = motorbike.x + scrollSpeed

	-- if the x-value of the motorbike is greater then 1000 then change the scroll speed to a negative
    if (motorbike.x <= -10) then
    	-- change the scroll speed value
    	scrollSpeed = 5
    end

	-- make motorbike bounc off wall
	if (motorbike.x >= 1000) then
   		-- change scroll speed value
   		scrollSpeed = -5
   	end
end

-- MoveMotorbike will be called over and over again
Runtime:addEventListener("enterFrame", MoveMotorbike)

-- function: MoveMotorbike
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveCar(event)
	-- add the scroll speed to the x-value of the ship
	car.y = car.y - scrollSpeed
	car.x = car.x - scrollSpeed
	-- make car opacity fade out
	car.alpha = car.alpha - 0.001
end
    
-- Movecar will be called over and over again
Runtime:addEventListener("enterFrame", MoveCar)

