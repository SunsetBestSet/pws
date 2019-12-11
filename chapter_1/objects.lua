return {
	{
		type = "rectangle",
		colour={0,0,0,0}, 
		width=love.graphics.getWidth(), 
		height=love.graphics.getHeight()
	}, 
	{
		type = "text",
		text = "!",
		colour = {1, 1, 1, 0},
		x = love.graphics.getWidth() / 4, 
		y = love.graphics.getHeight() / 4 - 50,
		font = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 100)
	}
}