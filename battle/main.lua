function love.load() -- Run while loading up the game, declare variables and load libraries

-- Declare some global variables/tables needed to load libraries--

selection = 1
select_target = {}
attack = {}
timer = {}

-- Load libraries

move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'
move = require 'battle-info/moves'
characters = require 'character-info/characters'
items = require 'items/item_info'
active_characters = require 'character-info/active-characters'
active_enemies = require 'character-info/active-enemies'
require 'battle-system/turns'
Object = require 'libs/classic'
require 'game'
require 'battle'


-- Declare variables/tables that require the libraries

player = active_characters.leiko
enemy1 = active_enemies.enemy1
enemy2 = active_enemies.enemy2
enemies = active_enemies
enemy_list = {enemy1, enemy2}

-- Declare other variables

--screen = 1
--canSwitchScreen = true

-- Start game
game = Game()

end

function love.draw() -- graphics
	game:draw()
end

function love.update(dt) -- game updates
	game:update(dt)
end

function love.keypressed(key) -- detect key presses
	game:keypressed(key)
end