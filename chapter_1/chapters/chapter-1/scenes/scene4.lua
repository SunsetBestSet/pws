Scene4 = Object:extend()

function Scene4:new()
end

function Scene4:loadEntities(object, GAME, map)
	if GAME.level == "maps/town.lua" then 
		GAME.town:loadEntities(object, GAME, map)
	elseif GAME.level == "maps/scene1.lua" then 
		GAME.houseirene:loadEntities(object, GAME, map)
	elseif GAME.level == "maps/shop.lua" then 
		GAME.shop:loadEntities(object, GAME, map)
	end
end

function Scene4:manageCollisions(thisName, otherName, cols, i, GAME)
	if GAME.level == "maps/town.lua" then 
		GAME.town:manageCollisions(object, GAME, map)
	elseif GAME.level == "maps/scene1.lua" then 
		GAME.houseirene:manageCollisions(object, GAME, map)
	elseif GAME.level == "maps/shop.lua" then 
		GAME.shop:manageCollisions(object, GAME, map)
	end
end

function Scene4:manageKeypresses(key, GAME)
	if GAME.level == "maps/town.lua" then 
		GAME.town:manageKeypresses(object, GAME, map)
	elseif GAME.level == "maps/scene1.lua" then 
		GAME.houseirene:manageKeypresses(object, GAME, map)
	elseif GAME.level == "maps/shop.lua" then 
		GAME.shop:manageKeypresses(object, GAME, map)
	end
end

function Scene4:loadLevel(GAME)

end