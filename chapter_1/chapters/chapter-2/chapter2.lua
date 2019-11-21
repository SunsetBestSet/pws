Chapter2 = Object:extend()
require "chapters/chapter-2/scenes/scene1"
require "chapters/chapter-2/scenes/scene2"
require "chapters/chapter-2/scenes/scene3"
require "chapters/chapter-2/scenes/scene4"
require "chapters/chapter-2/scenes/scene5"

function Chapter2:new()
	self.scene1 = Scene2_1()
	self.scene2 = Scene2_2()
	self.scene3 = Scene2_3()
	self.scene4 = Scene2_4()
	self.scene5 = Scene2_5()
	self.scene = 1
	self.character = love.graphics.newImage('assets/sprites/hiko.png')
	self.kana = love.graphics.newImage('assets/sprites/npc.png')
	self.doc = love.graphics.newImage('assets/sprites/npc.png')
end

function Chapter2:loadEntities(object, GAME)

	if self.scene == 1 then
		self.scene1:loadEntities(object, GAME)
	elseif self.scene == 2 then
		self.scene2:loadEntities(object, GAME)
	elseif self.scene == 3 then
		self.scene3:loadEntities(object, GAME)
	elseif self.scene == 4 then
		self.scene4:loadEntities(object, GAME)
	elseif self.scene == 5 then
		self.scene5:loadEntities(object, GAME)
	end

	return GAME
end

function Chapter2:loadAssets(GAME)
	GAME.charImage = self.character
	return GAME
end

function Chapter2:manageCollisions(thisName, otherName, cols, i, GAME)
	if self.scene == 1 then
		self.scene1:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif self.scene == 2 then
		self.scene2:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif self.scene == 3 then
		self.scene3:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif self.scene == 4 then
		self.scene4:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif self.scene == 5 then
		self.scene5:manageCollisions(thisName, otherName, cols, i, GAME)
	end
	return GAME
end

function Chapter2:manageKeypresses(key, GAME)
	if self.scene == 1 then
		self.scene1:manageKeypresses(key, GAME)
	elseif self.scene == 2 then
		self.scene2:manageKeypresses(key, GAME)
	elseif self.scene == 3 then
		self.scene3:manageKeypresses(key, GAME)
	elseif self.scene == 4 then
		self.scene4:manageKeypresses(key, GAME)
	elseif self.scene == 5 then
		self.scene5:manageKeypresses(key, GAME)
	end
	return GAME
end

function Chapter2:loadLevel(GAME)
	if self.scene == 1 then
		self.scene1:loadLevel(GAME)
	elseif self.scene == 2 then
		self.scene2:loadLevel(GAME)
	elseif self.scene == 3 then
		self.scene3:loadLevel(GAME)
	elseif self.scene == 4 then
		self.scene4:loadLevel(GAME)
	elseif self.scene == 5 then
		self.scene5:loadLevel(GAME)
	end
end
