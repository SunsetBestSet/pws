Scene4 = Object:extend()

function Scene4:new()
end

function Scene4:loadEntities(object, GAME, map)
	if GAME.level == "maps/town.lua" then 
		GAME.town:loadEntities(object, GAME, map)
	elseif GAME.level == "maps/scene1.lua" then 
		GAME.houseirene:loadEntities(object, GAME, map)
	elseif GAME.level == "maps/shop.lua" then 
		GAME.shop:loadEntities(object, GAME, map)
	end
end

function Scene4:manageCollisions(thisName, otherName, cols, i, GAME)
	if GAME.level == "maps/town.lua" then 
		GAME.town:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif GAME.level == "maps/scene1.lua" then 
		GAME.houseirene:manageCollisions(thisName, otherName, cols, i, GAME)
	elseif GAME.level == "maps/shop.lua" then 
		GAME.shop:manageCollisions(thisName, otherName, cols, i, GAME)
	end
end

function Scene4:manageKeypresses(key, GAME)
	if GAME.level == "maps/town.lua" then 
		GAME.town:manageKeypresses(key, GAME)
	elseif GAME.level == "maps/scene1.lua" then 
		GAME.houseirene:manageKeypresses(key, GAME)
	elseif GAME.level == "maps/shop.lua" then 
		GAME.shop:manageKeypresses(key, GAME)
	elseif GAME.level == "maps/town.lua" then 
		GAME.town:manageKeypresses(key, GAME)
	end
end

function Scene4:loadLevel(GAME)
	Talkies.say("Hiko (thinking)", "Now I can use my binoculars to look at the mountain from my treehouse!", {image=GAME.player.avatar, talkSound=GAME.blop,})
end