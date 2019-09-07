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

game = Game()


-- Declare variables/tables that require the libraries

player = active_characters.leiko
enemy1 = active_enemies.enemy1
enemy2 = active_enemies.enemy2
enemies = active_enemies
enemy_list = {enemy1, enemy2}

-- Declare other variables

screen = 1
canSwitchScreen = true


end

function love.draw() -- graphics
	game:draw()
end

function love.update(dt) -- game updates
	if not canSwitchScreen then
		canSwitchScreen = true
	end
	timer:update()
end

function love.keypressed(key) -- detect key presses
	if key == 'right'  and screen ~= 3 then -- move selection to the right
		if (screen == 2 and selection < 2) or (screen == 1 and selection < 3) then
			selection = selection + 1
		end
	end

	if key == 'left' and selection > 1 and screen ~= 3 then -- move selection to the left
		selection = selection - 1
	end

	if key == 'return' and screen == 1 then
		selected_move = player.move[selection]
		screen = 2
		select_target:execute()
		canSwitchScreen = false
	end

	if key == 'return' and screen == 2 and canSwitchScreen then
		screen = 3
		attack:execute(enemy_list[selection], player, selected_move)
	end

end