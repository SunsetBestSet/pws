function love.load() -- Run while loading up the game, declare variables and load libraries

-- Load database

move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'
move = require 'battle-info/moves'
characters = require 'character-info/characters'
active_characters = require 'character-info/active-characters'
enemies = require 'character-info/enemies'

-- Load plugins
Object = require 'libs/classic'
Talkies = require "libs/talkies"

-- Load classes
require 'game'
require 'battle'
require 'startscreen'


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