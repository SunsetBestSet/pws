selection = 1

move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'
move = require 'battle-info/moves'
characters = require 'character-info/characters'
items = require 'items/item_info'
active_characters = require 'character-info/active-characters'
active_enemies = require 'character-info/active-enemies'
require 'battle-system/turns'

local player = active_characters.leiko
local enemy = active_enemies.enemy1

start_battle(enemy, player)

function love.draw()
select_move(player)
end

function love.keypressed(key)
	if key == 'right' and selection < 3 then
		selection = selection + 1
	end
	if key == 'left' and selection > 1 then
		selection = selection - 1
	end
	if key == 'return' then
		turn(enemy, player)
	end
end