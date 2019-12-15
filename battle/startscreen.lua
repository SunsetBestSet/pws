Startscreen = Object:extend()

function Startscreen:new()
	self.WINDOW_WIDTH, self.WINDOW_HEIGHT = love.graphics.getDimensions()
	self.titleFont = love.graphics.newFont("assets/fonts/VT323-Regular.ttf", 70)
	self.text = love.graphics.newText(self.titleFont, "WELCOME TO EARTH.")
end

function Startscreen:draw(dt)
	local title_width, title_height = self.text:getDimensions()
	love.graphics.draw(self.text, self.WINDOW_WIDTH / 2 - title_width / 2, self.WINDOW_HEIGHT / 2 - title_height / 2)
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", 20, 50, 60, 120 )
	game:isHovering(20, 50, 60, 120)
end

function Startscreen:update(dt)

end

function Startscreen:keypressed(key)

end