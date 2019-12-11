Scene2_4 = Object:extend()

function Scene2_4:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
end

function Scene2_4:loadEntities(object, GAME, map)

	if GAME.level == "maps/kanaroom.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "kana_spawn" then
			GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npckanaImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.npc)
		elseif object.name == "maid_spawn" then
				GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcmaidImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.npc)
		elseif object.name == "hallway_door2" then
			local hallway_door2 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor2")
			hallway_door2.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, hallway_door2)
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

function Scene2_4:manageCollisions(thisName, otherName, cols, i, GAME)

	if GAME.level == "maps/kanaroom.lua" then
		if thisName == "ent_player" and otherName == "ent_npc" then
			GAME.interact = true
		elseif thisName == "ent_player" and otherName == "ent_hallwaydoor2" and GAME.player.facing == "S" then
			if GAME.ch2scene4Unlocked then
				GAME.castleExit = "kanaroom"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			elseif GAME.level == "maps/kanaroom.lua" then
				Talkies.say("Leiko", " * I better finish my talk with Kana * ", {image=self.player.avatar, talkSound=GAME.blop,})
			end
		end

	elseif GAME.level == "maps/room_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 5
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
			Talkies.say("Leiko", "* Why should I go there? I need to get to my room. *", {image=self.player.avatar, talkSound=GAME.blop})
		elseif thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
			Talkies.say("Leiko", "* Kana's taking a bath, I better leave her alone. *", {image=self.player.avatar, talkSound=GAME.blop})
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
				Talkies.say("Leiko", "* I have nothing to do there... *", {image=self.player.avatar, talkSound=GAME.blop})
		end

		end

		if GAME.level == "maps/room_hallway.lua" and GAME.ch2scene4Unlocked and GAME.selfdialogue then
			Talkies.say("Leiko", "Typical. She's always reaching places to say everything's fine. ", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", "She even lies about her own health. 'In the way'... --she can't even walk around for longer than 2 hours...", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", "...--I better get to my room.", {image=self.player.avatar, talkSound=GAME.blop})
			GAME.selfdialogue = false
		end

	end

	function Scene2_4:manageKeypresses(key, GAME)

		if (key == 'space') and GAME.interact and GAME.level == "maps/kanaroom.lua" and not GAME.ch2scene4Unlocked then

			Talkies.say("Kana", "I'm sorry. My health has been... in the way as of late.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
			Talkies.say("Leiko", "It's fine.", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Kana", "You were saying? The clouds...?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
			Talkies.say("Leiko", "Uh, yeah, the clouds- You said they looked like thunder clouds, right?", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Kana", "Right, yes.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
			Talkies.say("Leiko", " It's in the prophecy: 'the clouds will cry first'. You see? Cry being the storm around the mountains.", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Kana", "I don't understand... storms around the mountain peaks are not uncommon, Leiko.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
			Talkies.say("Kana", "Are you telling me the prophecy has been going on for decades? Even before our generation?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
			Talkies.say("Leiko", "I've never really paid much attention to the mountains but I've never seen the clouds be like that, like ever.", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Kana", "So...-- It is something that has just begun? How is it possible no one has noticed until now then?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
				Talkies.say("Leiko", "I don't know, okay?! I'm trying to figure things out here.-- Do you have any- ", {image=self.player.avatar, talkSound=GAME.blop})
				Talkies.say("Maid", "Your Highness, your bath has been heated.",{talkSound=GAME.blop})
				Talkies.say("Kana", "I'm sorry Leiko, I'll have to cut our conversation short.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
				Talkies.say("Kana", "Maybe you should rest as well and retire to your room.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
				Talkies.say("Leiko", "Ugh. I guess.", {image=self.player.avatar, talkSound=GAME.blop})
				Talkies.say("Kana", "Goodnight.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})

				GAME.interact = false
				GAME.ch2scene4Unlocked = true
				GAME.selfdialogue = true
			elseif key == "space" then Talkies.onAction()
			end

		end

		function Scene2_4:loadLevel(GAME)
		end
