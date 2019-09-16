Battle = Object:extend()

function Battle:new()
	self.selection = 1
	self.screen = 1
	self.selected_move = {}
	self.canSwitchScreen = true
end

function Battle:draw(dt)
	self:display_stats(enemy_list[1], enemy_list[2], player)
	if self.screen == 1 then
		self:draw_moveselection(player)
	elseif self.screen == 2 then
		self:drawSelectTarget(enemy_list[1], enemy_list[2])
	elseif self.screen == 3 then
		self:draw_textbox(enemy_list[self.selection], player, self.selected_move)
	end

	love.graphics.print("screen = " .. self.screen, 0, 50)
	love.graphics.print("selection = " .. self.selection, 0, 70)
end

function Battle:update(dt)
	if not self.canSwitchScreen then
		self.canSwitchScreen = true
	end
end

function Battle:keypressed(key)

	if key == 'right'  and self.screen ~= 3 then -- move self.selection to the right
		if (self.screen == 2 and self.selection < 2) or (self.screen == 1 and self.selection < 3) then
			self.selection = self.selection + 1
		end
	end

	if key == 'left' and self.selection > 1 and self.screen ~= 3 then -- move self.selection to the left
		self.selection = self.selection - 1
	end

	if key == 'return' and self.screen == 1 then
		self.selected_move = player.move[self.selection]
		self.screen = 2
		self:doSelectTarget()
		self.canSwitchScreen = false
	end

	if key == 'return' and self.screen == 2 and self.canSwitchScreen then
		self.screen = 3
		self:execute_attack(enemy_list[self.selection], player, self.selected_move)
	end

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