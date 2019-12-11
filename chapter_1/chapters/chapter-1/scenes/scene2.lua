Scene2 = Object:extend()

function Scene2:new()
	self.town = Town()
	self.houseirene = HouseIrene()
end

function Scene2:loadEntities(object, GAME, map)
	if GAME.level == "maps/town.lua" then 
		self.town:loadEntities(object, GAME, map)
	elseif GAME.level == "maps/scene1.lua" then 
		self.houseirene:loadEntities(object, GAME, map)
	end
end

function Scene2:manageCollisions(thisName, otherName, cols, i, GAME)
	if GAME.level == "maps/town.lua" then
		self.town:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif GAME.level == "maps/scene1.lua" then 
		self.houseirene:manageCollisions(thisName, otherName, cols, i, GAME)
	end
end

function Scene2:manageKeypresses(key, GAME)
	if key == "space" then
		Talkies.onAction() 
	end
	if GAME.level == "maps/scene1.lua" then 
		self.houseirene:manageKeypresses(key, GAME)
	end
	if GAME.level == "maps/town.lua" then 
		self.town:manageKeypresses(key, GAME)
	end
end