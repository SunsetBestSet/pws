Town = Object:extend()

function Town:new()
	self.interact_binoculars = false
	self.satoru_img = love.graphics.newImage('assets/sprites/satoru.png')
	self.satoru_avatar = love.graphics.newImage('assets/satoru.png')
end

function Town:loadEntities(object, GAME, map, scene4)
	if object.name == "player_spawn_shop" and GAME.exitThrough == "shop_town" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "player_spawn" and GAME.exitThrough == "irene_house_town" then
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
	elseif object.name == "treehouse" then
		local treehouse = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_treehouse")
		table.insert(GAME.entities, treehouse)
	elseif GAME.chapter1.scene == 6 and object.name == "satoru_spawn" then 
		local satoru = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.satoru_img, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, satoru)
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
	elseif thisName == "ent_player" and otherName == "ent_treehouse" then 
		self.interact_binoculars = true
	end
end

function Town:manageKeypresses(key, GAME)
	if key == 'space' and self.interact_binoculars then 
		if GAME.chapter1.scene == 2 then
			Talkies.say(
				"Game", 
				"Do you want to take a look?", 
				{
					options= 
					{
						{"Yes", function() self:startScene5(GAME) end},
						{"No", function () end}
					}
				}
				)
		else 
			Talkies.say("Game", "What a nice tree house!")
		end
		self.interact_binoculars = false
	end
	if key == "space" then Talkies.onAction()
	elseif key == "up" then Talkies.prevOption()
	elseif key == "down" then Talkies.nextOption()
	end
end

function Town:startScene5(GAME)
	GAME:doBlackScreen("in", "alert")
	GAME.doFadeOut = true
	GAME.chapter1.scene = 5
end