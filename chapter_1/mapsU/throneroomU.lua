ThroneRoom = Object:extend()

function ThroneRoom:new()
	self.satoru_img = love.graphics.newImage('assets/sprites/satoru.png')
	self.chizue_img = love.graphics.newImage('assets/sprites/chizue.png')
	self.leiko_img = love.graphics.newImage('assets/sprites/leiko.png')
	self.kana_img = love.graphics.newImage('assets/sprites/kana.png')
	self.retainer_img = love.graphics.newImage('assets/sprites/link.png')
	
	self.satoru_avatar = love.graphics.newImage('assets/satoru.png')

end

function ThroneRoom:loadEntities(object, GAME, map)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
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
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.satoru_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	end
end

function ThroneRoom:manageKeypresses(key, GAME)
end

function ThroneRoom:loadLevel(GAME)
	Talkies.say("Chizue", "My meeting with the ministers has been interrupted. What is the reason of this?", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Well, I-", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "I have been informed that he has seen some concerning matters occurring on the mountain, Mother.", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "Is there any truth to this?", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Nothing proven yet, Mother dearest.", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "Why have you brought a child's fantasy here to tell, shopkeeper? Are you here to waste my time? That of my daughters?", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "No, your Majesty. Please take a look for yourself out of the window, Hiko is not making this up, I have seen the man for myself.", {image=self.satoru_avatar, talkSound=GAME.blop})
	Talkies.say("Chizue", "How absurd! Everyone knows the mountain is impossible to climb, shopkeeper, and clouds have always surrounded its peaks. In what way is your story reliable enough to believe?", {image=self.chizue_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Dear, are you fully certain of your claims? It is an absurd story. ", {image=self.kana_avatar, talkSound=GAME.blop, options={
		{"the clouds", function() self:clouds() end},
		{"the man", function() self:man() end},
		{"the disk", function() self:disk end},
	}})
end

function ThroneRoom:clouds()
	Talkies.say("Hiko", "Yes! I'm really telling the truth! The clouds around the mountain are weird and scary. Just look!!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Game", "* The Royals turn around to take a look.")
	Talkies.say("Royals", "...?", {talksound=GAME.blop})
	Talkies.say("Leiko", "Those are some weird clouds.", {image=self.leiko_img, talkSound=GAME.blop})
	Talkies.say("Hiko", "See!! And there was a man up there! I'm sure he's doing something to the clouds! ", {image=GAME.player.avatar, talkSound=GAME.blop})
	ThroneRoom:moreMessages()
end

function ThroneRoom:man()

	ThroneRoom:moreMessages()
end

function ThroneRoom:disk()

	ThroneRoom:moreMessages()
end

function ThroneRoom:moreMessages()
end