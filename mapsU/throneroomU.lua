ThroneRoom = Object:extend()

function ThroneRoom:new()

end

function ThroneRoom:loadEntities(object, GAME, map)
GAME.location = "Throne Room"
end

function ThroneRoom:manageKeypresses(key, GAME)
	if key == "space" then Talkies.onAction()
	elseif key == "up" then Talkies.prevOption()
	elseif key == "down" then Talkies.nextOption()
	end
end

function ThroneRoom:manageCollisions(thisName, otherName, cols, i, GAME)

end

function ThroneRoom:loadLevel(GAME)

end
