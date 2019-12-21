Game = Object:extend()

function Game:new()
	self.world = "battle"
	battle = Battle()
	startscreen = Startscreen()
end

function Game:draw(dt)
	if self.world == "battle" then 
		battle:draw(dt)
	end

	if self.world == "startscreen" then 
		startscreen:draw(dt)
	end
end

function Game:update(dt)
	if self.world == "battle" then 
		battle:update(dt)
	end

	if self.world == "startscreen" then 
		startscreen:update(dt)
	end
end

function Game:keypressed(key)
	if self.world == "battle" then 
		battle:keypressed(key)
	end

	if self.world == "startscreen" then 
		startscreen:keypressed(key)
	end
end

function Game:startbattle()
	self.world = "battle"
	self.battle = Battle()
end

function Game:stopbattle()
	self.world = "overworld"
end

function Game:isHovering(x, y, width, height)
	mouse_x, mouse_y = love.mouse.getPosition()

	if mouse_x >= x and mouse_x <= (x + width) and mouse_y >= y and mouse_y <= (y + height) then
		love.graphics.print("hovering", 0, 0)
	end
end