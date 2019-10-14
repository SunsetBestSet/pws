bump = require "libs/bump"
sti = require "libs/sti"
Object = require "libs/classic"
maid64 = require "libs/maid64"
anim8 = require "libs/anim8"
Talkies = require "libs/talkies"
Camera = require "libs/Camera"

require "player"
require "game"
require "npc"
require "chapters/chapter-1/chapter1"


local cols,GRAVITY,map,world
local entities = {}


function love.load()
	love.window.setMode(640, 640)

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
