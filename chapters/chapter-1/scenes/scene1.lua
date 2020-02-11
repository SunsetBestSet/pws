Scene1 = Object:extend()

function Scene1:new()
	self.interact_bed_hiko = false
	self.interact_bed_irene = false
	self.interact_plant = false
	self.interact_cauldron = false
	self.interact_skeleton = false
	self.interact_bookcase = false
end

function Scene1:loadEntities(object, GAME)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "irene_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.ireneImage, GAME.world, 200, 64, 200)
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
	elseif object.name == "bookcase" then
		local bookcase = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_bookcase")
		table.insert(GAME.entities, bookcase)
	elseif object.name == "cauldron" then
		local cauldron = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_cauldron")
		table.insert(GAME.entities, cauldron)
	elseif object.name == "skeleton" then
		local skeleton = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_skeleton")
		table.insert(GAME.entities, skeleton)
	elseif object.name == "plant" then
		local plant = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_plant")
		table.insert(GAME.entities, plant)
	end
end

function Scene1:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_npc" then
		GAME.interact = true
	elseif thisName == "ent_player" and otherName == "ent_door" then
		if GAME.scene1Unlocked or GAME.level == "maps/town.lua" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter1.scene = 2
			GAME.exitThrough = "irene_house_town"
			GAME:loadLevel()
		elseif GAME.level == "maps/scene1.lua" then
			Talkies.say("Hiko", "I should tell her about the cloud...", {image=GAME.player.avatar, talkSound=GAME.blop,})
		end
	elseif thisName == "ent_player" and otherName == "ent_bed_hiko" then
		self.interact_bed_hiko = true
	elseif thisName == "ent_player" and otherName == "ent_bed_irene" then
		self.interact_bed_irene = true
	elseif thisName == "ent_player" and otherName == "ent_bookcase" then
		self.interact_bookcase = true
	elseif thisName == "ent_player" and otherName == "ent_cauldron" then
		self.interact_cauldron = true
	elseif thisName == "ent_player" and otherName == "ent_skeleton" then
		self.interact_skeleton = true
	elseif thisName == "ent_player" and otherName == "ent_plant" then
		self.interact_plant = true
	end
end

function Scene1:manageKeypresses(key, GAME)
	if (key == 'space') and GAME.interact and GAME.level == "maps/scene1.lua" and not GAME.scene1Unlocked then
		Talkies.say("Hiko", "Irene!!!! What's that cloud??!! What's that cloud??!!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Irene", "...be silent Hiko.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
		Talkies.say("Hiko", "But Irene, it's so weird! And purple, and dark, and... and it looks evil!!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Irene", "Hiko... *sighs* I told you already- I'm working on some important spells. I need to concentrate...", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
		Talkies.say("Hiko", "But,--Irene!!! It looks evil and scary! What if something bad is going on?!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Irene", "Hiko! Don't you see I'm busy?? Go play outside or something.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
		GAME.interact = false
		GAME.scene1Unlocked = true
	elseif key == "space (thinking)" and self.interact_bed_hiko then
		Talkies.say("Hiko", "I'm not tired right now.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bed_hiko = false
	elseif key == "space" and self.interact_bed_irene then
		Talkies.say("Hiko (thinking)", "That's not my bed.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bed_irene = false
	elseif key == "space" and self.interact_bookcase then
		Talkies.say("Hiko (thinking)", "Irene has so many books. She's reaaallly smart!!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bookcase = false
	elseif key == "space" and self.interact_cauldron then
		Talkies.say("Hiko (thinking)", "Irene uses this to make potions! She should make my crush a love potion. Teehee~!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_cauldron = false
	elseif key == "space" and self.interact_skeleton then
		Talkies.say("Hiko (thinking)", "That's our skeleton. I call him mr. Bones.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_skeleton = false
	elseif key == "space" and self.interact_plant then
		Talkies.say("Hiko (thinking)", "It's my bonsai!!! It's been in my family for three generations.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Hiko (thinking)", "My mother gifted it to me before she passed away. I miss her...", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_plant = false
	elseif key == "space" then
		Talkies.onAction()
	end

end

function Scene1:loadLevel(GAME)
	GAME.objects[1].colour[4] = 1
	GAME.music.prologue:play()
	Talkies.say("Game", "The Disk.")
	Talkies.say("Game", "Thousands of years ago, in the beautiful kingdom of Kuwon, the three great ancestors established three types of magic, each representing their traits,")
	Talkies.say("Game", "powers and weaknesses at once. The magic of purple with a fierce soul and control over all alchemy, the magic of green with a kind soul and power over ")
	Talkies.say("Game", "all of nature and the magic of blue with the wise and mindful soul and reign over that what it believes in.")

	Talkies.say("Game", "In the name of these magics, the great ancestors of Kuwon created a disk, a sacred relic blessed by the Golden Gods, that was too maintain a balance")
	Talkies.say("Game", "between the magics and grant stability and peace. Containing an emblem representing each ancestor and their magic: the elements, mother nature and the Golden Goddess,")
	Talkies.say("Game", "the disk represents the people of Kuwon as a unity. But just as the disk is able to provide a balance, the disk is able to disrupt it and create chaos and war between the people.")
	Talkies.say("Game", "Thus, in fear of misuse, the great ancestors have sealed it away in unknown lands, where it resides till this day. ", {oncomplete=function() self:startScene(GAME) end})
end

function Scene1:startScene(GAME)
	GAME:doBlackScreen("out")
	GAME.music.prologue:stop()
	GAME.music.town:play()
	Talkies.say("Game", "Use [SPACE], to move on to the next line in cutscenes!")
	Talkies.say("Game", "To walk, use WASD on your keyboard. You can interact with people or objects by using [SPACE]!")
end
