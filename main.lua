-- load libraries / plugins
bump = require "libs/bump"
sti = require "libs/sti"
Object = require "libs/classic"
maid64 = require "libs/maid64"
anim8 = require "libs/anim8"
Talkies = require "libs/talkies"
Camera = require "libs/Camera"
tween = require "libs/tween"

-- load battle database
move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'
move = require 'battle-info/moves'
characters = require 'character-info/characters'
enemies = require 'character-info/enemies'

-- load components
require "player"
require "game"
require "npc"
require "battle"

-- load chapters
require "chapters/chapter-1/chapter1"
require "chapters/chapter-2/chapter2"
require "chapters/chapter-3/chapter3"
require "chapters/chapter-4/chapter4"
require "chapters/chapter-2/scenes/scene6"
require "chapters/chapter-2/scenes/scene2"

-- load maps unlocked
require "mapsU/townU"
require "mapsU/houseireneU"
require "mapsU/shopU"
require "mapsU/throneroomU"
require "mapsU/leikoroomU"


-- create variables for physics
local cols,GRAVITY,map,world
local entities = {}


function love.load()
	-- Set the window title & size
	love.window.setTitle("The Disk")
	love.window.setMode(640, 640)
	-- Set up digital resolution (we are upscaling a small resolution)
	maid64.setup(320)
	-- Set font of the talk textboxes
	Talkies.font = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 40)
	-- Create instance of class "Game"
	game = Game()
end


function love.update(dt) -- Runs every frame
	-- Update the game
	game:update(dt)
	-- Update the talk box plugin
	Talkies.update(dt)
end


function love.draw(dt) -- Runs every frame
	-- Start digital resolution simulation
	maid64.start()
	-- Draw the game (overworld)
	game:draw(dt)
	-- Stop digital resolution simulation
	maid64.finish()
	-- Draw talk textboxes (over the digital resolution simulation)
	Talkies.draw()
	-- Draw battle screen
	game.battle:draw(dt)
end


function love.resize(w, h)
	-- Function in maid64 plugin to upscale digital resolution
	maid64.resize(w, h)
end

function love.keypressed(key)
	-- Manage key presses of overworld & battle screen
	game:manageKeypresses(key)
end
