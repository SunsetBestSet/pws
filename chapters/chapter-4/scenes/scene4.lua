Scene4_4 = Object:extend()

function Scene4_4:new()
	self.kana = {avatar = love.graphics.newImage("assets/kana.png")}
	self.irene = {avatar = love.graphics.newImage("assets/irene.png")}
	self.hiko = {avatar = love.graphics.newImage("assets/hiko.png")}
	self.leiko = {avatar = love.graphics.newImage("assets/leiko.png")}
end

function Scene4_4:loadEntities(object, GAME, map)
	if object.name == "kana_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.chapter4.character, GAME.world, 200, 64, 200, "N")
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "leiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.leiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "irene_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.irene, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "hiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.hiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "north_exit" then
		local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door)
	elseif object.name == "fairy_encounter" then
		self.yokai = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_yokai")
	end
end

function Scene4_4:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_door" then 
		GAME.level = cols[i].other.nextMap
		GAME.chapter4.scene = 5
		GAME:loadLevel()
	elseif thisName == "ent_player" and otherName == "ent_yokai" then 
		GAME.battle:initiate(nil, 2, enemies[1])
		GAME.world:remove(self.yokai)
	end
end

function Scene4_4:manageKeypresses(key, GAME)
	if key == "space" then Talkies.onAction() end
end

function Scene4_4:loadLevel(GAME)
	Talkies.say("Hiko (scared)", "Be careful... You might encounter Yokai!", {image=self.hiko.avatar, talkSound=GAME.blop})
end