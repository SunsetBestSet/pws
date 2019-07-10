local sti = require "sti"

function love.load()
	-- Grab window size
	windowWidth  = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()

	-- Set world meter size (in pixels)
	love.physics.setMeter(32)

	-- Prepare translations
	tx, ty = 0, 0

	-- Load a map exported to Lua from Tiled
	map = sti("assets/test.lua", { "box2d" })

	-- Prepare physics world with horizontal and vertical gravity
	world = love.physics.newWorld(0, 0)

	-- Prepare collision objects
	map:box2d_init(world)

	-- Create a Custom Layer
	map:addCustomLayer("Sprite Layer", 5)

	-- Add data to Custom Layer
	local spriteLayer = map.layers["Sprite Layer"]
	spriteLayer.sprites = {
		player = {
			image = love.graphics.newImage("assets/link.png"),
			x = windowWidth / 2,
			y = windowHeight / 2,
			properties = {
				collidable = true,
				sensor = true,
			}
		}
	}
	

	-- Update callback for Custom Layer
	function spriteLayer:update(dt)
		
	end

	-- Draw callback for Custom Layer
	function spriteLayer:draw()
		for _, sprite in pairs(self.sprites) do
			local x = math.floor(sprite.x)
			local y = math.floor(sprite.y)
			love.graphics.draw(sprite.image, x, y)
		end
	end
end


function love.update(dt)
	map:update(dt)

	-- Move map
	local kd = love.keyboard.isDown
	local link = map.layers["Sprite Layer"].sprites.player
	tx = (kd("a", "left") and tx - 128 * dt) or tx -- if button pressed then change tx, otherwise don't change tx
		link.x = (kd("a", "left")  and link.x - 128 * dt) or link.x
		tx = (kd("d", "right") and tx + 128 * dt) or tx
		link.x = (kd("d", "right") and link.x + 128 * dt) or link.x
		ty = (kd("w", "up")    and ty - 128 * dt) or ty
		link.y = (kd("w", "up")    and link.y - 128 * dt) or link.y
		ty = (kd("s", "down")  and ty + 128 * dt) or ty
		link.y = (kd("s", "down")  and link.y + 128 * dt) or link.y
	end

	function love.draw()
		-- Draw the map and all objects within
		love.graphics.setColor(1, 1, 1)
		map:draw(-tx, -ty)

		-- Draw Collision Map (useful for debugging)
		love.graphics.setColor(1, 0, 0)
		map:box2d_draw(-tx, -ty)

		-- Please note that map:draw, map:box2d_draw, and map:bump_draw take
		-- translate and scale arguments (tx, ty, sx, sy) for when you want to
		-- grow, shrink, or reposition your map on screen.
	end