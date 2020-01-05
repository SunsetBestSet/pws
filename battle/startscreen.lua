Startscreen = Object:extend()

function Startscreen:new()
	self.WINDOW_WIDTH, self.WINDOW_HEIGHT = love.graphics.getDimensions()
	self.Font = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 25)
	self.selection = 1
end

function Startscreen:draw(dt)
	if self.selection == 1 then self.string = "> 1 enemy        2 enemies" end
	if self.selection == 2 then self.string = "  1 enemy      > 2 enemies" end
	local text = love.graphics.newText(self.Font, self.string)
	local text_width, text_height = text:getDimensions()
	love.graphics.draw(text, self.WINDOW_WIDTH / 2 - text_width / 2, self.WINDOW_HEIGHT / 2 - text_height / 2)
end

function Startscreen:update(dt)

end

function Startscreen:keypressed(key)
	if key == 'right' and self.selection == 1 then 
		self.selection = 2
	elseif key == 'left' and self.selection == 2 then 
		self.selection = 1
	end

	if self.selection == 2 and key == 'return' then 
		battle:initiate(nil, characters[2], enemies[3]) 
	end
end