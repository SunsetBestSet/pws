HouseIrene = Object:extend()

function HouseIrene:new()
	self.interact_bed_hiko, self.interact_bed_irene, self.interact_irene, self.unlockScene5 = false
end

function HouseIrene:loadEntities(object, GAME, map)
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
	end
end

function HouseIrene:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_npc" then
		self.interact_irene = true
	elseif thisName == "ent_player" and otherName == "ent_door" and GAME.player.facing == "N" then
		if self.unlockScene5 then
			GAME.chapter1.scene = 6
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif GAME.chapter1.scene ~= 5 then 
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif GAME.chapter1.scene == 5 then 
			Talkies.say("Hiko", "I should tell her about the man...", {image=GAME.player.avatar, talkSound=GAME.blop,})
		end
	elseif thisName == "ent_player" and otherName == "ent_bed_hiko" then
		self.interact_bed_hiko = true
	elseif thisName == "ent_player" and otherName == "ent_bed_irene" then
		self.interact_bed_irene = true
	end
end

function HouseIrene:manageKeypresses(key, GAME)
	if key == "space" and self.interact_bed_hiko then
		Talkies.say("Hiko", "I'm not tired right now.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bed_hiko = false
	elseif key == "space" and self.interact_bed_irene then
		Talkies.say("Hiko", "That's not my bed.", {image=GAME.player.avatar, talkSound=GAME.blop,})
		self.interact_bed_irene = false
	elseif (key == 'space') and self.interact_irene then
		if GAME.chapter1.scene < 5 then 
			Talkies.say("Irene", "Go play outside! I'm busy.", {image=GAME.npc.avatar, talkSound=GAME.blop,})
			self.interact_irene = false
		elseif GAME.chapter1.scene == 5 then 
			Talkies.say("Irene", "!!", {image=GAME.npc.avatar, talkSound=GAME.blop,})
			Talkies.say("Irene", "Hiko, what have I said about opening the door like that?", {image=GAME.npc.avatar, talkSound=GAME.blop,})
			Talkies.say("Hiko", "There's a man! Up in the mountain!", {image=GAME.player.avatar, talkSound=GAME.blop,})
			Talkies.say("Irene", "...What?", {image=GAME.npc.avatar, talkSound=GAME.blop,})
			Talkies.say("Hiko", "It's true!", {image=GAME.player.avatar, talkSound=GAME.blop,})
			Talkies.say("Irene", "Hiko, please stop this nonsense. I know I usually go and play with you but today I really need to-", {image=GAME.npc.avatar, talkSound=GAME.blop,})
			Talkies.say("Hiko", "It's not a game! It's true!!", {image=GAME.player.avatar, talkSound=GAME.blop,})
			Talkies.say("Irene", "Then why don't you tell Shopkeeper Satoru and Nao about it? I'm sure they would love to hear about your discovery.", {image=GAME.npc.avatar, talkSound=GAME.blop,})
			Talkies.say("Hiko", "...", {image=GAME.player.avatar, talkSound=GAME.blop,})
			self.unlockScene5 = true
			self.interact_irene = false
		end
	end
	if key == "space" then
		Talkies.onAction() 
	end
end