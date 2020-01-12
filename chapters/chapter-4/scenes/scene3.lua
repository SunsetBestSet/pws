Scene4_3 = Object:extend()

function Scene4_3:new()
	self.kana = {avatar = love.graphics.newImage("assets/kana.png")}
	self.irene = {avatar = love.graphics.newImage("assets/irene.png")}
	self.hiko = {avatar = love.graphics.newImage("assets/hiko.png")}
	self.leiko = {avatar = love.graphics.newImage("assets/leiko.png")}
end

function Scene4_3:loadEntities(object, GAME, map)
	GAME.location = "Mountain Village"
	if object.name == "kana_spawn2" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.chapter4.character, GAME.world, 200, 64, 200, "N")
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "leiko_spawn2" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.leiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "irene_spawn2" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.irene, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "hiko_spawn2" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.hiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "north_exit" then
		local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door)
	end
end

function Scene4_3:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_door" and GAME.chapter4.scene == 3 then
		GAME.level = cols[i].other.nextMap
		GAME.chapter4.scene = 4
		GAME:loadLevel()
	end
end

function Scene4_3:manageKeypresses(key, GAME)
	if key == "space" then Talkies.onAction() end
end

function Scene4_3:loadLevel(GAME)
	Talkies.say("Kana", "Okay. Time to go...", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Ready everyone?", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "YES!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "Yeah.", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Absolutely.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Okay Kana, take the lead!", {image=self.leiko.avatar, talkSound=GAME.blop})
end
