bump = require "libs/bump"
sti = require "libs/sti"
Object = require "libs/classic"
maid64 = require "libs/maid64"
anim8 = require "libs/anim8"
Talkies = require "libs/talkies"

require "player"
require "game"



local cols,GRAVITY,map,world
local entities = {}

local game

function love.load()
	love.window.setMode(960, 960)

	maid64.setup(320)
  
	game = Game()

	Talkies.font = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 40)

end

function love.update(dt)
	game:update(dt)
	Talkies.update(dt)
end


function love.draw()
	maid64.start()
	game:draw(dt)
	maid64.finish()
	Talkies.draw()
end

function love.mousepressed( x,y,button )
	game:loadLevel()
end

function love.resize(w, h)
	maid64.resize(w, h)
end

function love.keypressed(key)
	game:manageKeypresses(key)
end
