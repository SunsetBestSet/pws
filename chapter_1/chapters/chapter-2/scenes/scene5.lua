Scene2_5 = Object:extend()

function Scene2_5:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
  self.bookcount = 0
  self.finishedreading = false
end

function Scene2_5:loadEntities(object, GAME, map)

-- Leiko's room
if GAME.level == "maps/leikoroom.lua" then
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
		elseif object.name == "hallway_door1" then
			local hallway_door1 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_hallwaydoor1")
			hallway_door1.nextMap = object.properties.nextMap;
			table.insert(GAME.entities, hallway_door1)
    elseif object.name == "leiko_bed" then
			local leiko_bed = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikobed")
			table.insert(GAME.entities, leiko_bed)
    --[[elseif object.name == "book1" then
			local book1 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book1")
			table.insert(GAME.entities, book1)
    elseif object.name == "book2" then
      local book2 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book2")
      table.insert(GAME.entities, book2)
    elseif object.name == "book3" then
      local leiko_bed = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book3")
      table.insert(GAME.entities, book2) --]]
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
	elseif object.name == "library_hallway" then
		local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
		library_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, library_hallway)
	end

elseif GAME.level == "maps/library_hallway.lua" then
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "leiko_hallway" then
		local leiko_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikohallway")
		leiko_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, leiko_hallway)
	elseif object.name == "library_door" then
		local library_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_librarydoor")
		library_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, library_door)
	elseif	object.name == "main_hallway" then
		local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
		main_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, main_hallway)
	end

end


end

function Scene2_5:manageCollisions(thisName, otherName, cols, i, GAME)

	-- from Leiko's room to leiko_hallway
	if GAME.level == "maps/leikoroom.lua" then
		--[[if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" and GAME.ch2scene5Unlocked then
      Talkies.say("Leiko", " * It's better to stay in my room for now. * ") ]]--
		if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" and self.finishedreading then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_leikobed" then
		  self.interact_bed_leiko = true
    --[[elseif thisName == "ent_player" and otherName == "ent_book1" then
      self.interact_book1 = true
    elseif thisName == "ent_player" and otherName == "ent_book2" then
      self.interact_book2 = true
    elseif thisName == "ent_player" and otherName == "ent_book3" then
      self.interact_book3 = true --]]
		end
		-- from leiko's hallway to kana's hallway
	elseif GAME.level == "maps/leiko_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_kanahallway" and GAME.player.facing == "E" then
			Talkies.say("Leiko", "* I have nothing to do over there. *")
		elseif thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		end

	elseif GAME.level == "maps/library_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_leikohallway" and GAME.player.facing == "E" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_librarydoor" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 6
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
			Talkies.say("Leiko", "* I'm going the wrong way. *")
		end

	 end

end

function Scene2_5:manageKeypresses(key, GAME)

	if key == "space" then Talkies.onAction()
  elseif key == "space" and self.interact_bed_leiko and self.finishedreading == false then
      Talkies.say("Leiko", "* I should't go to sleep right now. *")
  --elseif self.finishedreading then
      -- start command for sleeping screen?????
  --[[elseif key == "space" and self.interact_book1 and not self.finishedreading then
      Talkies.say("book name 1", "wow so cool lol")
      self.bookcount = self.bookcount + 1
			self.interact_book1 = false
  elseif key == "space" and self.interact_book2 and not self.finishedreading then
      Talkies.say("book name 2", "this is book 2 whats up")
      self.bookcount = self.bookcount + 1
			self.interact_book2 = false
  elseif key == "space" and self.interact_book3 and not self.finishedreading then
      Talkies.say("book name 3", "welcome to book 3 lol")
      self.bookcount = self.bookcount + 1
			self.interact_book3 = false
  elseif self.bookcount == 3 then
    Talkies.say("Leiko", "That was so interesting~!")
    self.finishedreading = true
    self.bookcount = 0 --]]
	elseif key == "g" then
		self.finishedreading = true
		Talkies.say("GAME", "* THE NEXT MORNING ...")
		Talkies.say("Leiko", " * Ugh I hate mornings. *")
		Talkies.say("Maid", "Your Highness, the peasants you summoned have arrived. Should I bring them in?")
		Talkies.say("Leiko", "Yes and bring them to the libary if you can. I won't let them stay here, in my beloved room.--Digusting, imagine that.")
		Talkies.say("Maid", "Yes, your Highness.")
		Talkies.say("Leiko", "* I should head over to the library. Better get this over with. *")
	end

end

function Scene2_5:loadLevel(GAME)

	if GAME.ch2scene5Unlocked == false then
		GAME.player.canMove = false
		GAME.player.facing = "S"
		Talkies.say("Leiko", "Maybe I should read more on the legend... the books should be laying around here.", {image=self.player.avatar, talkSound=GAME.blop,})
		GAME.ch2scene5Unlocked = true
		GAME.interact = false
	--elseif self.finishedreading then
		--	GAME.level = "maps/library.lua"
			--GAME.chapter2.scene = 6
		--	GAME:loadLevel()
	end


end
