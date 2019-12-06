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
				GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcImage, GAME.world, 200, 64, 200)
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
	end

end

function Scene2_3:manageCollisions(thisName, otherName, cols, i, GAME)

	if GAME.level == "maps/infirmary.lua" then
		if thisName == "ent_player" and otherName == "ent_npc" then
			GAME.interact = true
		elseif thisName == "ent_player" and otherName == "ent_hallwaydoor3" and GAME.player.facing == "W" then
			if GAME.ch2scene3Unlocked then
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			else
				Talkies.say("Leiko", "* I should tell the physician Kana is requesting him. *", {image=self.player.avatar, talkSound=GAME.blop})
			end
		end
	elseif GAME.level == "maps/infirmary_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanahallway" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
			-- from infirmary_hallway to infirmary
		elseif thisName == "ent_player" and otherName == "ent_infirmarydoor" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
			Talkies.say("Leiko", "* I better get to Kana's room. The physician said he'd be done soon. *", {image=self.player.avatar, talkSound=GAME.blop,})
		elseif thisName == "ent_player" and otherName == "ent_maiddoor" and GAME.player.facing == "E" then
			Talkies.say("Leiko", "* I better get to Kana's room. The physician said he'd be done soon. *", {image=self.player.avatar, talkSound=GAME.blop,})
		end
	elseif GAME.level == "maps/kana_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 4
			GAME:loadLevel()
			-- from Kana's hallway to infirmary_hallway
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_leikohallway" and GAME.player.facing == "W" then
			Talkies.say("Leiko", "* I shouldn't be heading this way... I have to finish talking to Kana. *", {image=self.player.avatar, talkSound=GAME.blop})
		end
	end

end

function Scene2_3:manageKeypresses(key, GAME)

	if (key == 'space') and GAME.interact and GAME.level == "maps/infirmary.lua" and not GAME.ch2scene3Unlocked then
		Talkies.say("Leiko", "Physician, my sister is requesting you.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Royal Physician", "Already? I've visited her this morning. Hasn't the medicine been working?", {talkSound=GAME.blop})
		Talkies.say("Leiko", "You tell me, she's been coughing like crazy during our conversation.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Royal Physician", "I'll head over then. Mind waiting a bit? I'm sure I'll be done when you return.", {talkSound=GAME.blop})

			-- some internal dialogue????

			GAME.interact = false
			GAME.ch2scene3Unlocked = true
		elseif key == "space" then Talkies.onAction()
		end

	end

	function Scene2_3:loadLevel(GAME)
	end
