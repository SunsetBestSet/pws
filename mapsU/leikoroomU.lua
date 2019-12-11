leiko_room = Object:extend()

function leiko_room:new()
	self.leiko_img = love.graphics.newImage('assets/sprites/leiko.png')
	self.leiko_avatar = love.graphics.newImage('assets/leiko.png')
	self.interact_leiko = false
end

function leiko_room:loadEntities(object, GAME, map)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200, "N")
		table.insert(GAME.entities, GAME.player)
		GAME.player.canMove = false
	elseif object.name == "leiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.leiko_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	end
end

function leiko_room:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_npc" then self.interact_leiko = true end
end

function leiko_room:manageKeypresses(key, GAME)
	if key == 'space' and self.interact_leiko and not self.unlockScene8 then
		Talkies.say("Leiko", "Look, I might know what is going on.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Really?", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Yes.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "There is this old legend that tells a story of a holy disk, made by the three ancestors that created all magic types.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "This disk supposedly keeps us all in harmony and peace, but can also disrupt it when someone gets their hands on it and wishes to do so.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Because of that, they sealed it away somewhere.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Now, the legend also warns us of an evil, that should appear 15000 years after the seal was placed.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "This evil would break the seal and find the disk, and use it to bring calamity over Kewon.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "I don't exactly know what happens in detail except for this line here, 'for the clouds and weakest will cry first'. Whatever that means.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Is that why there were crazy clouds around the mountain?!", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Well... I might be. If that really is where the disk was sealed. Do you think that's what you saw?", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "I'm sure it is! It really, really, looks like it!", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko (pensive)", "I mean... it does make sense, doesn't it? Kana said the clouds looked like regular thunder clouds, so if it really is the disk...", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Kana? Do you mean the other lady?", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Yes... my sister. There's another thing that bothers me, though. Why would the prophecy be happening now?", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Barely 10,000 years have passed...--Ugh, this isn't my expertise.", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "I didn't pay much attention in my history and lore class... Maybe I should ask... Kana...", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Maybe my sister could help! She's always reading and studying things!", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko (skeptical)", "Do you think she knows about the legend? ", {image=self.leiko_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Probably! She's reaaally smart. ", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Well then, bring her to the castle tomorrow morning. We cannot wait for the research team to finish their report. Now leave.", {image=self.leiko_avatar, talkSound=GAME.blop, oncomplete=function() self:startChapter2(GAME) end})
		self.unlockScene8 = true
		self.interact_leiko = false
	end
	if key == "space" then Talkies.onAction()
	elseif key == "up" then Talkies.prevOption()
	elseif key == "down" then Talkies.nextOption()
	end
end

function leiko_room:startChapter2(GAME)
	GAME:doBlackScreen("in", "ch2")
	GAME.doFadeOut = true
	GAME.chapter = 2
end
