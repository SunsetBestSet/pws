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
	
	-- Get player spawn object
	local player
	for k, object in pairs(map.objects) do
		if object.name == "Player" then
			player = object
			break
		end
	end

	spriteLayer.player = {
			sprite = love.graphics.newImage("assets/link.png"),
			x = windowWidth / 2,
			y = windowHeight / 2,
			properties = {
				collidable = true,
        		sensor = true,
			}
		}
	

	-- Update callback for Custom Layer
	function spriteLayer:update(dt)
		
	end

	-- Draw callback for Custom Layer
	function spriteLayer:draw()
		love.graphics.draw(
			self.player.sprite,
			math.floor(self.player.x),
			math.floor(self.player.y),
			0,
			1,
			1,
			self.player.ox,
			self.player.oy
		)

		-- Temporarily draw a point at our location so we know
		-- that our sprite is offset properly
		love.graphics.setPointSize(5)
		love.graphics.points(math.floor(self.player.x), math.floor(self.player.y))
	end
end


function love.update(dt)
	map:update(dt)

	-- Move map and Link
	local kd = love.keyboard.isDown
	local link = map.layers["Sprite Layer"].player
	local speed = 200
	
	if kd("a", "left") then
		tx = tx - speed * dt
		link.x = link.x - speed * dt
	end
	if kd("d", "right") then
		tx = tx + speed * dt
		link.x = link.x + speed * dt
	end
	if kd("w", "up") then
		ty = ty - speed * dt
		link.y = link.y - speed * dt
	end
	if kd("s", "down") then
		ty = ty + speed * dt
		link.y = link.y + speed * dt
	end

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