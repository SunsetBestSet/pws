Scene2 = Object:extend()

function Scene2:new()
	self.interact_bed_hiko = false
	self.interact_bed_irene = false
end

function Scene2:loadEntities(object, GAME, map)
	if GAME.level == "maps/town.lua" then 
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "door_house" then
			local door_house = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_housedoor")
			door_house.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, door_house)
		elseif object.name == "door_shop" then
			local door_shop = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_shopdoor")
			door_shop.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, door_shop)
		end
	elseif GAME.level == "maps/scene1.lua" then 
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
end

function Scene2:manageCollisions(thisName, otherName, cols, i, GAME)
	if GAME.level == "maps/town.lua" then
		if thisName == "ent_player" and otherName == "ent_shopdoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter1.scene = 3
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_housedoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end
	elseif GAME.level == "maps/scene1.lua" then 
		if thisName == "ent_player" and otherName == "ent_npc" then
			GAME.interact = true
		elseif thisName == "ent_player" and otherName == "ent_door" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_bed_hiko" then
			self.interact_bed_hiko = true
		elseif thisName == "ent_player" and otherName == "ent_bed_irene" then
			self.interact_bed_irene = true
		end
	end
end

function Scene2:manageKeypresses(key, GAME)
	if key == "space" then
		Talkies.onAction() 
	end
	if GAME.level == "maps/scene1.lua" then 
		 	if key == "space" and self.interact_bed_hiko then
			Talkies.say("Hiko", "I'm not tired right now.", {image=GAME.player.avatar, talkSound=GAME.blop,})
			self.interact_bed_hiko = false
		elseif key == "space" and self.interact_bed_irene then
			Talkies.say("Hiko", "That's not my bed.", {image=GAME.player.avatar, talkSound=GAME.blop,})
			self.interact_bed_irene = false
		elseif key == "space" then
			Talkies.onAction() 
		end
	end
end