bump = require "libs/bump"
sti = require "libs/sti"
Object = require "libs/classic"
require "player"
require "game"

anim8 = require 'libs/anim8'

local cols, map, world
local entities = {}

local game

function love.load()
	game = Game()
end

function love.update(dt)
	game:update(dt)
end

function love.draw()
	game:draw(dt)
end