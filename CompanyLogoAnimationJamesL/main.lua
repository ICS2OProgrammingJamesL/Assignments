-----------------------------------------------------------------------------------------
-- Title: Company Logo Animation
-- Name: James Lyall
-- Course: ICS2O
-- This program displays the company logo for the game
-----------------------------------------------------------------------------------------

-- Hide the status bar.
display.setStatusBar(display.HiddenStatusBar)

-- mkae the variable for the company logo
local CompanyLogo = display.newImageRect("Images/CompanyLogo.png", 1050, 770)
local Comet = display.newImage("Images/Comet.png", 925, 0)
local Comet2 = display.newImage("Images/comet.png", 100, 0)

-- mkae sound variables

local CometSound = audio.loadSound( "Sounds/CometSound.mp3" )
local CometSoundChannel

-- rotate the second comet so it faces dowm

Comet2:rotate(260)

--Comet.x = display.contentCenterX
--Comet.y = display.contentCenterY
CompanyLogo.x = display.contentCenterX
CompanyLogo.y = display.contentCenterY

-- global variables
scrollSpeed = -5

-- scale the comet

Comet:scale( 0.07, 0.07)
Comet2:scale( 0.07, 0.07)

-- set images transparent
CompanyLogo.alpha = 1

-- function: MoveComet
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveComet(event)
	-- add the scroll speed to the x-value of the ship
	Comet.y = Comet.y - scrollSpeed
	Comet.x = Comet.x + scrollSpeed
	-- make car opacity fade out
	Comet.alpha = Comet.alpha - 0.001
	if (Comet2.x == 101) then
		CometSoundChannel = audio.play(CometSound)
	end
end
    
-- MoveComet will be called over and over again
Runtime:addEventListener("enterFrame", MoveComet)

-- function: MoveComet
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the comet
local function MoveComet2(event)
	-- add the scroll speed to the x-value of the comet
	Comet2.y = Comet2.y - scrollSpeed
	Comet2.x = Comet2.x - scrollSpeed
	-- make car opacity fade out
	Comet2.alpha = Comet.alpha - 0.001
end
    
-- MoveComet will be called over and over again
Runtime:addEventListener("enterFrame", MoveComet2)