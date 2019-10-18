Scene3 = Object:extend()

function Scene3:new()
	
end

function Scene3:loadEntities(object, GAME, map)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	end
end

function Scene3:manageCollisions(thisName, otherName, cols, i, GAME)

end

function Scene3:manageKeypresses(key, GAME)
	if key == "space" then
		Talkies.onAction() 
	end
end