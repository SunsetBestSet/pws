Game = Object:extend()

function Game:new()
	self.level = "maps/scene1.lua" -- Set initial map of game
	self.entities = {} -- Create empty table for entities
	self.debug = {} -- Create empty table for debug information
	self.player = {} -- Create empty table to store player in
	self.interact = false -- Create boolean that dictates whether the player is interacting with an object

	--[[
		Load assets
	]]
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 20)
	self.blop = love.audio.newSource("assets/talk.wav", "static")
	-- Create table for all the music files
	self.music = {
		prologue= love.audio.newSource("assets/prologue.mp3", "stream"),
		town=love.audio.newSource("assets/townmusic.mp3", "stream"),
		castle=love.audio.newSource("assets/castle.mp3", "stream"),
		castle2=love.audio.newSource("assets/castle2.mp3", "stream"),
		kana=love.audio.newSource("assets/kana.mp3", "stream"),
		ch3=love.audio.newSource("assets/ch3.mp3", "stream"),
		mountain=love.audio.newSource("assets/mountain.mp3", "stream"),
		top=love.audio.newSource("assets/top.mp3", "stream"),
		battle=love.audio.newSource("assets/battle.mp3", "stream"),
		boss=love.audio.newSource("assets/boss.mp3", "stream")}
	-- Make the prologue music softer
	self.music.prologue:setVolume(.3)
	-- Set all the music files to loop
	self.music.prologue:setLooping( true )
	self.music.town:setLooping( true )
	self.music.castle:setLooping( true )
	self.music.castle2:setLooping( true )
	self.music.kana:setLooping( true )
	self.music.ch3:setLooping( true )
	self.music.battle:setLooping( true )
	self.music.boss:setLooping( true )
	self.music.mountain:setLooping( true )
	self.music.top:setLooping( true )

	-- Miscelaneous variables
	self.stop = false
	self.interact_bed_hiko = false
	self.interact_bed_irene = false

	-- Load camera plugin
	self.camera = Camera()
	self.camera:setFollowStyle('TOPDOWN_TIGHT')

	-- Load character information
	self.characters = require 'characters'

	-- Create battle
	self.battle = Battle()

	-- Create chapters & set the chapter
	self.chapter1 = Chapter1()
	self.chapter2 = Chapter2()
	self.chapter3 = Chapter3()
	self.chapter4 = Chapter4()
	self.chapter = 1

	-- Create booleans to unlock chapters
	self.ch2scene1Unlocked = false
	self.ch2scene2Unlocked = false
	self.ch2scene3Unlocked = false
	self.ch2scene4Unlocked = false
	self.ch2scene5Unlocked1 = false
	self.ch2scene5Unlocked2 = false
	self.ch2scene6Unlocked = false

	-- Load in objects (titles, shapes, etc.)
	self.objects = require 'objects'

	-- Create table for tweens (animations)
	self.tweens = {}
	self.doFadeOut = false

	-- load maps
	self.town = Town()
	self.houseirene = HouseIrene()
	self.shop = Shop()
	self.throne_room = ThroneRoom()
	self.leiko_room = leiko_room()

	-- load first level/map
	self:loadLevel()

	-- Set castle exit
	self.castleExit = "leikoroom"

	-- Set initial location
	self.location = "Irene's house"

	-- Get window size
	WINDOW_WIDTH, WINDOW_HEIGHT = love.graphics.getDimensions()
end

function Game:setupPhysics()
	-- Make world for collisions
	self.world = bump.newWorld()
end

function Game:loadLevel()

	self.entities = {} -- Make entities table empty every time a map loads
	self:setupPhysics() -- See above. Creates world for collisions to be tracked in
	self.map = sti(self.level, { "bump" }) -- Set map
	self.map:bump_init(self.world) -- Initiate collision world

	--[[
		Load assets (per chapter)
	]]
	self = self.chapter1:loadAssets(self)
	if self.chapter == 2 then
		self = self.chapter2:loadAssets(self)
	elseif self.chapter == 3 then
		self = self.chapter3:loadAssets(self)
	end

	--[[
		load entities (per chapter)
	]]
	for k, object in pairs(self.map.objects) do
		if self.chapter == 1 then
			self = self.chapter1:loadEntities(object, self)
		elseif self.chapter == 2 then
			self = self.chapter2:loadEntities(object, self)
		elseif self.chapter == 3 then
			self = self.chapter3:loadEntities(object, self)
		elseif self.chapter == 4 then
			self = self.chapter4:loadEntities(object, self)
		end
	end

	-- Delete object layers so they don't show up on the map
	self.map:removeLayer("Objects")
	self.map:removeLayer("custom_collisions")

	self.stop = true
	self.complete = false

	--[[
		Load level per chapter (e.g: dialogue shown at begin of level)
	]]
	if self.chapter == 1 then
		self = self.chapter1:loadLevel(self)
	elseif self.chapter == 2 then
		self = self.chapter2:loadLevel(self)
	elseif self.chapter == 3 then
		self = self.chapter3:loadLevel(self)
	elseif self.chapter == 4 then
		self = self.chapter4:loadLevel(self)
	end
end



function Game:checkCols(entity, cols)

	local thisName = entity.name

	for i,v in ipairs (cols) do

		local otherName = cols[i].other.name;
		if self.chapter == 1 then
			self = self.chapter1:manageCollisions(thisName, otherName, cols, i, self)
		elseif self.chapter == 2 then
			self = self.chapter2:manageCollisions(thisName, otherName, cols, i, self)
		elseif self.chapter == 3 then
			self = self.chapter3:manageCollisions(thisName, otherName, cols, i, self)
		elseif self.chapter == 4 then
			self = self.chapter4:manageCollisions(thisName, otherName, cols, i, self)
		end
	end

end

function Game:tweenupdate(dt)
	for k, v in pairs(self.tweens) do
		if self.objects[1].colour[4] == 1 and self.alert then
			local complete = self.tweens[k]:update(dt)
			if complete then
				local t2 = tween.new(0.05, self.objects[2], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inExpo')
				table.insert(self.tweens, t2)
			end
		else
			self.tweens[k]:update(dt)
		end
	end

	if self.doFadeOut and self.chapter1.scene == 5 and self.objects[2].colour[4] == 1 then
		self.doFadeOut = false
		self.level = "maps/scene1.lua"
		self:loadLevel()
		self:doBlackScreen("out", "alert")
	end

	if self.doFadeOut and self.chapter1.scene == 7 and self.objects[1].colour[4] == 1 then
		self.doFadeOut = false
		self.level = "maps/throne_room.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.chapter1.scene == 72 and self.objects[1].colour[4] == 1 then
		self.doFadeOut = false
		self.level = "maps/throne_room.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.chapter1.scene == 8 and self.objects[1].colour[4] == 1 and self.chapter == 1 then
		self.doFadeOut = false
		self.level = "maps/leiko_room1.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.chapter1.scene == 8 and self.objects[3].colour[4] == 1 and self.chapter == 2 then
		self.doFadeOut = false
		self.level = "maps/leiko_room1.lua"
		self:loadLevel()
		self:doBlackScreen("out", "ch2")
	end

	if self.doFadeOut and self.chapter4.scene == 3 and self.objects[1].colour[4] == 1 then
		self.doFadeOut = false
		self.level = "maps/town2.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.objects[6].colour[4] == 1 and self.chapter == 3 and self.chapter3.scene == 1 then
		self.doFadeOut = false
		self.level = "maps/farmlands1.lua"
		self:loadLevel()
		self:doBlackScreen("out", "ch3")
	end

	if self.doFadeOut and self.chapter3.scene == 2 and self.objects[1].colour[4] == 1 and self.chapter == 3 then
		self.doFadeOut = false
		self.level = "maps/farmlands2.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.chapter3.scene == 3 and self.objects[1].colour[4] == 1 and self.chapter == 3 then
		self.doFadeOut = false
		self.level = "maps/forest.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.chapter3.scene == 4 and self.objects[1].colour[4] == 1 and self.chapter == 3 then
		self.doFadeOut = false
		self.level = "maps/forest.lua"
		self:loadLevel()
		self:doBlackScreen("out")
	end

	if self.doFadeOut and self.objects[7].colour[4] == 1 and self.chapter == 4 then
		self.doFadeOut = false
		self.level = "maps/town2.lua"
		self:loadLevel()
		self:doBlackScreen("out", "ch4")
	end

	if self.stayBlack and self.chapter2.scene == 5 and self.objects[4].colour[4] == 1 and self.chapter == 2 then
		for k, v in pairs(self.tweens) do self.tweens[k] = nil end
	end

end

function Game:doBlackScreen(direction, style, character, text)
	local style = style or "nothing"
	for k, v in pairs(self.tweens) do self.tweens[k] = nil end
	if direction == "in" then
		local t1 = tween.new(1, self.objects[1], {colour={0, 0, 0, 1}}, 'inQuad')
		table.insert(self.tweens, t1)
		if style == "alert" then
			self.alert = true
			local alert = love.audio.newSource("assets/alert.mp3", "static")
			love.audio.play(alert)
		end
		if style == "ch2" then
			local t3 = tween.new(1, self.objects[3], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inQuad')
			table.insert(self.tweens, t3)
		end
		if style == "ch3" then
			local t6 = tween.new(1, self.objects[6], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inQuad')
			table.insert(self.tweens, t6)
		end
		if style == "ch4" then
			local t7 = tween.new(1, self.objects[7], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inQuad')
			table.insert(self.tweens, t7)
		end
		if style == "morning" then
			local t4 = tween.new(1, self.objects[4], {colour = {1, 1, 1, 1}, y = love.graphics.getHeight() / 4 - 75}, 'inQuad')
			table.insert(self.tweens, t4)
			print("ok")
		end
	end
	if direction == "out" then
		local t1 = tween.new(2, self.objects[1], {colour={0, 0, 0, 0}}, 'outQuad')
		table.insert(self.tweens, t1)
		if style == "alert" then
			local t2 = tween.new(0.1, self.objects[2], {colour = {1, 1, 1, 0}, y = love.graphics.getHeight() / 4 - 75}, 'outExpo')
			table.insert(self.tweens, t2)
		end
		if style == "ch2" then
			local t3 = tween.new(0.05, self.objects[3], {colour = {1, 1, 1, 0}, y = love.graphics.getHeight() / 4 - 75}, 'outExpo')
			table.insert(self.tweens, t3)
		end
		if style == "ch3" then
			local t6 = tween.new(0.05, self.objects[6], {colour = {1, 1, 1, 0}, y = love.graphics.getHeight() / 4 - 75}, 'outExpo')
			table.insert(self.tweens, t6)
		end
		if style == "ch4" then
			local t7 = tween.new(0.05, self.objects[7], {colour = {1, 1, 1, 0}, y = love.graphics.getHeight() / 4 - 75}, 'outExpo')
			table.insert(self.tweens, t7)
		end
		if style == "morning" then
			local t4 = tween.new(0.05, self.objects[4], {colour = {1, 1, 1, 0}, y = love.graphics.getHeight() / 4 - 75}, 'outExpo')
			table.insert(self.tweens, t4)
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
	elseif self.chapter == 3 then
		self = self.chapter3:manageKeypresses(key, self)
	elseif self.chapter == 4 then
		self = self.chapter4:manageKeypresses(key, self)
	end

	--[[if key == 'h' then
		self.chapter = 3
		self.chapter3.scene = 4
		self.level = "maps/forest.lua"
		self:loadLevel()
	end

	if key == 'c' then
		Talkies.clearMessages()
	end]]

	self.battle:keypressed(key)
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
		self.music.town:setVolume(.2)
		self.music.castle:setVolume(.2)
	else
		self.player.canMove = true
		self.music.town:setVolume(.4)
		self.music.castle:setVolume(.4)
	end

	self:tweenupdate(dt)

	self.battle:update(dt)
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

function Game:draw(dt)

	if not self.battle.power then

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
	love.graphics.print(self.location, 20, 10)
--[[
	love.graphics.print(self.player.x,0,12)
	love.graphics.print(self.player.y,0,24)
	love.graphics.print(self.player.facing, 0, 36)
	love.graphics.print(tostring(self.interact), 0, 48)
	love.graphics.print(self.level, 0, 60)
	love.graphics.print("chapter 1: scene: " .. self.chapter1.scene, 0, 72)
	love.graphics.print("chapter 2: scene: " .. self.chapter2.scene, 0, 84)
	love.graphics.print("Chapter: " .. self.chapter, 0, 96) --]]


	self:drawTweens()

	end

end
