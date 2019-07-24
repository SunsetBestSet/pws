require 'game'

local cols, map, world

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