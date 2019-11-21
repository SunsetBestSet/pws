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
    elseif object.name == "book1" then
			local book1 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book1")
			table.insert(GAME.entities, book1)
    elseif object.name == "book2" then
      local book2 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book2")
      table.insert(GAME.entities, book2)
    elseif object.name == "book3" then
      local leiko_bed = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book3")
      table.insert(GAME.entities, book2)
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

end


end

function Scene2_5:manageCollisions(thisName, otherName, cols, i, GAME)

	-- from Leiko's room to leiko_hallway
	if GAME.level == "maps/leikoroom.lua" then
		if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" and GAME.ch2scene5Unlocked then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
    elseif thisName == "ent_player" and otherName == "ent_leikobed" then
		    self.interact_bed_leiko = true
    elseif thisName == "ent_player" and otherName == "ent_book1" then
      self.interact_book1 = true
    elseif thisName == "ent_player" and otherName == "ent_book2" then
      self.interact_book2 = true
    elseif thisName == "ent_player" and otherName == "ent_book3" then
      self.interact_book3 = true
    else
      Talkies.say("Leiko", " * It's better to stay in my room for now. * ")
		end
		-- from leiko's hallway to kana's hallway
	elseif GAME.level == "maps/leiko_hallway.lua" then
		  if thisName == "ent_player" and otherName == "ent_kanahallway" and GAME.player.facing == "E" then
		      Talkies.say("Leiko", "I have nothing to do there.")
					-- from leiko_hallway to leiko's room
			elseif thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
		      GAME.level = cols[i].other.nextMap
		      GAME:loadLevel()
		  end

	 end

end

function Scene2_5:manageKeypresses(key, GAME)

	if key == "space" then Talkies.onAction()
  elseif self.interact_bed_leiko then
    if self.finishedreading == false then
      Talkies.say("Leiko", "* I should't go to sleep right now. *")
    elseif self.finishedreading then
      -- start command for sleeping screen?????
  end
  elseif key == "space" and self.interact_book1 and not self.finishedreading then
      Talkies.say("book name 1", "wow so cool lol")
      self.bookcount = self.bookcount + 1
  elseif key == "space" and self.interact_book2 and not self.finishedreading then
      Talkies.say("book name 2", "this is book 2 whats up")
      self.bookcount = self.bookcount + 1
  elseif key == "space" and self.interact_book3 and not self.finishedreading then
      Talkies.say("book name 3", "welcome to book 3 lol")
      self.bookcount = self.bookcount + 1
  elseif key == "space" and self.bookcount == 3 then
    Talkies.say("Leiko", "That was so interesting~!")
    self.finishedreading = true
    self.bookcount = 0
	end

end

function Scene2_5:loadLevel(GAME)

	if GAME.ch2scene5Unlocked == false then
		GAME.player.canMove = false
		GAME.player.facing = "S"
		Talkies.say("Leiko", "Maybe I should read more on the legend... the books should be laying around here.", {image=self.player.avatar, talkSound=GAME.blop,})
		GAME.ch2scene5Unlocked = true
		GAME.interact = false
	end

end
