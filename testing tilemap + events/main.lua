bump = require "libs/bump"
sti = require "libs/sti"
Object = require "libs/classic"
maid64 = require "maid64"
require "player"
require "game"

anim8 = require 'libs/anim8'

local cols,GRAVITY,map,world
local entities = {}

local game;

function love.load()
  love.window.setMode(960, 960, {resizable=true, vsync=false, minwidth=200, minheight=200})
  
  maid64.setup(320)

  game = Game()
  
end

function love.update(dt)
  game:update(dt);
end


function love.draw()
	maid64.start()
	game:draw(dt)
	maid64.finish()
end

function love.mousepressed( x,y,button )
		game:loadLevel();
end

function love.resize(w, h)
	maid64.resize(w,h)
end
