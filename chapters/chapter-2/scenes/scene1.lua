Scene2_1 = Object:extend()

function Scene2_1:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
end

function Scene2_1:loadEntities(object, GAME, map)

	-- Leiko's room
	if GAME.level == "maps/leiko_room1.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "hallway_door1" then
			local hallway_door1 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor1")
			hallway_door1.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, hallway_door1)
		end

-- room hallway
elseif GAME.level == "maps/room_hallway.lua" then
		if object.name == "player_spawn1" and GAME.castleExit == "library_hallway" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn2" and GAME.castleExit == "leikoroom" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn3" and GAME.castleExit == "kanaroom" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn4" and GAME.castleExit == "infirmary_hallway" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "leiko_door" then
			local leiko_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikodoor")
			leiko_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, leiko_door )
		elseif object.name == "kana_door" then
			local kana_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kanadoor")
			kana_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, kana_door )
		elseif object.name == "infirmary_hallway" then
			local infirmary_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_infirmaryhallway")
			infirmary_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, infirmary_hallway )
		elseif object.name == "library_hallway" then
			local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
			library_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_hallway)
		elseif object.name == "fam" then
			local fam = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_fam")
			table.insert(GAME.entities, fam)
    elseif object.name == "moon" then
      local moon = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_moon")
      table.insert(GAME.entities, moon)
    elseif object.name == "old" then
      local old = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_old")
      table.insert(GAME.entities, old)
		end

-- library hallway
	elseif GAME.level == "maps/library_hallway.lua" then
		if object.name == "player_spawn" and GAME.castleExit == "room_hallway" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn1" and GAME.castleExit == "library" then
				GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn2" and GAME.castleExit == "sitting_room" then
					GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
					table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn3" and GAME.castleExit == "main_hallway" then
					GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
					table.insert(GAME.entities, GAME.player)
		elseif object.name == "room_hallway" then
			local room_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_roomhallway")
			room_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, room_hallway )
		elseif object.name == "library_door" then
			local library_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_librarydoor")
			library_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_door )
		elseif object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway )
		elseif object.name == "sitting_door" then
			local sitting_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_sittingdoor")
			sitting_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, sitting_door )
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

-- sitting room
	elseif GAME.level == "maps/sitting_room.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "library_hallway" then
			local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
			library_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, library_hallway)
		end

	-- infirmary hallway
	elseif GAME.level == "maps/infirmary_hallway.lua" then
		if object.name == "player_spawn" and GAME.castleExit == "room_hallway" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn1" and GAME.castleExit == "maidroom" then
				GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn2" and GAME.castleExit == "infirmary" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "player_spawn3" and GAME.castleExit == "main_hallway" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "room_hallway" then
			local room_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_roomhallway")
			room_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, room_hallway )
		elseif object.name == "maid_door" then
			local maid_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_maiddoor")
			maid_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, maid_door )
		elseif object.name == "infirmary_door" then
			local infirmary_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_infirmarydoor")
			infirmary_door.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, infirmary_door )
		elseif object.name == "main_hallway" then
			local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
			main_hallway.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, main_hallway )
		end

-- maid's quarters
elseif GAME.level == "maps/maidroom.lua" then
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "hallway_door4" then
		local hallway_door4 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor4")
		hallway_door4.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, hallway_door4)
	elseif object.name == "maid_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcmaidImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	end

-- infirmary
elseif GAME.level == "maps/infirmary.lua" then
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "hallway_door3" then
		local hallway_door3 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor3")
		hallway_door3.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, hallway_door3)
	end

-- main hallway
elseif GAME.level == "maps/main_hallway.lua" then
	if object.name == "player_spawn" and GAME.castleExit == "infirmary_hallway" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn1" and GAME.castleExit == "library_hallway" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn2" and GAME.castleExit == "kitchen" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn3" and GAME.castleExit == "dining_room" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn4" and GAME.castleExit == "garden" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn5" and GAME.castleExit == "left_stairs" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn6" and GAME.castleExit == "right_stairs" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn7" and GAME.castleExit == "retainer_room" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn8" and GAME.castleExit == "queen_room" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "infirmary_hallway" then
		local infirmary_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_infirmaryhallway")
		infirmary_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, infirmary_hallway )
	elseif object.name == "library_hallway" then
		local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
		library_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, library_hallway )
	elseif object.name == "kitchen_door" then
		local kitchen_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kitchendoor")
		kitchen_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, kitchen_door )
	elseif object.name == "dining_door" then
		local dining_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_diningdoor")
		dining_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, dining_door )
	elseif object.name == "garden_door" then
		local garden_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_gardendoor")
		garden_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, garden_door )
	elseif object.name == "left_door" then
		local left_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leftdoor")
		left_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, left_door )
	elseif object.name == "right_door" then
		local right_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_rightdoor")
		right_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, right_door )
	elseif object.name == "retainer_door" then
		local retainer_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_retainerdoor")
		retainer_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, retainer_door )
	elseif object.name == "queen_door" then
		local queen_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_queendoor")
		queen_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, queen_door )
	end

--kitchen
elseif GAME.level == "maps/kitchen.lua" then
	if object.name == "player_spawn" and GAME.castleExit == "main_hallway" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "player_spawn1" and GAME.castleExit == "dining_room" then
		 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		 table.insert(GAME.entities, GAME.player)
	elseif object.name == "between_door" then
		local between_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_betweendoor")
		 between_door.nextMap = object.properties.nextMap;
		 table.insert(GAME.entities, between_door )
	 elseif object.name == "main_hallway" then
 		local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
 		main_hallway.nextMap = object.properties.nextMap;
 		table.insert(GAME.entities, main_hallway )
	end

--dining room
elseif GAME.level == "maps/dining_room.lua" then
	if object.name == "player_spawn" and GAME.castleExit == "main_hallway" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "player_spawn1" and GAME.castleExit == "kitchen" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
 	elseif object.name == "main_hallway" then
	  local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
	  main_hallway.nextMap = object.properties.nextMap;
	  table.insert(GAME.entities, main_hallway )
 	elseif object.name == "main_hallway" then
	 	local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
	 	main_hallway.nextMap = object.properties.nextMap;
	 	table.insert(GAME.entities, main_hallway )
	elseif object.name == "between_door" then
		local between_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_betweendoor")
		between_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, between_door )
	end

--garden
elseif GAME.level == "maps/garden.lua" then
	if object.name == "player_spawn" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "main_hallway" then
	 local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
	 main_hallway.nextMap = object.properties.nextMap;
	 table.insert(GAME.entities, main_hallway )
 end

-- left stairs
elseif GAME.level == "maps/left_stairs.lua" then
	if object.name == "player_spawn" and GAME.castleExit == "main_hallway" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "player_spawn1" and GAME.castleExit == "throne_room" then
	GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	table.insert(GAME.entities, GAME.player)
elseif object.name == "main_hallway" then
 local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
 main_hallway.nextMap = object.properties.nextMap;
 table.insert(GAME.entities, main_hallway )
elseif object.name == "throne_door" then
	local throne_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_thronedoor")
	throne_door.nextMap = object.properties.nextMap;
	table.insert(GAME.entities, throne_door )
end

-- right stairs
elseif GAME.level == "maps/right_stairs.lua" then
	if object.name == "player_spawn" and GAME.castleExit == "main_hallway" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn1" and GAME.castleExit == "throne_room" then
	GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	table.insert(GAME.entities, GAME.player)
	elseif object.name == "main_hallway" then
	local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
	main_hallway.nextMap = object.properties.nextMap;
	table.insert(GAME.entities, main_hallway )
elseif object.name == "throne_door" then
local throne_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_thronedoor")
throne_door.nextMap = object.properties.nextMap;
table.insert(GAME.entities, throne_door )
	end

-- retainer room
elseif GAME.level == "maps/retainer_room.lua" then
	if object.name == "player_spawn" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "main_hallway" then
 local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
 main_hallway.nextMap = object.properties.nextMap;
 table.insert(GAME.entities, main_hallway )
end

--queen room
elseif GAME.level == "maps/queen_room.lua" then
	if object.name == "player_spawn" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "main_hallway" then
 local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
 main_hallway.nextMap = object.properties.nextMap;
 table.insert(GAME.entities, main_hallway )
end

--throne room
elseif GAME.level == "maps/throne_room.lua" then
	if object.name == "player_spawn1" and GAME.castleExit == "right_stairs" then
	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "player_spawn2" and GAME.castleExit == "left_stairs" then
 	 GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
 	 table.insert(GAME.entities, GAME.player)
 elseif object.name == "right_door" then
 local right_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_rightdoor")
 right_door.nextMap = object.properties.nextMap;
 table.insert(GAME.entities, right_door )
elseif object.name == "left_door" then
local left_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leftdoor")
left_door.nextMap = object.properties.nextMap;
table.insert(GAME.entities, left_door )
elseif object.name == "outside_door" then
local outside_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_outsidedoor")
outside_door.nextMap = object.properties.nextMap;
table.insert(GAME.entities, outside_door )
end

end
end

function Scene2_1:manageCollisions(thisName, otherName, cols, i, GAME)
	-- collisions in leiko's room
		if GAME.level == "maps/leiko_room1.lua" then
			if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" then
				GAME.castleExit = "leikoroom"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/room_hallway.lua" then
			if thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
				GAME.castleExit = "room_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
				GAME.level = cols[i].other.nextMap
				GAME.music.castle2:stop()
				GAME.music.kana:play()
				GAME.chapter2.scene = 2
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
				GAME.castleExit = "room_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_fam" then
				self.interact_fam = true
			elseif thisName == "ent_player" and otherName == "ent_moon" then
				self.interact_moon = true
			elseif thisName == "ent_player" and otherName == "ent_old" then
				self.interact_old = true
			end

		elseif GAME.level == "maps/library_hallway.lua" then
			if thisName == "ent_player" and otherName == "ent_roomhallway" and GAME.player.facing == "E" then
				GAME.castleExit = "library_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_librarydoor" and GAME.player.facing == "W" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
				GAME.castleExit = "library_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_sittingdoor" and GAME.player.facing == "W" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/library.lua" then
			if thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "E" then
				GAME.castleExit = "library"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/sitting_room.lua" then
			if thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "E" then
				GAME.castleExit = "sitting_room"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/infirmary_hallway.lua" then
			if thisName == "ent_player" and otherName == "ent_roomhallway" and GAME.player.facing == "W" then
				GAME.castleExit = "infirmary_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_maiddoor" and GAME.player.facing == "E" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_infirmarydoor" and GAME.player.facing == "E" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
					GAME.castleExit = "infirmary_hallway"
					GAME.level = cols[i].other.nextMap
					GAME:loadLevel()
			end

		elseif GAME.level == "maps/maidroom.lua" then
			if thisName == "ent_player" and otherName == "ent_hallwaydoor4" and GAME.player.facing == "W" then
				GAME.castleExit = "maidroom"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_npc" then
				GAME.interact = true
			end

		elseif GAME.level == "maps/infirmary.lua" then
			if thisName == "ent_player" and otherName == "ent_hallwaydoor3" and GAME.player.facing == "W" then
				GAME.castleExit = "infirmary"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/main_hallway.lua" then
			if thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "N" then
				GAME.castleExit = "main_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "N" then
				GAME.castleExit = "main_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_kitchendoor" and GAME.player.facing == "W" then
				GAME.castleExit = "main_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_diningdoor" and GAME.player.facing == "S" then
				GAME.castleExit = "main_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_gardendoor" and GAME.player.facing == "N" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_leftdoor" and GAME.player.facing == "S" then
				GAME.castleExit = "main_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_rightdoor" and GAME.player.facing == "S" then
				GAME.castleExit = "main_hallway"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_retainerdoor" and GAME.player.facing == "S" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_queendoor" and GAME.player.facing == "E" then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/kitchen.lua" then
			if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "E" then
				GAME.castleExit = "kitchen"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_betweendoor" and GAME.player.facing == "S" then
				GAME.castleExit = "kitchen"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/dining_room.lua" then
			if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "N" then
				GAME.castleExit = "dining_room"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_betweendoor" and GAME.player.facing == "N" then
				GAME.castleExit = "dining_room"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/garden.lua" then
			if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
				GAME.castleExit = "garden"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

		elseif GAME.level == "maps/left_stairs.lua" then
			if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "N" then
				GAME.castleExit = "left_stairs"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_thronedoor" and GAME.player.facing == "E" then
				GAME.castleExit = "left_stairs"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end
		elseif GAME.level == "maps/right_stairs.lua" then
			if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "N" then
				GAME.castleExit = "right_stairs"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif thisName == "ent_player" and otherName == "ent_thronedoor" and GAME.player.facing == "W" then
				GAME.castleExit = "right_stairs"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			end

elseif GAME.level == "maps/retainer_room.lua" then
	if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "N" then
		GAME.castleExit = "retainer_room"
		GAME.level = cols[i].other.nextMap
		GAME:loadLevel()
	end

elseif GAME.level == "maps/queen_room.lua" then
	if thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "W" then
		GAME.castleExit = "queen_room"
		GAME.level = cols[i].other.nextMap
		GAME:loadLevel()
	end

elseif GAME.level == "maps/throne_room.lua" then
	if thisName == "ent_player" and otherName == "ent_rightdoor" and GAME.player.facing == "E" then
		GAME.castleExit = "throne_room"
		GAME.level = cols[i].other.nextMap
		GAME:loadLevel()
	elseif thisName == "ent_player" and otherName == "ent_leftdoor" and GAME.player.facing == "W" then
		GAME.castleExit = "throne_room"
		GAME.level = cols[i].other.nextMap
		GAME:loadLevel()
	elseif thisName == "ent_player" and otherName == "ent_outsidedoor" and GAME.player.facing == "S" then
		Talkies.say("Leiko", "* I can't just leave the castle... *",  {image=self.player.avatar, talkSound=GAME.blop})
	end


		end
end

function Scene2_1:manageKeypresses(key, GAME)

	if (key == 'space') and GAME.interact and GAME.level == "maps/maidroom.lua" then
		Talkies.say("Maid", "Your Highness?", {talkSound=GAME.blop})
		Talkies.say("Leiko", "I'm looking for Kana, do you know where she is?", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Maid", "I believe she's in the room next to yours, playing the koto.", {talkSound=GAME.blop})
		GAME.interact = false
	end
	if key == "space" then
		Talkies.onAction()
	end

	if key == "space" and self.interact_fam == true then
		Talkies.say("Leiko", "* My family: father, mother and my sister Kana. *",  {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "* My sister really looks like my mom. I look more like dad. *", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "* What was the last time we've been all together? I miss those times. *", {image=self.player.avatar, talkSound=GAME.blop})
		self.interact_fam = false
	elseif key == "space" and self.interact_moon == true then
		Talkies.say("Leiko", "* A portrait of a lady with purple hair, titled 'moon'. *",  {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "* No one has ever told me who this is...--maybe one of my grandmothers? *", {image=self.player.avatar, talkSound=GAME.blop})
		self.interact_moon = false
	elseif key == "space" and self.interact_old == true then
		Talkies.say("Leiko", "* A portrait of a man on a horse. *", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "* Kana told me this was one of kings who brought piece to Kewon. *", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "* Doesn't really look like it. *", {image=self.player.avatar, talkSound=GAME.blop})
		self.interact_old = false
end


end

function Scene2_1:loadLevel(GAME)
	GAME.music.castle2:play()
	GAME.music.castle:stop()
	if GAME.level == "maps/leiko_room1.lua" and GAME.ch2scene1Unlocked == false then
		GAME.player.canMove = false
		GAME.player.facing = "S"
		Talkies.say("Leiko", "* This must be one of the weirdest days ever. Dark clouds? The disk? Peasants showing up at the castle? *", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", "* I can't believe Mother didn't send them away immediately, with her patience.*", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", "* Also me? Talking to them? Unheard of. *", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", "* Ugh, and I can't believe I'm willingly inviting peasants into my room. *", {image=self.player.avatar, talkSound=GAME.blop })
		Talkies.say("Leiko", "* I hope they don't leave a smell.-- Maybe I should call over one of the maids afterward... *", {image=self.player.avatar, talkSound=GAME.blop,oncomplete=function() GAME:doBlackScreen("out", "ch2") end})
		Talkies.say("Leiko", "* Anyway, I should go talk about this to Kana. *", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("GAME", "* IT'S NOW POSSIBLE TO EXPLORE THE CASTLE GROUNDS! *")
		GAME.interact = false
		GAME.ch2scene1Unlocked = true
	end

end
