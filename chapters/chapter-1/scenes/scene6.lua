Scene6 = Object:extend()

function Scene6:new()
end

function Scene6:loadEntities(object, GAME, map)
	GAME.town:loadEntities(object, GAME, map)
end

function Scene6:manageCollisions(thisName, otherName, cols, i, GAME)
	GAME.town:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene6:manageKeypresses(key, GAME)
	GAME.town:manageKeypresses(key, GAME)
end

function Scene6:loadLevel(GAME)
	Talkies.say("Satoru", "Let's go, my child.", {image=self.satoru_avatar, talkSound=GAME.blop, oncomplete= function() self:startScene7(GAME) end})
end

function Scene6:startScene7(GAME)
	GAME:doBlackScreen("in")
	GAME.doFadeOut = true
	GAME.chapter1.scene = 7
end