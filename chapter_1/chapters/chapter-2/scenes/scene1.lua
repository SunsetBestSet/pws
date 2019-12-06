Scene2_1 = Object:extend()

function Scene2_1:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
end

function Scene2_1:loadEntities(object, GAME, map)

	-- Leiko's room
	if GAME.level == "maps/leikoroom.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "hallway_door1" then
			local hallway_door1 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor1")
			hallway_door1.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, hallway_door1)
		end

		-- Leiko hallway
	elseif GAME.level == "maps/leiko_hallway.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "kana_hallway" then
			local kana_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kanahallway")
			kana_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, kana_hallway)
		elseif object.name == "leiko_door" then
			local leiko_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikodoor")
			leiko_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, leiko_door)
		elseif object.name == "library_hallway" then
			local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
			library_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_hallway)
		end

		-- library hallway
	elseif GAME.level == "maps/library_hallway.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "leiko_hallway" then
			local leiko_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikohallway")
			leiko_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, leiko_hallway)
		elseif object.name == "library_door" then
			local library_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_librarydoor")
			library_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_door)
		elseif	object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway)
		end


		-- library
	elseif GAME.level == "maps/library.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "library_hallway" then
			local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
			library_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_hallway)
		end

		-- Kana's hallway
	elseif GAME.level == "maps/kana_hallway.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "kana_door" then
			local kana_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kanadoor")
			kana_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, kana_door)
		elseif object.name == "leiko_hallway" then
			local leiko_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikohallway")
			leiko_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, leiko_hallway)
		elseif object.name == "infirmary_hallway" then
			local infirmary_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_infirmaryhallway")
			infirmary_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, infirmary_hallway)
		end

		-- infimary hallway
	elseif GAME.level == "maps/infirmary_hallway.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "kana_hallway" then
			local kana_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kanahallway")
			kana_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, kana_hallway)
		elseif	object.name == "infirmary_door" then
			local infirmary_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_infirmarydoor")
			infirmary_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, infirmary_door)
		elseif	object.name == "maid_door" then
			local maid_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_maiddoor")
			maid_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, maid_door)
		elseif	object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway)
		end

		-- maid's quarters
	elseif GAME.level == "maps/maidroom.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif	object.name == "hallway_door4" then
			local hallway_door4 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor4")
			hallway_door4.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, hallway_door4)
		end

		-- infirmary
	elseif GAME.level == "maps/infirmary.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "hallway_door3" then
			local hallway_door3= Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor3")
			hallway_door3.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, hallway_door3)
		end


		-- castle's main hallway
	elseif GAME.level == "maps/main_hallway.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "library_hallway" then
			local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
			library_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_hallway)
		elseif object.name == "infirmary_hallway" then
			local infirmary_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_infirmaryhallway")
			infirmary_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, infirmary_hallway)
		elseif object.name == "garden_door" then
			local garden_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_gardendoor")
			garden_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, garden_door)
		elseif object.name == "kitchen_door" then
			local kitchen_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kitchendoor")
			kitchen_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, kitchen_door)
		elseif object.name == "dining_door" then
			local dining_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_diningdoor")
			dining_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, dining_door)
		end

		-- garden
	elseif GAME.level == "maps/garden.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif	object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway)
		end

		-- kitchen
	elseif GAME.level == "maps/kitchen.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif	object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway)
		elseif	object.name == "dining_door" then
			local dining_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_diningdoor")
			dining_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, dining_door)
		end

		-- dining room
	elseif GAME.level == "maps/dining_room.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif	object.name == "kitchen_door" then
			local kitchen_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kitchendoor")
			kitchen_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, kitchen_door)
		elseif	object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway)
		end

	end
end

function Scene2_1:manageCollisions(thisName, otherName, cols, i, GAME)

	-- collisions in leiko's room
	if GAME.level == "maps/leikoroom.lua" then
		if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in Leiko's hallway
	elseif GAME.level == "maps/leiko_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanahallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in the libary's hallway
	elseif GAME.level == "maps/library_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_leikohallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_librarydoor" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in library
	elseif GAME.level == "maps/library.lua" then
		if thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in kana's hallway
	elseif GAME.level == "maps/kana_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 2
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_leikohallway" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in infirmary hallway
	elseif GAME.level == "maps/infirmary_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanahallway" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_infirmarydoor" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_maiddoor" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in maid's quarters
	elseif GAME.level == "maps/maidroom.lua" then
		if thisName == "ent_player" and otherName == "ent_hallwaydoor4" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in infirmary
	elseif GAME.level == "maps/infirmary.lua" then
		if thisName == "ent_player" and otherName == "ent_hallwaydoor3" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in main_hallway
	elseif GAME.level == "maps/main_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_gardendoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_kitchendoor" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_diningdoor" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in garden
	elseif GAME.level == "maps/garden.lua" then
		if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

		-- collisions in kitchen
	elseif GAME.level == "maps/kitchen.lua" then
		if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_diningdoor" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

	elseif GAME.level == "maps/dining_room.lua" then
		if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_kitchendoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end
	end
end

function Scene2_1:manageKeypresses(key, GAME)

	if key == "space" then
		Talkies.onAction()
	end

end

function Scene2_1:loadLevel(GAME)

	if GAME.level == "maps/leikoroom.lua" and GAME.ch2scene1Unlocked == false then
		GAME.player.canMove = false
		GAME.player.facing = "S"
		Talkies.say("Leiko", "Ugh, I can't believe I'm willingly inviting peasants into my room.", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", "I hope they don't leave a smell.-- Maybe I should call over one of the maids afterward...", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", " Anyway, I should go talk about this to Kana.", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("GAME", "* IT'S NOW POSSIBLE TO EXPLORE THE CASTLE GROUNDS! *", {image=self.player.avatar, talkSound=GAME.blop,})
		GAME.interact = false
		GAME.ch2scene1Unlocked = true
	end

end
