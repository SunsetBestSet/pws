Scene1 = Object:extend()

function Scene1:new()
	self.interact_bed_hiko = false
    self.interact_bed_irene = false
end

function Scene1:loadEntities(object, GAME)
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
end

function Scene1:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_npc" then
		GAME.interact = true
	elseif thisName == "ent_player" and otherName == "ent_door" and GAME.player.facing == "N" then
		if GAME.scene1Unlocked or GAME.level == "maps/town.lua" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter1.scene = 2
			GAME:loadLevel()
		elseif GAME.level == "maps/scene1.lua" then
			Talkies.say("Hiko", "I should tell her about the cloud...", {image=GAME.player.avatar, talkSound=GAME.blop,})
		end
	elseif thisName == "ent_player" and otherName == "ent_bed_hiko" then
		self.interact_bed_hiko = true
	elseif thisName == "ent_player" and otherName == "ent_bed_irene" then
		self.interact_bed_irene = true
	end
end

function Scene1:manageKeypresses(key, GAME)
	if (key == 'space') and GAME.interact and GAME.level == "maps/scene1.lua" and not GAME.scene1Unlocked then
		Talkies.say("Hiko", "Irene!!!! What's that cloud??!! What's that cloud??!!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Irene", "...be silent Hiko.", {image=GAME.npc.avatar, talkSound=GAME.blop,})
		Talkies.say("Hiko", "But Irene, it's so weird! And purple, and dark, and... and it looks evil!!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Irene", "Hiko... *sighs* I told you already- I'm working on some important spells. I need to concentrate...", {image=GAME.npc.avatar, talkSound=GAME.blop,})
		Talkies.say("Hiko", "But,--Irene!!! It looks evil and scary! What if something bad is going on?!", {image=GAME.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Irene", "Hiko! Don't you see I'm busy?? Go play outside or something.", {image=GAME.npc.avatar, talkSound=GAME.blop,})
		GAME.interact = false
		GAME.scene1Unlocked = true
	elseif key == "space" and self.interact_bed_hiko then
		Talkies.say("Hiko", "I'm not tired right now.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bed_hiko = false
	elseif key == "space" and self.interact_bed_irene then
		Talkies.say("Hiko", "That's not my bed.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bed_irene = false
	elseif key == "space" then
		Talkies.onAction()
	end
end
