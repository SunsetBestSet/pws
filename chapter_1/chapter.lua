Chapter = Object:extend()

function Chapter:new()

end

function Chapter:loadEntities(object, GAME)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "irene_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "door" then
		local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door)
	elseif object.name == "bed_hiko" then
		local bed_hiko = Entity(math.floor(object.x), math.floor(object.y), 16, math.floor(object.height), nil, GAME.world, "ent_bed_hiko")
		table.insert(GAME.entities, bed_hiko)
	elseif object.name == "bed_irene" then
		local bed_hiko = Entity(math.floor(object.x), math.floor(object.y), 16, 32, nil, GAME.world, "ent_bed_irene")
		table.insert(GAME.entities, bed_irene)
	end

	return GAME
end