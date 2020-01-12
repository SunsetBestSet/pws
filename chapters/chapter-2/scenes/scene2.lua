Scene2_2 = Object:extend()

function Scene2_2:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
end

function Scene2_2:loadEntities(object, GAME, map)

	-- Kana's room
	if GAME.level == "maps/kanaroom.lua" then
GAME.location = "Kana's Room"
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
		elseif object.name == "kimono" then
			local kimono = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_kimono")
			table.insert(GAME.entities, kimono)
		elseif object.name == "write" then
			local write = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_write")
			table.insert(GAME.entities, write)
		elseif object.name == "music" then
			local music = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_music")
			table.insert(GAME.entities, music)
		end

		-- room hallway
	elseif GAME.level == "maps/room_hallway.lua" then
		GAME.location = "Bedroom Hallway"
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

		--Infirmary's hallway
	elseif GAME.level == "maps/infirmary_hallway.lua" then
		GAME.location = "Right Hallway"
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

	end

end

function Scene2_2:manageCollisions(thisName, otherName, cols, i, GAME)

	-- Kana's room to kana_hallway
	if GAME.level == "maps/kanaroom.lua" then
		if thisName == "ent_player" and otherName == "ent_npc" then
			GAME.interact = true
		elseif thisName == "ent_player" and otherName == "ent_hallwaydoor2" and GAME.player.facing == "S" then
			if GAME.ch2scene2Unlocked then
				GAME.castleExit = "kanaroom"
				GAME.level = cols[i].other.nextMap
				GAME:loadLevel()
			else
				Talkies.say("Leiko", "* Why am I chickening out? It's not like she's gonna lecture me again...--isn't she? *", {image=self.player.avatar, talkSound=GAME.blop,})
			end
			if thisName == "ent_player" and otherName == "ent_kimono" then
				self.kimono_interact = true
			elseif thisName == "ent_player" and otherName == "ent_write" then
				self.write_interact = true
			elseif thisName == "ent_player" and otherName == "ent_music" then
				self.music_interact = true
			end
		end

	elseif GAME.level == "maps/room_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
			Talkies.say("Leiko", "* I better go get the physician. *", {image=self.player.avatar, talkSound=GAME.blop,})
		elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
			Talkies.say("Leiko", "* I need to go to the other hallway to get to the infirmary. *", {image=self.player.avatar, talkSound=GAME.blop,})
		elseif thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
			Talkies.say("Leiko", "* I better go get the physician. *", {image=self.player.avatar, talkSound=GAME.blop,})
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
			GAME.castleExit = "room_hallway"
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

elseif GAME.level == "maps/infirmary_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_roomhallway" and GAME.player.facing == "W" then
			GAME.castleExit = "infirmary_hallway"
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_maiddoor" and GAME.player.facing == "E" then
			Talkies.say("Leiko", "* What am I doing? I should get the physician, not the maid... *", {image=self.player.avatar, talkSound=GAME.blop,})
		elseif thisName == "ent_player" and otherName == "ent_infirmarydoor" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 3
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
				Talkies.say("Leiko", "* I shouldn't go this way, the infirmary is at my right. *", {image=self.player.avatar, talkSound=GAME.blop,})
		end


	end
end


function Scene2_2:manageKeypresses(key, GAME)

	if (key == 'space') and GAME.interact and GAME.level == "maps/kanaroom.lua" and not GAME.ch2scene2Unlocked then
		GAME.player.canMove = false
		Talkies.say("Kana", "Why have you come to my quarters, dear sister? Is something the matter?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Leiko", "*sighs*--Yes, dear sister, I think something IS.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "This is not about the clouds surrounding the mountain, is it?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Kana", "If it is, there is nothing too bad to worry about, I'm sure. Mother said herself she believes none of it.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Leiko", "Kana, mother doesn't know what she's talking about whatsoever. She never does.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "Leiko, you should really refrain from insulting Mother again.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Kana", "Do you remember what happened the last time you insulted her?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Leiko", "You...--Are you kidding me right now? One of YOUR maids ratted me out.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "With reason. It is considered treason, Leiko.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Leiko", "", { options= {
			{"You told her to spy on me.", function() Scene2_2:spy(GAME) end},
			{"I'm sorry.", function() Scene2_2:sorry(GAME) end},
			{"It's your fault.", function() Scene2_2:fault(GAME) end}
		}
	}
)
GAME.interact = false
GAME.ch2scene2Unlocked = true
GAME.player.canMove = true
elseif key == "space" then Talkies.onAction()
elseif key == "up" then Talkies.prevOption()
elseif key == "down" then Talkies.nextOption()
end

if (key == 'space') and self.kimono_interact then
	Talkies.say("Leiko", "* This is my sister's ceremonial kimono. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* She is supposed to only wear it during important occasions, yet she wears it almost every weekend. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* 'It's my cultural heritage' she says. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* I think it's a bit outdated but okay. *", {image=self.player.avatar, talkSound=GAME.blop,})
	self.kimono_interact = false
elseif (key == 'space') and self.write_interact then
	Talkies.say("Leiko", "* Calligraphy is also one of Kana's hobbies...--Imagine writing stuff all day, really boring. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* She says it's good for keeping a healty balance between mind and soul. Don't get it. *", {image=self.player.avatar, talkSound=GAME.blop,})
	self.write_interact = false
elseif (key == 'space') and self.music_interact then
	Talkies.say("Leiko", "* Kana likes to play the koto, an traditional Kuwonian instrument. Mother forced her to learn it when she was a toddler. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* She also likes to sing songs while playing. She's kinda good at it. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* Guests enjoy it a lot when she plays at parties. *", {image=self.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Leiko", "* Can't relate. I hate being forced to do stuff. *", {image=self.player.avatar, talkSound=GAME.blop,})
	self.music_interact = false
end

end

function Scene2_2:loadLevel(GAME)
end

-- continuation of scene
function Scene2_2:moreMessages(GAME)
	local	player_avatar = love.graphics.newImage("assets/leiko.png")
	Talkies.say("Leiko", "Whatever...--the reason why I came here is because I think the legend of the disk might be true.", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "And someone might have found it.", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Cough Cough Cough ", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Maid", "Your Highness! Please be careful!")
	Talkies.say("Kana", "Just what are you o-on about?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Kana", "Even if it might be true, the disk was said to be sealed away c-centuries ago.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Leiko", "The kid has seen it, Kana. The disk. Think about it, the clouds- ", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Cough Cough Cough ", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Leiko", "What is going on with you? I've never seen you this sick... ", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Maid", "Your Highness...")
	Talkies.say("Kana", "Don't... worry Leiko...--I'm just facing some complications as of late...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Leiko", "Sounds more than that...", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "* Kana has always had problems with her health but it has definitely gotten worse the last few weeks... --maybe...? *", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "I am sorry sister, but I will have to ask a favor of you...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Leiko", "What?", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "The royal physician... will have to pay me a visit once again.--Get him for me... will you? ", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Kana", "I promise we will finish our talk after.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Kana", "Ugh... You better keep your word.", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Thank you, sister.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
end

-- Kana and Leiko options
function Scene2_2:spy(GAME)
	local	player_avatar = love.graphics.newImage("assets/leiko.png")
	Talkies.say("GAME", "* YOU CHOSE THE OPTION 'You told her to spy on me.'")
	Talkies.say("Leiko", "Ugh... I bet you even told her to spy on me or something.", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "What?--How could you accuse me of such?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Kana", "I'm not that wary of you. She told the queen on her own account.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Leiko", "Sure...", {image=player_avatar, talkSound=GAME.blop})
	Scene2_2:moreMessages(GAME)
end
function Scene2_2:sorry(GAME)
	local	player_avatar = love.graphics.newImage("assets/leiko.png")
	Talkies.say("GAME", "* YOU CHOSE THE OPTION 'I'm sorry'")
	Talkies.say("Leiko", "I know, I'm sorry. I'll try not to...", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "I'm glad you have realised your mistake. I am simply taking care of you, Leiko.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Talkies.say("Leiko", "...I'll try not to with you around that is...", {image=player_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "... What?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
	Scene2_2:moreMessages(GAME)
end
function Scene2_2:fault(GAME)
	local	player_avatar = love.graphics.newImage("assets/leiko.png")
	Talkies.say("GAME", "* YOU CHOSE THE OPTION 'It's your fault.'")
	Talkies.say("Leiko", "Well, with you around I can't do anything, so it's your fault, although indirectly. ", {image=player_avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "What?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Leiko", "Mother favors you. Of course I can't get around anything.", {image=player_avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "That is not true, Leiko...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Scene2_2:moreMessages(GAME)
	end
