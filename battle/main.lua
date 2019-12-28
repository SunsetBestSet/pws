function love.load() -- Run while loading up the game, declare variables and load libraries

-- Load database

move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'
move = require 'battle-info/moves'
characters = require 'character-info/characters'
items = require 'items/item_info'
active_characters = require 'character-info/active-characters'
active_enemies = require 'character-info/active-enemies'

-- Load plugins
Object = require 'libs/classic'
Talkies = require "libs/talkies"

-- Load classes
require 'game'
require 'battle'
require 'startscreen'


-- Declare variables/tables that require the libraries
ally = active_characters[1]
player = active_characters[2]
enemy1 = active_enemies.enemy1
enemy2 = active_enemies.enemy2
enemies = active_enemies
enemy_list = {enemy1, enemy2}

-- Declare other variables

--screen = 1
--canSwitchScreen = true

-- Start game

Talkies.font = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 40)
game = Game()

end

function love.draw() -- graphics
	game:draw()
	Talkies.draw(dt)
end

function love.update(dt) -- game updates
	game:update(dt)
	Talkies.update(dt)
end

function love.keypressed(key) -- detect key presses
	game:keypressed(key)
end