Battle = Object:extend()

function Battle:new()
	self.selection = 1
	self.screen = 1
	self.selected_move = {}
	self.canSwitchScreen = true
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 25)
	self.turn = 1
	self.attacking = "player"
	self.enemycount = 1
	self.characters = require "character-info/characters"

	love.graphics.setDefaultFilter("nearest", "nearest")
end

function Battle:initiate(oncomplete, player, enemy1, ally, enemy2)
	self.player = self.characters[player] 
	self.enemy1 = enemy1
	self.ally = ally or nil
	self.enemy2 = enemy2 or nil

	self.oncomplete = oncomplete or function()  end
	if self.ally == nil then
		self.enemycount = 1 
		self.enemy_list = {enemy1}
	else 
		self.enemycount = 2
		self.enemy_list = {enemy1, enemy2}
	end
	self.power = true
	-- ACTIVE THIS!!!! THIS ENSURES THE PLAYER CANNOT MOVE
	--game.player.canMove = false
end

function Battle:draw(dt)
	if self.power then 
		local WINDOW_WIDTH, WINDOW_HEIGHT = love.graphics.getDimensions()
		love.graphics.setFont(self.debugFont)
		if self.enemycount == 1 then 
			local image = love.graphics.newImage("assets/battle-sprites/" .. self.enemy1.image)
			local image_width, image_height = image:getDimensions()
			love.graphics.draw(image, WINDOW_WIDTH / 2 - image_width * 3, WINDOW_HEIGHT / 2 - image_height * 3 - WINDOW_HEIGHT * .1, 0, 6)
			love.graphics.print("HP: " .. self.enemy1.status.hp, WINDOW_WIDTH / 2 - image_width * 3, (WINDOW_HEIGHT / 2 - image_height * 3 - WINDOW_HEIGHT * .1) - 25)
		elseif self.enemycount == 2 then 
			local image1 = love.graphics.newImage("assets/battle-sprites/" .. self.enemy1.image)
			local image1_width, image1_height = image1:getDimensions()
			love.graphics.draw(image1, WINDOW_WIDTH / 4 - image1_width * 3, WINDOW_HEIGHT / 2 - image1_height * 3 - WINDOW_HEIGHT * .1, 0, 6)
			love.graphics.print("HP: " .. self.enemy1.status.hp, WINDOW_WIDTH / 4 - image1_width * 3, (WINDOW_HEIGHT / 2 - image1_height * 3 - WINDOW_HEIGHT * .1) - 25)
			local image2 = love.graphics.newImage("assets/battle-sprites/" .. self.enemy2.image)
			local image2_width, image2_height = image2:getDimensions()
			love.graphics.draw(image2, WINDOW_WIDTH * .75 - image2_width * 3, WINDOW_HEIGHT / 2 - image2_height * 3 - WINDOW_HEIGHT * .1, 0, 6)
			love.graphics.print("HP: " .. self.enemy2.status.hp, WINDOW_WIDTH * .75 - image1_width * 3, (WINDOW_HEIGHT / 2 - image1_height * 3 - WINDOW_HEIGHT * .1) - 25)
		end
		
		love.graphics.print(self.player.name .. " HP: " .. self.player.status.hp, WINDOW_WIDTH - 150, 0)
		
		if self.ally ~= nil then 
			love.graphics.print(self.ally.name .. " HP: " .. self.ally.status.hp, WINDOW_WIDTH - 150, 25)
		end

		--self:display_stats(self.enemy1, self.enemy2, self.player)
		if self.screen == 1 then
			self:draw_moveselection(self.player)
		elseif self.screen == 2 then
			self:drawSelectTarget()
		end
	end
	--[[love.graphics.print("screen = " .. self.screen, 0, 50)
	love.graphics.print("selection = " .. self.selection, 0, 70)]]
end

function Battle:update(dt)
	if not self.canSwitchScreen then
		self.canSwitchScreen = true
	end
end

function Battle:keypressed(key)
	if self.power then 
		if key == 'return' and Talkies.isOpen() then 
			Talkies.onAction()
		elseif key == 'return' then
			if self.screen == 1 then
				self.selected_move = self.player.move[self.selection]
				self.screen = 2
				self:doSelectTarget()
				self.canSwitchScreen = false
			elseif self.screen == 2 and self.canSwitchScreen then
				self.screen = 3
				if self.selection < 3 then 
					self:execute_attack(self.enemy_list[self.selection], self.player, self.selected_move)
				else
					self:execute_attack(self.ally, self.player, self.selected_move)
				end
			end
		end

		if key == 'right'  and self.screen ~= 3 then -- move self.selection to the right
			if self.selection < 3 and (self.enemycount == 2 or self.enemycount == 1 and self.screen == 1) then
				self.selection = self.selection + 1
			end
		elseif key == 'left' and self.selection > 1 and self.screen ~= 3 then -- move self.selection to the left
			self.selection = self.selection - 1
		end
	end
end

function Battle:execute_attack(target, user, selected_move)
	-- grab status effects
	local effects = user.status.status_effects
	-- create local variables for status effects
	local humiliated = false
	local sleeping = false
	local awakened = false
	if target.status.hp <= 0 then 
		local nextTurn 
		if self.enemycount == 1 then 
			nextTurn = function() self:newTurn() end
		elseif self.enemycount == 2 then 
			if self.attacking == "player" then nextTurn = function() self:ally_turn() end end
			if self.attacking == "ally" then nextTurn = function() self:enemy1_turn() end end
			if self.attacking == "enemy1" then nextTurn = function() self:enemy2_turn() end end
			if self.attacking == "enemy2" then nextTurn = function() self:newTurn() end end
		end
		Talkies.say("GAME", target.name .. " was knocked out!", {oncomplete=nextTurn})
		
	elseif user.status.hp <= 0  then 
		local nextTurn
		if self.enemycount == 1 then 
			if self.attacking == "player" then nextTurn = function() self:enemy1_turn() end end
			if self.attacking == "enemy1" then nextTurn = function() self:newTurn() end end
		elseif self.enemycount == 2 then 
			if self.attacking == "player" then nextTurn = function() self:ally_turn() end end
			if self.attacking == "ally" then nextTurn = function() self:enemy1_turn() end end
			if self.attacking == "enemy1" then nextTurn = function() self:enemy2_turn() end end
			if self.attacking == "enemy2" then nextTurn = function() self:newTurn() end end
		end
		Talkies.say("GAME", user.name .. " was knocked out!", {oncomplete=nextTurn})
	else
		if #effects == 0 then
			selected_move.attack(target, user, selected_move)
			if target.status.hp <= 0 then Talkies.say("GAME", target.name .. " was knocked out!") end
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
					effects[k][2] = effects[k][2] - 1
				end
			end
		end

		user.status.status_effects = effects

		if sleeping then 
			Talkies.say("GAME", user.name .. " is asleep!")
		elseif humiliated then
			Talkies.say("GAME", user.name .. " feels humiliated!")
			Talkies.say("GAME", user.name .. " is crying...")
			if self.attacking == "player" then
				if self.enemycount == 1 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:enemy1_turn() end})
				elseif self.enemycount == 2 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:ally_turn() end})
				end
			elseif self.attacking == "ally" then
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:enemy1_turn() end})
			elseif self.attacking == "enemy1" then
				if self.enemycount == 1 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:newTurn() end})
				elseif self.enemycount == 2 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:enemy2_turn() end})
				end
			elseif self.attacking == "enemy2" then
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. user.pronouns[2] .. "self to cope...", {oncomplete=function() self:newTurn() end})
			end
		else
			if self.attacking == "player" then
				if self.enemycount == 1 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:enemy1_turn() end})
				elseif self.enemycount == 2 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:ally_turn() end})
				end
			elseif self.attacking == "ally" then
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:enemy1_turn() end})
			elseif self.attacking == "enemy1" then
				if self.enemycount == 1 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:newTurn() end})
				elseif self.enemycount == 2 then 
					Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:enemy2_turn() end})
				end
			elseif self.attacking == "enemy2" then
				Talkies.say("GAME", user.name .. " used " .. selected_move.name .. " on " .. target.name .. "!", {oncomplete=function() self:newTurn() end})
			end
		end
		
	end
end

function Battle:display_stats()
	love.graphics.print(self.enemy1.name .. " stats", 0, 130)
	love.graphics.print("HP: " .. self.enemy1.status.hp, 0, 160)
	love.graphics.print("DEFENSE: " .. self.enemy1.status.defense, 0, 180)
	love.graphics.print("ATTACK: " .. self.enemy1.status.attack, 0, 200)
	love.graphics.print("SPEED: " .. self.enemy1.status.speed, 0, 220)
	if self.enemy1.status.status_effects ~= 0 then 
		for k, v in pairs(self.enemy1.status.status_effects) do 
			love.graphics.print("COUNTER(" .. self.enemy1.status.status_effects[k][1] .. "): " .. self.enemy1.status.status_effects[k][2], 0, 220 + 20 * k)
		end
	end


	love.graphics.print(self.player.name .. " stats", 400, 130)
	love.graphics.print("HP: " .. self.player.status.hp, 400, 160)
	love.graphics.print("DEFENSE: " .. self.player.status.defense, 400, 180)
	love.graphics.print("ATTACK: " .. self.player.status.attack, 400, 200)
	love.graphics.print("SPEED: " .. self.player.status.speed, 400, 220)
	if self.player.status.status_effects ~= 0 then 
		for k, v in pairs(self.player.status.status_effects) do 
			love.graphics.print("COUNTER(" .. self.player.status.status_effects[k][1] .. "): " .. self.player.status.status_effects[k][2], 400, 220 + 20 * k)
		end
	end

	if self.enemycount == 2 then 
		love.graphics.print(self.enemy2.name .. " stats", 200, 130)
		love.graphics.print("HP: " .. self.enemy2.status.hp, 200, 160)
		love.graphics.print("DEFENSE: " .. self.enemy2.status.defense, 200, 180)
		love.graphics.print("ATTACK: " .. self.enemy2.status.attack, 200, 200)
		love.graphics.print("SPEED: " .. self.enemy2.status.speed, 200, 220)
		if self.enemy2.status.status_effects ~= 0 then 
			for k, v in pairs(self.enemy2.status.status_effects) do 
				love.graphics.print("COUNTER(" .. self.enemy2.status.status_effects[k][1] .. "): " .. self.enemy2.status.status_effects[k][2], 200, 220 + 20 * k)
			end
		end

		love.graphics.print(self.ally.name .. " stats", 600, 130)
		love.graphics.print("HP: " .. self.ally.status.hp, 600, 160)
		love.graphics.print("DEFENSE: " .. self.ally.status.defense, 600, 180)
		love.graphics.print("ATTACK: " .. self.ally.status.attack, 600, 200)
		love.graphics.print("SPEED: " .. self.ally.status.speed, 600, 220)
		if self.ally.status.status_effects ~= 0 then 
			for k, v in pairs(self.ally.status.status_effects) do 
				love.graphics.print("COUNTER(" .. self.ally.status.status_effects[k][1] .. "): " .. self.ally.status.status_effects[k][2], 600, 220 + 20 * k)
			end
		end
	end

end

function Battle:draw_moveselection()
	local move1 = self.player.move[1]
	local move2 = self.player.move[2]
	local move3 = self.player.move[3]
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

function Battle:doSelectTarget(move)
	self.selection = 1
end

function Battle:drawSelectTarget()
	local text = ""
	if self.enemycount == 2 then 
		if self.selection == 1 then
			text = "> ".. self.enemy1.name .. "    " .. self.enemy2.name .. "    " .. self.ally.name
		elseif self.selection == 2 then
			text = self.enemy1.name .. "  > " .. self.enemy2.name .. "    " .. self.ally.name
		elseif self.selection == 3 then
			text = self.enemy1.name .. "    " .. self.enemy2.name .. "  > " .. self.ally.name
		end
	elseif self.enemycount == 1 then 
		text = "> ".. self.enemy1.name
	end
	love.graphics.print("Select the target:", 0, 0)
	love.graphics.print(text, 0, 20)
end

function Battle:enemy1_turn()
	local user = self.enemy1
	self.attacking = "enemy1"
	math.randomseed(os.time())
	local rand = math.random(2)
	local move = user.move[rand]
	math.randomseed(os.time())
	local target
	if self.enemycount == 1 then 
		target = self.player
	elseif self.enemycount == 2 then 
		local rand = math.random(2)
		target = active_characters[rand]
	end
	self:execute_attack(target, user, move)
end

function Battle:enemy2_turn()
	local user = self.enemy2
	self.attacking = "enemy2"
	math.randomseed(os.time())
	local rand = math.random(2)
	local move = user.move[rand]
	math.randomseed(os.time())
	local rand = math.random(2)
	local target = active_characters[rand]
	self:execute_attack(target, user, move)
end

function Battle:ally_turn()
	self.attacking = "ally"
	math.randomseed(os.time())
	local rand = math.random(3)
	local move = self.ally.move[rand]
	math.randomseed(os.time())
	local rand = math.random(2)
	local target = self.enemy_list[rand]
	if move.name == "Floral Healing" then
		target = self.player
	end
	self:execute_attack(target, self.ally, move)
end

function Battle:newTurn()
	if self.enemy1.status.hp == 0 and (self.enemycount == 1 or self.enemy2.status.hp == 0) then 
		self:endBattle("player")
	elseif self.player.status.hp == 0 and ( self.enemycount == 1 or self.ally.status.hp == 0) then
		self:endBattle("enemy")
	else
		self.selection = 1
		self.screen = 1
		self.turn = self.turn + 1
		Talkies.clearMessages()
		self.attacking = "player"
		for k, v in pairs(self.enemy_list) do 
			local character = self.enemy_list[k]
			for key, value in pairs(character.status.status_effects) do 
				local effect = character.status.status_effects[key]
				if effect[2] == 0 then 
					character.status.status_effects[key] = nil
				elseif effect[1] == "poisoned" then 
					character.status.hp = character.status.hp * .9
				end
			end
		end
		for k, v in pairs(active_characters) do 
			local character = active_characters[k]
			for key, value in pairs(character.status.status_effects) do 
				local effect = character.status.status_effects[key]
				if effect[2] == 0 then 
					print("a")
					character.status.status_effects[key] = nil
				elseif effect[1] == "poisoned" then 
					character.status.hp = character.status.hp * .9
				end
			end
		end
	end

end
function Battle:endBattle(winner)
	if winner == "player" then 
		Talkies.say(self.player.name, "We won!")
	elseif winner == "enemy" then 
		Talkies.say(self.player.name, "Oh no.... I'm feeling dizzy... Let's get out of here...")
	end
	Talkies.say("GAME", "end of battle!", {oncomplete = function() self.power = false end})
	self.oncomplete()
	-- ACTIVATE THIS OR ELSE THE PLAYER CAN'T MOVE AFTER THE Battle
	-- game.player.canMove = true
end