Game = Object:extend()

function Game:new()
	self.level = "maps/scene1.lua"
	self.entities = {}
	self.debug = {}
	self.player = {}
	self.interact = false
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 20)
	self.blop = love.audio.newSource("assets/talk.wav", "static")
	self.stop = false
	self.camera = Camera()
	self.camera:setFollowStyle('TOPDOWN_TIGHT')
	self.interact_bed_hiko = false
	self.interact_bed_irene = false
	self.characters = require 'characters'
	self.chapter1 = Chapter1()
	self.chapter2 = Chapter2()
	self.chapter = 1
	self.ch2scene1Unlocked = false
	self.ch2scene2Unlocked = false
	self.ch2scene3Unlocked = false
	self.ch2scene4Unlocked = false
	self.ch2scene5Unlocked = false
	self.ch2scene6Unlocked = false
	self.objects = require 'objects'
	self.tweens = {}

	self:loadLevel()

end

function Game:setupPhysics()
	self.world = bump.newWorld()
end

function Game:loadLevel()

	self.entities = {}
	self:setupPhysics()
	self.map = sti(self.level, { "bump" })
	self.map:bump_init(self.world)
	self = self.chapter1:loadAssets(self)
	if self.chapter == 2 then
		self = self.chapter2:loadAssets(self)
	end
	for k, object in pairs(self.map.objects) do
		if self.chapter == 1 then
			self = self.chapter1:loadEntities(object, self)
		elseif self.chapter == 2 then
			self = self.chapter2:loadEntities(object, self)
		end

	end

	self.map:removeLayer("Objects")
	self.map:removeLayer("custom_collisions")
	self.stop = true
	self.complete = false
	if self.chapter == 1 then
		self = self.chapter1:loadLevel(self)
	elseif self.chapter == 2 then
		self = self.chapter2:loadLevel(self)
	end
end



function Game:checkCols(entity, cols)

	local thisName = entity.name;

	for i,v in ipairs (cols) do

		local otherName = cols[i].other.name;
		if self.chapter == 1 then
			self = self.chapter1:manageCollisions(thisName, otherName, cols, i, self)
		elseif self.chapter == 2 then
			self = self.chapter2:manageCollisions(thisName, otherName, cols, i, self)
		end
	end

end

function Game:tweenupdate(dt)
	local a = 0
	for k, v in pairs(self.tweens) do
		if k == 1 and self.objects[1].colour[4] == 1 then
			local complete = self.tweens[k]:update(dt)
			if complete then
				local t2 = tween.new(0.05, self.objects[2], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inExpo')
				table.insert(self.tweens, t2)
			end
		else
			self.tweens[k]:update(dt)
		end
	end
end

function Game:doBlackScreen(direction, style, character, text)
	for k, v in pairs(self.tweens) do self.tweens[k] = nil end
	if direction == "in" then
		local t1 = tween.new(1, self.objects[1], {colour={0, 0, 0, 1}}, 'inQuad')
		table.insert(self.tweens, t1)
		--local alert = love.audio.newSource("assets/alert.mp3", "static")
		--love.audio.play(alert)
		if style == "alert" then
			--local t2 = tween.new(1, self.objects[2], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inQuad')
			--table.insert(self.tweens, t2)
		end
	end
	if direction == "out" then
		local t1 = tween.new(1, self.objects[1], {colour={0, 0, 0, 0}}, 'outQuad')
		table.insert(self.tweens, t1)
		if style == alert then
			local t2 = tween.new(0.05, self.objects[2], {colour = {1, 1, 1, 0}, y = love.graphics.getHeight() / 4 - 75}, 'outExpo')
			table.insert(self.tweens, t2)
		end
	end

end

function Game:drawTweens()
	for k, v in pairs(self.objects) do
		local object = self.objects[k]
		love.graphics.setColor(object.colour)
		if object.type == "rectangle" then
			love.graphics.rectangle('fill', 0, 0, object.width, object.height)
		end
		if object.type == "text" then
			love.graphics.print(object.text, object.x, object.y)
		end
		love.graphics.setColor({1, 1, 1, 1})
	end
end

function Game:manageKeypresses(key)

	if self.chapter == 1 then
		self = self.chapter1:manageKeypresses(key, self)
	elseif self.chapter == 2 then
		self = self.chapter2:manageKeypresses(key, self)
	end
	if key == 'i' then
		self:doBlackScreen("in", "alert")
	end
	if key == 'o' then
		self:doBlackScreen("out")
	end
end

function Game:update(dt)

	self.map:update(dt)
	self:manageKeyboard(dt)

	for i=1, #self.entities do
		self.entities[i].x, self.entities[i].y, cols = self.world:move( self.entities[i], self.entities[i].x, self.entities[i].y )
		self:checkCols(self.entities[i], cols)
		if self.stop then
			self.stop = false
			return
		end
	end


	self.player:update(dt)

	self.camera:update(dt)
	self.camera:follow(self.player.x + love.graphics.getWidth() / 4, self.player.y + love.graphics.getHeight() / 4)

	if Talkies.isOpen() then
		self.player.canMove = false
	else
		self.player.canMove = true
	end

	self:tweenupdate(dt)

end

function Game:manageKeyboard(dt)

	local x, y = self.player.x, self.player.y

	if self.player.canMove then

		if love.keyboard.isDown( "d" ) then
			self.player:moveRight(dt)
			self.player.isMoving = true
		elseif love.keyboard.isDown("a") then
			self.player:moveLeft(dt)
			self.player.isMoving = true
		end

		if love.keyboard.isDown("w") then
			self.player:moveUp(dt)
			self.player.isMoving = true
		elseif love.keyboard.isDown("s") then
			self.player:moveDown(dt)
			self.player.isMoving = true
		end

	end

	if not (love.keyboard.isDown( "w" ) or love.keyboard.isDown( "a" ) or love.keyboard.isDown( "s" ) or love.keyboard.isDown( "d" )) then
		self.player.isMoving = false
	end

end

function Game:draw()
	local tx, ty = self.camera.x - love.graphics.getWidth() / 2, self.camera.y - love.graphics.getHeight() / 2

	tx = math.floor(tx)
	ty = math.floor(ty)
	self.map:draw(-tx, -ty)
	self.camera:attach()
	for i=1,#self.entities do
		self.entities[i]:draw()
	end

	-- debug information
	--self.map:bump_draw(self.world, -tx, -ty)
	self.camera:detach()
	self.camera:draw()

	love.graphics.setFont(self.debugFont)
	love.graphics.print(self.player.x,0,12)
	love.graphics.print(self.player.y,0,24)
	love.graphics.print(self.player.facing, 0, 36)
	love.graphics.print(tostring(self.interact), 0, 48)
	love.graphics.print(self.level,0,300)

	self:drawTweens()

end
