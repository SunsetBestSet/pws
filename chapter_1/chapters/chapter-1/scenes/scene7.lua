Scene7 = Object:extend()

function Scene7:new()
end

function Scene7:loadEntities(object, GAME, map)
	GAME.throne_room:loadEntities(object, GAME, map)
end

function Scene7:manageCollisions(thisName, otherName, cols, i, GAME)
	GAME.throne_room:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene7:manageKeypresses(key, GAME)
	GAME.throne_room:manageKeypresses(key, GAME)
end

function Scene7:loadLevel(GAME)
	GAME.throne_room:loadLevel(GAME)
end