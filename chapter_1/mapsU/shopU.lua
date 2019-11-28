Shop = Object:extend()

function Shop:new()
	self.nao_img = love.graphics.newImage('assets/sprites/nao.png')
	self.satoru_img = love.graphics.newImage('assets/sprites/satoru.png')
	self.satoru_avatar = love.graphics.newImage('assets/satoru.png')
	self.nao_avatar = love.graphics.newImage('assets/nao.png')
end

function Shop:loadEntities(object, GAME, map)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
		GAME.player.canMove = false
	elseif object.name == "nao_spawn" then 
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.nao_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "satoru_spawn" then 
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.satoru_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "door" then 
		local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door)
	end
end

function Shop:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_door" then
		GAME.level = cols[i].other.nextMap
		if GAME.chapter1.scene == 3 then GAME.chapter1.scene = 4 end
		GAME.exitThrough = "shop_town"
		GAME:loadLevel()
	end
end

function Shop:manageKeypresses(key, GAME)
end