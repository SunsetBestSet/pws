Town = Object:extend()

function Town:new()
	self.interact_binoculars =
end

function Town:loadEntities(object, GAME, map)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "door_house" then
		local door_house = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_housedoor")
		door_house.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door_house)
	elseif object.name == "door_shop" then
		local door_shop = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_shopdoor")
		door_shop.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door_shop)
	end
end

function Town:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_shopdoor" and GAME.player.facing == "N" then
		GAME.level = cols[i].other.nextMap
		GAME.chapter1.scene = 3
		GAME:loadLevel()
	elseif thisName == "ent_player" and otherName == "ent_housedoor" and GAME.player.facing == "N" then
		GAME.level = cols[i].other.nextMap
		GAME:loadLevel()
	end
end

function Town:manageKeypresses(key, GAME)
end