Scene8 = Object:extend()

function Scene8:new()
end

function Scene8:loadEntities(object, GAME, map)
	GAME.leiko_room:loadEntities(object, GAME, map)
end

function Scene8:manageCollisions(thisName, otherName, cols, i, GAME)
	GAME.leiko_room:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene8:manageKeypresses(key, GAME)
	GAME.leiko_room:manageKeypresses(key, GAME)
end

function Scene8:loadLevel(GAME)
	GAME.leiko_room:loadLevel(GAME)
end