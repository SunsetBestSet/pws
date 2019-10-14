Chapter1 = Object:extend()
require "chapters/chapter-1/scenes/scene1"
require "chapters/chapter-1/scenes/scene2"

function Chapter1:new()
	self.scene1 = Scene1()
	self.scene2 = Scene2()
	self.scene = 1
	self.character = love.graphics.newImage('assets/sprites/link.png')
	self.irene = love.graphics.newImage('assets/sprites/npc.png')
end

function Chapter1:loadEntities(object, GAME)
	
	if self.scene == 1 then 
		self.scene1:loadEntities(object, GAME)
	elseif self.scene == 2 then 
		self.scene2:loadEntities(object, GAME)
	end

	return GAME
end

function Chapter1:loadAssets(GAME)
	GAME.charImage = self.character
	GAME.npcImage = self.irene
	return GAME
end

function Chapter1:manageCollisions(thisName, otherName, cols, i, GAME)
	if self.scene == 1 then 
		self.scene1:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif self.scene == 2 then 
		self.scene2:manageCollisions(thisName, otherName, cols, i, GAME)
	end
	return GAME
end

function Chapter1:manageKeypresses(key, GAME)
	if self.scene == 1 then 
		self.scene1:manageKeypresses(key, GAME)
	elseif self.scene == 2 then 
		self.scene2:manageKeypresses(key, GAME)
	end
	return GAME
end