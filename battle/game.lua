Game = Object:extend()

function Game:new()
	self.screen = 1
	self.selected_move = {}
	self.canSwitchScreen = true
	self.world = "startscreen"
end

function Game:draw(dt)
	if self.world == "battle" then 
		battle:draw(dt)
	end
end

function Game:update(dt)
	if self.world == "battle" then 
		battle:update(dt)
	end
end

function Game:keypressed(key)
	if self.world == "battle" then 
		battle:keypressed(key)
	end
end

function Game:startbattle()
	self.world = "battle"
	self.battle = Battle()
end

function Game:stopbattle()
	self.world = "overworld"
end