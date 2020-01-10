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


local cols,GRAVITY,map,world
local entities = {}


function love.load()
	love.window.setTitle("The Disk")
	love.window.setMode(640, 640)
	maid64.setup(320)
	Talkies.font = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 40)
	game = Game()
end


function love.update(dt)
	game:update(dt)
	Talkies.update(dt)
end


function love.draw(dt)
	maid64.start()
	game:draw(dt)
	maid64.finish()
	Talkies.draw()
	game.battle:draw(dt)
end


function love.resize(w, h)
	maid64.resize(w, h)
end

function love.keypressed(key)
	game:manageKeypresses(key)
end
