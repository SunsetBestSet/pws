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
	end
end


end

function Scene2_1:manageCollisions(thisName, otherName, cols, i, GAME)

	-- from Leiko's room to leiko_hallway
	if GAME.level == "maps/leikoroom.lua" then
		if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end
		-- from leiko's hallway to kana's hallway
		elseif GAME.level == "maps/leiko_hallway.lua" then
		  if thisName == "ent_player" and otherName == "ent_kanahallway" and GAME.player.facing == "E" then
		      GAME.level = cols[i].other.nextMap
		      GAME:loadLevel()
					-- from leiko_hallway to leiko's room
			elseif thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
		      GAME.level = cols[i].other.nextMap
		      GAME:loadLevel()
		  end
			-- from kana's hallway to kana's room
	elseif GAME.level == "maps/kana_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
      GAME.level = cols[i].other.nextMap
      GAME.chapter2.scene = 2
      GAME:loadLevel()
			-- from kana's hallway to leiko's hallway
		elseif thisName == "ent_player" and otherName == "ent_leikohallway" and GAME.player.facing == "W" then
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

	if ch2scene1Unlocked == false then
		GAME.player.canMove = false
		GAME.player.facing = "S"
		Talkies.say("Leiko", "Ugh, I can't believe I'm willingly inviting peasants into my room.", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", "I hope they don't leave a smell.-- Maybe I should call over one of the maids afterward...", {image=self.player.avatar, talkSound=GAME.blop,})
		Talkies.say("Leiko", " Anyway, I should go talk about this to Kana.", {image=self.player.avatar, talkSound=GAME.blop,})
		GAME.ch2scene1Unlocked = true
		GAME.interact = false
	end

end
