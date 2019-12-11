Scene2_5 = Object:extend()

function Scene2_5:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
  self.bookcount = 0
  self.finishedreading = false
	self.book1finished = false
	self.book2finished = false
	self.book3finished = false
--	self.bedinteract = false
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
    --[[elseif object.name == "leiko_bed" then
			local leiko_bed = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_leikobed")
			table.insert(GAME.entities, leiko_bed) --]]
    elseif object.name == "book1" then
			local book1 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book1")
			table.insert(GAME.entities, book1)
    elseif object.name == "book2" then
      local book2 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book2")
      table.insert(GAME.entities, book2)
    elseif object.name == "book3" then
      local book2 = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_book3")
      table.insert(GAME.entities, book2)
		end
-- Leiko hallway
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
-- library hallway
elseif GAME.level == "maps/library_hallway.lua" then
	if object.name == "player_spawn" and GAME.castleExit == "room_hallway" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn1" and GAME.castleExit == "library" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn2" and GAME.castleExit == "sitting_room" then
				GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn3" and GAME.castleExit == "main_hallway" then
				GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
				table.insert(GAME.entities, GAME.player)
	elseif object.name == "room_hallway" then
		local room_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_roomhallway")
		room_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, room_hallway )
	elseif object.name == "library_door" then
		local library_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_librarydoor")
		library_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, library_door )
	elseif object.name == "main_hallway" then
		local main_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_mainhallway")
		main_hallway.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, main_hallway )
	elseif object.name == "sitting_door" then
		local sitting_door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_sittingdoor")
		sitting_door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, sitting_door )
	end

end
end

function Scene2_5:manageCollisions(thisName, otherName, cols, i, GAME)

	-- from Leiko's room to leiko_hallway
	if GAME.level == "maps/leikoroom.lua" then
		if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" and GAME.ch2scene5Unlocked1 and not GAME.ch2scene5Unlocked2 then
      Talkies.say("Leiko", " * It's better to stay in my room for now. * ")
		elseif thisName == "ent_player" and otherName == "ent_leikobed" then
		  self.bedinteract = true
    elseif thisName == "ent_player" and otherName == "ent_book1" then
      self.interact_book1 = true
    elseif thisName == "ent_player" and otherName == "ent_book2" then
      self.interact_book2 = true
    elseif thisName == "ent_player" and otherName == "ent_book3" then
      self.interact_book3 = true
		end
		if thisName == "ent_player" and otherName == "ent_hallwaydoor1" and GAME.player.facing == "S" and GAME.ch2scene5Unlocked2 then
		GAME.castleExit = "leikoroom"
		GAME.level = cols[i].other.nextMap
		GAME:loadLevel()
		end
		-- from leiko's hallway to kana's hallway
	elseif GAME.level == "maps/room_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_leikodoor" and GAME.player.facing == "N" then
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_libraryhallway" and GAME.player.facing == "W" then
			GAME.castleExit = "room_hallway"
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_kanadoor" and GAME.player.facing == "N" then
			Talkies.say("Leiko", "* Kana is probably doing something. I shouldn't interrupt. *", {image=self.player.avatar, talkSound=GAME.blop})
		elseif thisName == "ent_player" and otherName == "ent_infirmaryhallway" and GAME.player.facing == "E" then
			Talkies.say("Leiko", "* I have nothing to do over there. *", {image=self.player.avatar, talkSound=GAME.blop})
		end


	elseif GAME.level == "maps/library_hallway.lua" then
		if thisName == "ent_player" and otherName == "ent_roomhallway" and GAME.player.facing == "E" then
			GAME.castleExit = "library_hallway"
			GAME.level = cols[i].other.nextMap
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_librarydoor" and GAME.player.facing == "W" then
			GAME.level = cols[i].other.nextMap
			GAME.chapter2.scene = 6
			GAME:loadLevel()
		elseif thisName == "ent_player" and otherName == "ent_mainhallway" and GAME.player.facing == "S" then
			Talkies.say("Leiko", "* I'm going the wrong way. *", {image=self.player.avatar, talkSound=GAME.blop})
		elseif thisName == "ent_player" and otherName == "ent_sittingdoor" and GAME.player.facing == "W" then
			Talkies.say("Leiko", "*I need to go to the other room. *", {image=self.player.avatar, talkSound=GAME.blop})
		end

	 end

end

function Scene2_5:manageKeypresses(key, GAME)

  --if key == "space" and self.bedinteract and self.finishedreading == false then
    --  Talkies.say("Leiko", "* I should't go to sleep right now. *", {image=self.player.avatar, talkSound=GAME.blop})
  if key == "space" and self.interact_book1 and self.book1finished == false and not self.finishedreading then
      Talkies.say("Mountains of Kewon", "The mountains of Kewon are said to be dangerous and life-risking, with a reason. ")
			Talkies.say("Mountains of Kewon", "Monsterous human-eating Yokai inhabit the tops, lurking between the trees and in caves.")
			Talkies.say("Mountains of Kewon", "Yokai are vengeful spirits, created out of hatred and evil as a result of a prior event, memory or strong emotions.")
			Talkies.say("Mountains of Kewon", "There are many types, sizes and forms, of which many have not been documented. ")
			Talkies.say("Mountains of Kewon", "A strong mist that sometimes surrounds the mountain tops is believed to be related to Yokai.")
			Talkies.say("Mountains of Kewon", "Spiritual and ancestoral specialists see the thick mist or heavy thunder clouds as a protective layer,")
			Talkies.say("Mountains of Kewon", " meant to keep out citizens from reaching the disk or confronting Yokai in times of instablity or danger.")
			Talkies.say("Mountains of Kewon", "Weather specialists believe this is nonsense, ")
			Talkies.say("Mountains of Kewon", "and the mist is simply caused by the numerous bodies of water on and surrounding the mountain vaporating. ")
			Talkies.say("Mountains of Kewon", "Since research is difficult to be done, theories are left unproven.")

			Talkies.say("Leiko", " * Even this book is unsure about what those dark clouds might be...  *", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", " * I don't think that it's a coincidince though. And why would the child be lying about something serious like this...? *", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", " * 'Times of instablity or danger'...--If it's really the disk causing this, it might be true. *", {image=self.player.avatar, talkSound=GAME.blop})
			self.bookcount = self.bookcount + 1
			self.book1finished = true
			self.interact_book1 = false

  elseif key == "space" and self.interact_book2 and self.book2finished == false and not self.finishedreading then
      Talkies.say("Ancestoral Rituals of Kewon", "Kewon, a kingdom with several prosperous centuries to its name, has a deep connection with its religion, past and ancestors.")
			Talkies.say("Ancestoral Rituals of Kewon", "There is a long list of monthly and yearly celebrations and rituals that are executed by the entire kingdom or by the royal family and their most important religious spokesmen.")
			Talkies.say("Ancestoral Rituals of Kewon", "In Kewon, the Festival of New Beginnings starting the new lunar year is considered one of the most important and valueable celebrations regarding the country and the people's health, luck and prosperity.")

			Talkies.say("Ancestoral Rituals of Kewon", "During the festival, the start of the year is celebrated, and locals travel to their closest tempels to celebrate and pray to the Gods for their overal well-being in Kewon.")
			Talkies.say("Ancestoral Rituals of Kewon", "It is usual for the towns to organize night markets surrounding the tempels, decorated with flowers, laterns and candles, ")
			Talkies.say("Ancestoral Rituals of Kewon", "where the locals can enjoy traditional lunar dishes, latern dances, fireworks and cheerful flute music.")
			Talkies.say("Ancestoral Rituals of Kewon", "While the citizens celebrate on the streets, the royal family prepares a ritual.")
			Talkies.say("Ancestoral Rituals of Kewon", "Together with a religious spokesman, the family prays for their country's prosperity and health to the Gods,")
			Talkies.say("Ancestoral Rituals of Kewon", " before the king and queen emit a portion of their energy onto a spiritual plate that will cause the three protector spirits of Kewon to temporarily appear and swim as koi above the kingdom.")
			Talkies.say("Ancestoral Rituals of Kewon", "The spirits each represent the three magics, and stand as a symbol for peace, balance and prosperity. ")

			Talkies.say("Ancestoral Rituals of Kewon", "Many believe that the rituals and prayers are of great necessity.")
			Talkies.say("Ancestoral Rituals of Kewon", "They believe the spirit's balance is directly related to their well-being and powers.")
			Talkies.say("Ancestoral Rituals of Kewon", "Others might say this is unrelated to the spirts. ...")

			Talkies.say("Leiko", " * The Festival of New Beginnings used to be my favorite as a child, but since I've gotten older it has only been annoying. *", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", " * Ritual here, prayer there. Ugh.  *", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", " * I never knew people thought the rituals relates to the country's well-being, though. *", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", " * To me it's just boring. It'd rather watch the fireworks. *", {image=self.player.avatar, talkSound=GAME.blop})
			self.bookcount = self.bookcount + 1
			self.book2finished = true
			self.interact_book2 = false
  elseif key == "space" and self.interact_book3 and self.book3finished == false and not self.finishedreading then
      Talkies.say("Disruption of Powers", "All citizens of Kewon are aware of the peaceful balance between the three magics: purple, blue and green.")
			Talkies.say("Disruption of Powers", "This is done by an allpowerful disk created by the three great ancestors of Kewon, meant to keep the kingdom balanced and in peace.")
			Talkies.say("Disruption of Powers", "To prevent misusage of the disk and the balance to be disrupted, the disk is believed to be sealed away in the great mountain closest to the capital.")
			Talkies.say("Disruption of Powers", "What exactly will happen if the disk disrupts the balance between the magics, is unknown. ")

			Talkies.say("Disruption of Powers", "One theory suggests that the disk will reverse the distribution of the magics and store it in itself, causing all people to lose their powers. ")
			Talkies.say("Disruption of Powers", "This can cause several problems that can end fatally for many.")
			Talkies.say("Disruption of Powers", "For one, the theory suggests, it will worsen the condition of the weak and sick, since an individual's magic is part of their being and lifesource. ")
			Talkies.say("Disruption of Powers", "Another theory suggests that the magics will be distributed unevenly. Two types might lose their powers while the other gains more. ")
			Talkies.say("Disruption of Powers", "Which theory might be correct, is still unknown to Kewonian scientists. ")
			Talkies.say("Disruption of Powers", "Many hope for the best and pray the legendary disk will never be found or ...")

			Talkies.say("Leiko", " * 'Worsen the condition of the weak'...--Could this apply to Kana as well? *", {image=self.player.avatar, talkSound=GAME.blop})
			Talkies.say("Leiko", " * I mean, she has been sick since I can remember and complications aren't rare... but... *", {image=self.player.avatar, talkSound=GAME.blop})
			self.bookcount = self.bookcount + 1
			self.book3finished = true
			self.interact_book3 = false
	elseif key == "space" then Talkies.onAction()
	end

	if self.bookcount == 3 then
			Talkies.say("Leiko", " * I'm getting tired. I'm going to bed. *", {image=self.player.avatar, talkSound=GAME.blop, oncomplete = function() self.finishedreading = true end })
			self.bookcount = 0
	elseif self.finishedreading and not GAME.ch2scene5Unlocked2 then
		GAME:doBlackScreen("in", "morning")
		Talkies.say("Maid", "Your Highness, the morning bells have rung. You should wake up before Princess Kana will come in to do so herself.", {talkSound=GAME.blop})
		Talkies.say("Leiko", " * Ugh I hate mornings... *", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Maid", "Your Highness, the peasants you summoned have arrived. Should I bring them in?", {talkSound=GAME.blop})
		Talkies.say("Leiko", "Yes and bring them to the libary if you can. I won't let them stay here, in my beloved room.--Digusting, imagine that.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Maid", "Yes, your Highness.", {talkSound=GAME.blop})
		Talkies.say("Leiko", "* I should head over to the library. Better get this over with. *", {image=self.player.avatar, talkSound=GAME.blop, oncomplete=function() GAME:doBlackScreen("out", "morning") end})
		self.finishedreading = false
		GAME.ch2scene5Unlocked2 = true
	end

end

function Scene2_5:loadLevel(GAME)

	if GAME.ch2scene5Unlocked1 == false then
		GAME.player.canMove = false
		GAME.player.facing = "S"
		Talkies.say("Leiko", "Maybe I should read more on the legend... the books should be laying around here.", {image=self.player.avatar, talkSound=GAME.blop,})
		GAME.ch2scene5Unlocked1 = true
		GAME.interact = false
	end


end
