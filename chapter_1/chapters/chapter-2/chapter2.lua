Chapter2 = Object:extend()
require "chapters/chapter-2/scenes/scene1"

function Chapter2:new()
	self.scene1 = Scene2_1()
	self.scene = 1
	self.character = love.graphics.newImage('assets/sprites/hiko.png')
	self.irene = love.graphics.newImage('assets/sprites/irene.png')
end

function Chapter2:loadEntities(object, GAME)
	
	if self.scene == 1 then 
		self.scene1:loadEntities(object, GAME)
	end

	return GAME
end

function Chapter2:loadAssets(GAME)
	GAME.charImage = self.character
	GAME.ireneImage = self.irene
	return GAME
end

function Chapter2:manageCollisions(thisName, otherName, cols, i, GAME)
	if self.scene == 1 then 
		--self.scene1:manageCollisions(thisName, otherName, cols, i, GAME)
	end
	return GAME
end

function Chapter2:manageKeypresses(key, GAME)
	if self.scene == 1 then 
		--self.scene1:manageKeypresses(key, GAME)
	end
	return GAME
end

function Chapter2:loadLevel(GAME)
	if self.scene == 1 then 
		self.scene1:loadLevel(GAME)
	end
end