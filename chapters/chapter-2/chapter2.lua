Chapter2 = Object:extend()
require "chapters/chapter-2/scenes/scene1"
require "chapters/chapter-2/scenes/scene2"
require "chapters/chapter-2/scenes/scene3"
require "chapters/chapter-2/scenes/scene4"
require "chapters/chapter-2/scenes/scene5"
require "chapters/chapter-2/scenes/scene6"

function Chapter2:new()
	self.scene1 = Scene2_1()
	self.scene2 = Scene2_2()
	self.scene3 = Scene2_3()
	self.scene4 = Scene2_4()
	self.scene5 = Scene2_5()
	self.scene6 = Scene2_6()
	self.scene = 1
	self.character = love.graphics.newImage('assets/sprites/leiko.png')
	self.kana = love.graphics.newImage('assets/sprites/kana.png')
	self.irene = love.graphics.newImage('assets/sprites/irene.png')
	self.hiko = love.graphics.newImage('assets/sprites/hiko.png')
	self.doc = love.graphics.newImage('assets/sprites/doc.png')
	self.nurse = love.graphics.newImage('assets/sprites/nurse.png')
	self.maid = love.graphics.newImage('assets/sprites/maid.png')
	self.knight = love.graphics.newImage('assets/sprites/knight.png')
	self.chef = love.graphics.newImage('assets/sprites/chef.png')
	self.queen = love.graphics.newImage('assets/sprites/chizue.png')
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
	elseif self.scene == 6 then
		self.scene6:loadEntities(object, GAME)
	end

	return GAME
end

function Chapter2:loadAssets(GAME)
	GAME.charImage = self.character
	GAME.npckanaImage = self.kana
	GAME.npcireneImage = self.irene
	GAME.npchikoImage = self.hiko
	GAME.npcmaidImage = self.maid
	GAME.npcdocImage = self.doc
	GAME.npcnurseImage = self.nurse
	GAME.npcknightImage = self.knight
	GAME.npcchefImage = self.chef
	GAME.npcqueenImage = self.queen
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
	elseif self.scene == 6 then
		self.scene6:manageCollisions(thisName, otherName, cols, i, GAME)
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
	elseif self.scene == 6 then
		self.scene6:manageKeypresses(key, GAME)
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
	elseif self.scene == 6 then
		self.scene6:loadLevel(GAME)
	end
end

function Chapter2:moreMessages(object, GAME)
	if self.scene == 2 then
		self.scene2:moreMessages(object, GAME)
	elseif self.scene == 6 then
		self.scene6:moreMessages(object, GAME)
	end
	return GAME
end

function Chapter2:spy(GAME)
	if self.scene == 2 then
		self.scene2:spy(GAME)
	end
	return GAME
end
function Chapter2:sorry(GAME)
	if self.scene == 2 then
		self.scene2:sorry(GAME)
	end
	return GAME
end
function Chapter2:fault(GAME)
	if self.scene == 2 then
		self.scene2:fault(GAME)
	end
	return GAME
end
