selection = 1
select_target = {}
attack = {}

move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'
move = require 'battle-info/moves'
characters = require 'character-info/characters'
items = require 'items/item_info'
active_characters = require 'character-info/active-characters'
active_enemies = require 'character-info/active-enemies'
require 'battle-system/turns'

player = active_characters.leiko
enemy1 = active_enemies.enemy1
enemy2 = active_enemies.enemy2
enemies = active_enemies
enemy_list = {enemy1, enemy2}

screen = 1
canSwitchScreen = true

function love.draw()
	display_stats(enemy1, enemy2, player)
	if screen == 1 then
		select_move(player)
	end
	if screen == 2 then
		select_target:draw(enemy1, enemy2)
	end
end

function love.update(dt)
	if not canSwitchScreen then
		canSwitchScreen = true
	end
end

function love.keypressed(key)
	if key == 'right' and selection < 3 then
		selection = selection + 1
	end
	if key == 'left' and selection > 1 then
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