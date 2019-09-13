Game = Object:extend()

function Game:new()
	self.battle = Battle()
	self.screen = 1
	self.selected_move = {}
	self.canSwitchScreen = true
end

function Game:draw(dt)
	self.battle:display_stats(enemy_list[1], enemy_list[2], player)
	if self.screen == 1 then
		self.battle:draw_moveselection(player)
	elseif self.screen == 2 then
		self.battle:drawSelectTarget(enemy_list[1], enemy_list[2])
	elseif self.screen == 3 then
		self.battle:draw_textbox(enemy_list[self.battle.selection], player, self.selected_move)
	end

	love.graphics.print("screen = " .. self.screen, 0, 50)
	love.graphics.print("selection = " .. self.battle.selection, 0, 70)
end

function Game:update(dt)
	if not self.canSwitchScreen then
		self.canSwitchScreen = true
	end
end

function Game:keypressed(key)

	if key == 'right'  and self.screen ~= 3 then -- move self.battle.selection to the right
		if (self.screen == 2 and self.battle.selection < 2) or (self.screen == 1 and self.battle.selection < 3) then
			self.battle.selection = self.battle.selection + 1
		end
	end

	if key == 'left' and self.battle.selection > 1 and self.screen ~= 3 then -- move self.battle.selection to the left
		self.battle.selection = self.battle.selection - 1
	end

	if key == 'return' and self.screen == 1 then
		self.selected_move = player.move[self.battle.selection]
		self.screen = 2
		self.battle:doSelectTarget()
		self.canSwitchScreen = false
	end

	if key == 'return' and self.screen == 2 and self.canSwitchScreen then
		self.screen = 3
		self.battle:execute_attack(enemy_list[self.battle.selection], player, self.selected_move)
	end


end