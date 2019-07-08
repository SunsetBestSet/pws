function love.load()
	love.window.setMode(450, 418)
	love.window.setTitle('testworld')
	background = love.graphics.newImage('images/library.png')
	-- window information
	window = {}
	window.width, window.height = love.graphics.getDimensions()
	-- create link
	link = {}
	link.sprite = love.graphics.newImage('images/link.png')
	link.width, link.height = link.sprite:getDimensions()
	link.x, link.y = window.width*0.5-link.width*0.5, window.height*0.5-link.height*0.5
	link.speed = 4
	link.canMove = true
	-- create textbox
	textbox = {}
	textbox.sprite = love.graphics.newImage('images/textbox.png')
	textbox.width, textbox.height = textbox.sprite:getDimensions()
	textbox.x, textbox.y = window.width*0.5-textbox.width*0.5, window.height-textbox.height
	text = {}
	text.x, text.y = 0.1*window.width, window.height-0.8*textbox.height
	text.string = 'ik ben zo slim eigenlijk!'
	-- load libraries
	require('classes/link')
end

function love.draw()
	love.graphics.draw(background, 0, 0)
	love.graphics.draw(link.sprite, link.x, link.y)
	love.graphics.draw(textbox.sprite, textbox.x, textbox.y)
	love.graphics.print('hoi!', text.x, text.y)
	if laatKatZien then
		love.graphics.draw(love.graphics.newImage('images/kat.jpeg'), 0, 0)
	end
end

function love.update(dt)
	-- define button presses
	down = {}
	down.w = love.keyboard.isDown('w')
	down.a = love.keyboard.isDown('a')
	down.s = love.keyboard.isDown('s')
	down.d = love.keyboard.isDown('d')
	-- do stuff
	link.move()
end

function love.keypressed(key)
	if key == 'z' then
		laatKatZien = true
	end
end