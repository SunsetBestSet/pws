Scene4_2 = Object:extend()

function Scene4_2:new()
	self.kana = {avatar = love.graphics.newImage("assets/kana.png")}
	self.satoru = {avatar = love.graphics.newImage("assets/satoru.png")}
	self.leiko = {avatar = love.graphics.newImage("assets/leiko.png")}
end

function Scene4_2:loadEntities(object, GAME, map)
	if object.name == "kana_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.chapter4.character, GAME.world, 200, 64, 200, "N")
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "leiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.leiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "satoru_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.satoru, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "door" then
		local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door)
	end
end

function Scene4_2:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_door" then 
		GAME.level = cols[i].other.nextMap
		GAME.chapter4.scene = 3
		GAME:loadLevel()
	end
end

function Scene4_2:manageKeypresses(key, GAME)
	if key == "space" then Talkies.onAction() end
end

function Scene4_2:loadLevel(GAME)
	Talkies.say("Leiko", "Satoru?????", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "This is my shop. I work here.", {image=self.satoru.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "I can see that but-", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "Is there anything you would like to buy?", {image=self.satoru.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "No. We want to know how to get to the top of the mountain. *coughs*", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "How am I supposed to know that?", {image=self.satoru.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "You're *supposed* to be the wise gu-", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Please shopkeeper, you must know something!", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "Well... Have you tried going north?", {image=self.satoru.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Can't. There's fences.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Satoru", "Well... If you go West enough at the north of the village, there is a small spot without any fences.", {image=self.satoru.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Thank you!!! Let's go Kana!", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (struggling to speak)", "Yeah, let's go...", {image=self.kana.avatar, talkSound=GAME.blop})
end