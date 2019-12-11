Scene2_3 = Object:extend()

function Scene2_3:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
end

function Scene2_3:loadEntities(object, GAME, map)

	-- infirmary
	if GAME.level == "maps/infirmary.lua" then

		if GAME.ch2scene3Unlocked == false then
			if object.name == "player_spawn" then
				GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.player)
			elseif object.name == "hallway_door3" then
				local hallway_door3= Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor3")
				hallway_door3.nextMap = object.properties.nextMap;
				table.insert(GAME.entities, hallway_door3)
			elseif object.name == "doc_spawn" then
				GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcdocImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.npc)
			end
			-- condition: als unlock than spawnt de doc niet meer niet -> in kana's kamer
		elseif GAME.ch2scene3Unlocked then
			if object.name == "player_spawn" then
				GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.player)
			elseif object.name == "hallway_door3" then
				local hallway_door3= Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor3")
				hallway_door3.nextMap = object.properties.nextMap;
				table.insert(GAME.entities, hallway_door3)
			end
		end
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
			end
	end

end

function Scene2_3:manageCollisions(thisName, otherName, cols, i, GAME)

	if GAME.level == "maps/infirmary.lua" then
		if thisName == "ent_player" and otherName == "ent_npc" then
			GAME.interact = true
		elseif thisName == "ent_player" and otherName == "ent_hallwaydoor3" and GAME.player.facing == "W" then
			if GAME.ch2scene3Unlocked then
				GAME.castleExit = "infirmary"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			else
				Talkies.say("Leiko", "* I should tell the physician Kana is requesting him. *", {image=self.player.avatar, talkSound=GAME.blop})
			end
		end
	elseif GAME.level == "maps/infirmary_hallway.lua" then

		if thisName == "ent_player" and otherName == "ent_roomhallway" and GAME.player.facing == "W" then
			GAME.castleExit = "infirmary_hallway"
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_maiddoor" and GAME.player.facing == "E" then
				Talkies.say("Leiko", "* I better get to Kana's room. The physician said he'd be done soon. *", {image=self.player.avatar, talkSound=GAME.blop,})
		elseif thisName == "ent_player" and otherName == "ent_infirmarydoor" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
					Talkies.say("Leiko", "* I better get to Kana's room. The physician said he'd be done soon. *", {image=self.player.avatar, talkSound=GAME.blop,})
		end


	elseif GAME.level == "maps/room_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
			Talkies.say("Leiko", "* Why am I going back into my room? I need to speak to Kana. *", {image=self.player.avatar, talkSound=GAME.blop})
		elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
			Talkies.say("Leiko", "* I shouldn't be heading this way... I have to finish talking to Kana. *", {image=self.player.avatar, talkSound=GAME.blop})
		elseif thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 4
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
			GAME.castleExit = "room_hallway"
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end
end

if GAME.level == "maps/infirmary_hallway.lua" and GAME.ch2scene3Unlocked and GAME.selfdialogue then
	Talkies.say("Leiko", "* It's really weird how Kana's has been getting sicker. *", {image=self.player.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "* She always used to be weak, but this is too much...--what's going on? *", {image=self.player.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "* The physician should be about done. I'll head back to Kana's room.*", {image=self.player.avatar, talkSound=GAME.blop})
	GAME.selfdialogue = false
end

end

function Scene2_3:manageKeypresses(key, GAME)

	if (key == 'space') and GAME.interact and GAME.level == "maps/infirmary.lua" and not GAME.ch2scene3Unlocked then
		Talkies.say("Leiko", "Physician, my sister is requesting you.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Royal Physician", "Already? I've visited her this morning. Hasn't the medicine been working?", {talkSound=GAME.blop})
		Talkies.say("Leiko", "You tell me, she's been coughing like crazy during our conversation.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Royal Physician", "I'll head over then. Mind waiting a bit? I'm sure I'll be done when you return.", {talkSound=GAME.blop})
			GAME.interact = false
			GAME.ch2scene3Unlocked = true
			GAME.selfdialogue = true
		elseif key == "space" then Talkies.onAction()
		end

	end

	function Scene2_3:loadLevel(GAME)
	end
