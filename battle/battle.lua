Battle = Object:extend()

function Battle:new()
	self.selection = 1
end

function Battle:start_battle(enemy, player)
	print("hp player: " .. player.status.hp)
	print("hp enemy: " .. enemy.status.hp)
end

function Battle:execute_attack(enemy, player, selected_move)
	selected_move.attack(enemy, player, selected_move)
end

function Battle:draw_textbox(enemy, player, selected_move)
	local text = player.name .. " used " .. selected_move.name .. " on " .. enemy.name .. "!"
	love.graphics.print(text, 0, 0)
end

function Battle:display_stats(enemy1, enemy2, player)
	local hp_player = "HP PLAYER: " .. player.status.hp
	local hp_enemy1 = enemy1.name .. ": " ..  enemy_list[1].status.hp
	local hp_enemy2 = enemy2.name.. ": " ..  enemy_list[2].status.hp
	local width_screen = love.graphics.getWidth()
	local width_text = 130
	love.graphics.printf(hp_player, width_screen - width_text, 0, width_text, 'right')
	love.graphics.printf(hp_enemy1, width_screen - width_text, 20, width_text, 'right')
	love.graphics.printf(hp_enemy2, width_screen - width_text, 40, width_text, 'right')
end

function Battle:draw_moveselection(player)
	local move1 = player.move[1]
	local move2 = player.move[2]
	local move3 = player.move[3]
	local text = ""
	if self.selection == 1 then
		text = "> ".. move1.name .. "    " .. move2.name .. "    " .. move3.name
	elseif self.selection == 2 then
		text = move1.name .. "  > " .. move2.name .. "    " .. move3.name
	elseif self.selection == 3 then
		text = move1.name .. "    " .. move2.name .. "  > " .. move3.name
	end
	love.graphics.print("Select a move:", 0, 0)
	love.graphics.print(text, 0, 20)
end

function Battle:checkHP(enemy, player)
	print("hp player: " .. player.status.hp)
	print("hp enemy: " .. enemy.status.hp)
end

function Battle:doSelectTarget(move)
	self.selection = 1
end

function Battle:drawSelectTarget(enemy_1, enemy_2)
	local text = ""
	if self.selection == 1 then
		text = "> ".. enemy1.name .. "    " .. enemy2.name
	elseif self.selection == 2 then
		text = enemy1.name .. "  > " .. enemy2.name
	end
	love.graphics.print("Select the target:", 0, 0)
	love.graphics.print(text, 0, 20)
end