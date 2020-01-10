Scene4_1 = Object:extend()

function Scene4_1:new()
	self.player = {
		avatar = love.graphics.newImage("assets/irene.png")
	}

end

function Scene4_1:loadEntities(object, GAME, map)
    if object.name == "kana_spawn" then
      GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.chapter4.character, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.player)
    elseif object.name == "leiko_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.leiko, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    elseif object.name == "irene_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.irene, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    elseif object.name == "hiko_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.hiko, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    end
end

function Scene4_1:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene4_1:manageKeypresses(key, GAME)
  if key == "space" then Talkies.onAction() end
end

function Scene4_1:loadLevel(GAME)
  GAME.music.town:stop()
  GAME.music.ch3:stop()
  GAME.music.mountain:play()
  GAME.interact = false
end

function Scene4_1:startScene2(GAME)
  GAME:doBlackScreen("in")
  GAME.doFadeOut = true
  GAME.chapter3.scene = 2
  GAME.music.town:stop()
end
