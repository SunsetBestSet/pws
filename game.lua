Game = Object:extend()

function Game:new()
	self.level = "maps/scene1.lua"
	self.entities = {}
	self.debug = {}
	self.player = {}
	self.interact = false
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 20)
	self.blop = love.audio.newSource("assets/talk.wav", "static")
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
	self.music.prologue:setVolume(.3)
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
	self.stop = false
	self.camera = Camera()
	self.camera:setFollowStyle('TOPDOWN_TIGHT')
	self.interact_bed_hiko = false
	self.interact_bed_irene = false
	self.characters = require 'characters'
	self.battle = Battle()
	self.chapter1 = Chapter1()
	self.chapter2 = Chapter2()
	self.chapter3 = Chapter3()
	self.chapter = 1
	self.ch2scene1Unlocked = false
	self.ch2scene2Unlocked = false
	self.ch2scene3Unlocked = false
	self.ch2scene4Unlocked = false
	self.ch2scene5Unlocked1 = false
	self.ch2scene5Unlocked2 = false
	self.ch2scene6Unlocked = false
	self.objects = require 'objects'
	self.tweens = {}
	self.doFadeOut = false

	-- load maps
	self.town = Town()
	self.houseirene = HouseIrene()
	self.shop = Shop()
	self.throne_room = ThroneRoom()
	self.leiko_room = leiko_room()

	self:loadLevel()

	self.castleExit = "leikoroom"


	WINDOW_WIDTH, WINDOW_HEIGHT = love.graphics.getDimensions()
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
	elseif self.chapter == 3 then
			self = self.chapter3:loadAssets(self)
	end
	for k, object in pairs(self.map.objects) do
		if self.chapter == 1 then
			self = self.chapter1:loadEntities(object, self)
		elseif self.chapter == 2 then
			self = self.chapter2:loadEntities(object, self)
		elseif self.chapter == 3 then
			self = self.chapter3:loadEntities(object, self)
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
	elseif self.chapter == 3 then
		self = self.chapter3:loadLevel(self)
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
		elseif self.chapter == 3 then
			self = self.chapter3:manageCollisions(thisName, otherName, cols, i, self)
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

	--[[if self.doFadeOut and self.chapter2.scene == 6 and self.objects[3].colour[4] == 1 and self.chapter == 3 then
		self.doFadeOut = false
		self.level = "maps/farmlands1.lua"
		self:loadLevel()
		self:doBlackScreen("out", "ch3")
	end]]

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
	end

	if key == 'h' then
		self.chapter = 3
		self.chapter3.scene = 4
		self.level = "maps/forest.lua"
		self:loadLevel()
	end

	if key == 'i' then 
		self.battle:initiate(nil, 2, enemies[4], 3, enemies[5])
	end

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
	love.graphics.print(self.player.x,0,12)
	love.graphics.print(self.player.y,0,24)
	love.graphics.print(self.player.facing, 0, 36)
	love.graphics.print(tostring(self.interact), 0, 48)
	love.graphics.print(self.level, 0, 60)
	love.graphics.print("chapter 1: scene: " .. self.chapter1.scene, 0, 72)
	love.graphics.print("chapter 2: scene: " .. self.chapter2.scene, 0, 84)
	love.graphics.print("Chapter: " .. self.chapter, 0, 96)

	self:drawTweens()

	end

end
