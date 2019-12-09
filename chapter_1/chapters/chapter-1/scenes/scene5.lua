Scene5 = Object:extend()

function Scene5:new()
end

function Scene5:loadEntities(object, GAME, map)
	GAME.houseirene:loadEntities(object, GAME, map)
end

function Scene5:manageCollisions(thisName, otherName, cols, i, GAME)
	GAME.houseirene:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene5:manageKeypresses(key, GAME)
	GAME.houseirene:manageKeypresses(key, GAME)
end

function Scene5:loadLevel(GAME)

end