Scene2 = Object:extend()

function Scene2:new()
	self.interact_bed_hiko = false
    self.interact_bed_irene = false
end

function Scene2:loadEntities(object, GAME)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "door_house" then
		local door_house = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door_house.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door_house)
	end
end

function Scene2:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_door" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter1.scene = 3
			GAME:loadLevel()
	end
end

function Scene2:manageKeypresses(key, GAME)
	if key == "space" then
		Talkies.onAction() 
	end
end