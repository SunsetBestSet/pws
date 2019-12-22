Battle = Object:extend()

function Battle:new()
	self.selection = 1
	self.screen = 1
	self.selected_move = {}
	self.canSwitchScreen = true
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 30)
	self.turn = 1
	self.attacking = "player"
end

function Battle:draw(dt)
	love.graphics.setFont(self.debugFont)
	self:display_stats(enemy_list[1], enemy_list[2], player)
	if self.screen == 1 then
		self:draw_moveselection(player)
	elseif self.screen == 2 then
		self:drawSelectTarget(enemy_list[1], enemy_list[2])
	elseif self.screen == 3 then
		
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
	if key == 'return' and Talkies.isOpen() then 
		Talkies.onAction()
	elseif key == 'return' then
		if self.screen == 1 then
			self.selected_move = player.move[self.selection]
			self.screen = 2
			self:doSelectTarget()
			self.canSwitchScreen = false
		elseif self.screen == 2 and self.canSwitchScreen then
			self.screen = 3
			self:execute_attack(enemy_list[self.selection], player, self.selected_move)
		end
	end

	if key == 'right'  and self.screen ~= 3 then -- move self.selection to the right
		if (self.screen == 2 and self.selection < 2) or (self.screen == 1 and self.selection < 3) then
			self.selection = self.selection + 1
		end
	elseif key == 'left' and self.selection > 1 and self.screen ~= 3 then -- move self.selection to the left
		self.selection = self.selection - 1
	end

end

function Battle:start_battle(enemy, player)
	print("hp player: " .. player.status.hp)
	print("hp enemy: " .. enemy.status.hp)
end

function Battle:execute_attack(target, user, selected_move)
	-- grab status effects
	local effects = user.status.status_effects
	-- create local variables for status effects
	local humiliated = false
	local sleeping = false
	local awakened = false

	if #effects == 0 then
		selected_move.attack(target, user, selected_move)
	else
		for k, v in pairs(effects) do 
			if effects[k][1] == "humiliated" then 
				target = user
				humiliated = true
				effects[k][2] = effects[k][2] - 1
				selected_move.attack(target, user, selected_move)
			elseif effects[k][1] == "sleeping" then 
				effects[k][2] = effects[k][2] - 1
				sleeping = true
			elseif effects[k][1] == "poisoned" then 
				selected_move.attack(target, user, selected_move)
			end
		end
	end
	if target.status.hp <= 0 then 
		Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!")
		Talkies.say("GAME", target.name .. " was knocked out!")
	elseif user.status.hp <= 0  then 
		Talkies.say("GAME", user.name .. " was knocked out!")
	else
		user.status.status_effects = effects
		if sleeping then 
			Talkies.say("GAME", user.name .. " is asleep!")
		elseif humiliated then
			Talkies.say("GAME", user.name .. " feels humiliated!")
			Talkies.say("GAME", user.name .. " is crying...")
			if self.attacking == "player" then
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:enemy_turn(target, user, selected_move) end})
			else 
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:newTurn() end})
			end
		else
			if self.attacking == "player" then
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:enemy_turn(target, user, selected_move) end})
			else 
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:newTurn() end})
			end
		end
	end
end

function Battle:draw_textbox(target, user, selected_move)
end

function Battle:display_stats(enemy1, enemy2, player)
	love.graphics.print(enemy_list[1].name .. " stats", 0, 130)
	love.graphics.print("HP: " .. enemy_list[1].status.hp, 0, 160)
	love.graphics.print("DEFENSE: " .. enemy_list[1].status.defense, 0, 180)
	love.graphics.print("ATTACK: " .. enemy_list[1].status.attack, 0, 200)
	love.graphics.print("SPEED: " .. enemy_list[1].status.speed, 0, 220)
	if enemy_list[1].status.status_effects ~= 0 then 
		for k, v in pairs(enemy_list[1].status.status_effects) do 
			love.graphics.print("COUNTER(" .. enemy_list[1].status.status_effects[k][1] .. "): " .. enemy_list[1].status.status_effects[k][2], 0, 220 + 20 * k)
		end
	end

	love.graphics.print(enemy_list[2].name .. " stats", 250, 130)
	love.graphics.print("HP: " .. enemy_list[2].status.hp, 250, 160)
	love.graphics.print("DEFENSE: " .. enemy_list[2].status.defense, 250, 180)
	love.graphics.print("ATTACK: " .. enemy_list[2].status.attack, 250, 200)
	love.graphics.print("SPEED: " .. enemy_list[2].status.speed, 250, 220)
	if enemy_list[2].status.status_effects ~= 0 then 
		for k, v in pairs(enemy_list[2].status.status_effects) do 
			love.graphics.print("COUNTER(" .. enemy_list[2].status.status_effects[k][1] .. "): " .. enemy_list[2].status.status_effects[k][2], 250, 220 + 20 * k)
		end
	end

	love.graphics.print(player.name .. " stats", 500, 130)
	love.graphics.print("HP: " .. player.status.hp, 500, 160)
	love.graphics.print("DEFENSE: " .. player.status.defense, 500, 180)
	love.graphics.print("ATTACK: " .. player.status.attack, 500, 200)
	love.graphics.print("SPEED: " .. player.status.speed, 500, 220)
	if player.status.status_effects ~= 0 then 
		for k, v in pairs(player.status.status_effects) do 
			love.graphics.print("COUNTER(" .. player.status.status_effects[k][1] .. "): " .. player.status.status_effects[k][2], 500, 220 + 20 * k)
		end
	end
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

function Battle:enemy_turn(user, target)
	self.attacking = "enemy"
	math.randomseed(os.time())
	local rand = math.random(2)
	local move = user.move[rand]
	self:execute_attack(target, user, move)
end

function Battle:newTurn()
	if enemy_list[1].status.hp <= 0 or enemy_list[2].status.hp <= 0 or player.status.hp <= 0 then
		self:endBattle()
	else
		self.selection = 1
		self.screen = 1
		self.turn = self.turn + 1
		print("turn: " .. self.turn)
		Talkies.clearMessages()
		self.attacking = "player"
	end

end
function Battle:endBattle()
	Talkies.say("GAME", "end of battle!")
end