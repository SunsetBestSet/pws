Scene72 = Object:extend()

function Scene72:new()
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

function Scene72:loadEntities(object, GAME, map)
	GAME.location = "Throne Room"
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200, "N")
		table.insert(GAME.entities, GAME.player)
		GAME.player.canMove = false
	elseif object.name == "kana_spawn_2" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.kana_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "leiko_spawn_2" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.leiko_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "satoru_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.satoru_img, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	end
end

function Scene72:manageCollisions(thisName, otherName, cols, i, GAME)
	GAME.throne_room:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene72:manageKeypresses(key, GAME)
	GAME.throne_room:manageKeypresses(key, GAME)
end

function Scene72:loadLevel(GAME)
	Talkies.say("Kana", "Dear-", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "It's Hiko!!!", {image=GAME.player.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "-Hiko, where are your parents? Are they aware you are here, in the palace?", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "We were in too much of a hurry to tell his sister, your Highness.", {image=self.satoru_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Well, Shopkeeper, escort Hiko back to his home, will you? I'll send one of the royal guards with you-", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Actually, I have some things to ask him, if you don't mind.", {image=self.leiko_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Don't you think he should go home first? I imagine his family must be looking for him.", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "It's important.", {image=self.leiko_avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Very well then. Shopkeeper be kind and notify his family for us.", {image=self.kana_avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "I will, your Highness.", {image=self.satoru_avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "You. Hiko. Come with me.", {image=self.leiko_avatar, talkSound=GAME.blop, oncomplete= function() self:startScene8(GAME) end})
end

function Scene72:startScene8(GAME)
	GAME:doBlackScreen("in")
	GAME.doFadeOut = true
	GAME.chapter1.scene = 8
end
