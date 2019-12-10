Chapter1 = Object:extend()
require "chapters/chapter-1/scenes/scene1"
require "chapters/chapter-1/scenes/scene2"
require "chapters/chapter-1/scenes/scene3"
require "chapters/chapter-1/scenes/scene4"
require "chapters/chapter-1/scenes/scene5"
require "chapters/chapter-1/scenes/scene6"
require "chapters/chapter-1/scenes/scene7"

function Chapter1:new()
	self.scene1 = Scene1()
	self.scene2 = Scene2()
	self.scene3 = Scene3()
	self.scene4 = Scene4()
	self.scene5 = Scene5()
	self.scene6 = Scene6()
	self.scene7 = Scene7()
	self.scene = 1 
	self.character = love.graphics.newImage('assets/sprites/hiko.png')
	self.irene = love.graphics.newImage('assets/sprites/irene.png')
end

function Chapter1:loadEntities(object, GAME)
	
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
	elseif self.scene == 7 then 
		self.scene7:loadEntities(object, GAME)
	end

	return GAME
end

function Chapter1:loadAssets(GAME)
	GAME.charImage = self.character
	GAME.ireneImage = self.irene
	return GAME
end

function Chapter1:manageCollisions(thisName, otherName, cols, i, GAME)
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

function Chapter1:manageKeypresses(key, GAME)
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

function Chapter1:loadLevel(GAME)
	if self.scene == 3 then 
		self.scene3:loadLevel(GAME)
	elseif self.scene == 4 then 
		self.scene4:loadLevel(GAME)
	elseif self.scene == 6 then 
		self.scene6:loadLevel(GAME)
	end
end