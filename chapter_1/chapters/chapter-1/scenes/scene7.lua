Scene7 = Object:extend()

function Scene7:new()
	self.satoru_img = love.graphics.newImage('assets/sprites/satoru.png')
	self.chizue_img = love.graphics.newImage('assets/sprites/chizue.png')
	self.leiko_img = love.graphics.newImage('assets/sprites/leiko.png')
	self.kana_img = love.graphics.newImage('assets/sprites/kana.png')
	self.retainer_img = love.graphics.newImage('assets/sprites/link.png')
	
	self.satoru_avatar = love.graphics.newImage('assets/satoru.png')
	self.chizue_avatar = love.graphics.newImage('assets/chizue.png')
	self.leiko_avatar = love.graphics.newImage('assets/leiko.png')
	self.kana_avatar = love.graphics.newImage('assets/kana.png')
end

function Scene7:loadEntities(object, GAME, map)
		if object.name == "player_spawn" then
			GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200, "N")
			table.insert(GAME.entities, GAME.player)
			GAME.player.canMove = false
		elseif object.name == "chizue_spawn" then 
			GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.chizue_img, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.npc)
		elseif object.name == "kana_spawn" then 
			GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.kana_img, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.npc)
		elseif object.name == "leiko_spawn" then 
			GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.leiko_img, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.npc)
		elseif object.name == "satoru_spawn" then 
			GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.satoru_img, GAME.world, 200, 64, 200, "S")
			table.insert(GAME.entities, GAME.npc)
		end
end

function Scene7:manageCollisions(thisName, otherName, cols, i, GAME)
	GAME.throne_room:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene7:manageKeypresses(key, GAME)
	GAME.throne_room:manageKeypresses(key, GAME)
end

function Scene7:loadLevel(GAME)
		Talkies.say("Chizue", "My meeting with the ministers has been interrupted. What is the reason of this?", {image=self.chizue_avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Well, I-", {image=GAME.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "I have been informed that he has seen some concerning matters occurring on the mountain, Mother.", {image=self.kana_avatar, talkSound=GAME.blop})
		Talkies.say("Chizue", "Is there any truth to this?", {image=self.chizue_avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "Nothing proven yet, Mother dearest.", {image=self.kana_avatar, talkSound=GAME.blop})
		Talkies.say("Chizue", "Why have you brought a child's fantasy here to tell, shopkeeper? Are you here to waste my time? That of my daughters?", {image=self.chizue_avatar, talkSound=GAME.blop})
		Talkies.say("Satoru", "No, your Majesty. Please take a look for yourself out of the window, Hiko is not making this up, I have seen the man for myself.", {image=self.satoru_avatar, talkSound=GAME.blop})
		Talkies.say("Chizue", "How absurd! Everyone knows the mountain is impossible to climb, shopkeeper, and clouds have always surrounded its peaks.", {image=self.chizue_avatar, talkSound=GAME.blop})
		Talkies.say("Chizue", "In what way is your story reliable enough to believe?", {image=self.chizue_avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "Dear, are you fully certain of your claims? It is an absurd story.", {image=self.kana_avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "What did you exactly see?", {image=self.kana_avatar, talkSound=GAME.blop, options={{"the clouds", function() self:clouds(GAME) end},{"the man", function() self:man(GAME) end},{"the disk", function() self:disk(GAME) end},}})
end

function Scene7:clouds(GAME)
	Talkies.say("Hiko", "Yes! I'm really telling the truth! The clouds around the mountain are weird and scary. Just look!!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Game", "* The Royals turn around to take a look.")
	Talkies.say("Royals", "...?", {talksound=GAME.blop})
	Talkies.say("Leiko", "Those are some weird clouds.", {image=self.leiko_avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "See!! And there was a man up there! I'm sure he's doing something to the clouds! ", {image=GAME.player.avatar, talkSound=GAME.blop})
	Scene7:moreMessages(GAME)
end

function Scene7:man(GAME)
	Talkies.say("Hiko", "I am! With Nao's far-away-see thingy I saw a scary man doing something creepy on the mountain.", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (slightly surprised)", "But the mountain is nearly inaccessible.", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Satoru saw him too! Really! He was near the clouds! I am sure he made the clouds look like that!!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "*points to the clouds*", {image=GAME.player.avatar})
	Talkies.say("Royals", "*turn around*")
	Scene7:moreMessages(GAME)
end

function Scene7:disk(GAME)
	Talkies.say("Hiko", "I'm really not lying! I saw this big, big thing! This man was doing stuff with it. Making the clouds!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Thing..?", {image=self.leiko_avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Yes! A big circle thing! And it was making the clouds look weird! Look!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Royals", "*turn around*", {talksound=GAME.blop})
	Scene7:moreMessages(GAME)
end

function Scene7:moreMessages(GAME)
	Talkies.say("Kana", "I do not understand... Are those not regular thunder clouds? Mother maybe we should-", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "Kana, call me one of your retainers, please.", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Kana (surprised)", "B-but Mother... Mustn't we commune first with the court?", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "Kana, dear, before we send the public into chaotic panic about a man on the mountain, we must make sure.", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "Assembling the court for another meeting to see it be false would be all for naught. Now, one of your retainers, please.", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "...", {image=self.leiko_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Retainer, would you be so kind to step forward?", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Retainer", "Yes, your majesty.", {talkSound=GAME.blop})
	Talkies.say("Hiko", "But we have to do something now!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "Hiko...", {image=self.satoru_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "Dismissed.", {image=self.chizue_avatar, talkSound=GAME.blop, oncomplete = function() self:startPart2Scene7(GAME) end})
end

function Scene7:startPart2Scene7(GAME)
	GAME:doBlackScreen("in")
	GAME.doFadeOut = true
	GAME.chapter1.scene = 72
end