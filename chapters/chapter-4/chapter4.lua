Chapter4 = Object:extend()
require "chapters/chapter-4/scenes/scene1"


function Chapter4:new()
  self.scene1 = Scene4_1()
  self.scene = 1

  self.character = love.graphics.newImage('assets/sprites/kana.png')
  self.leiko = love.graphics.newImage('assets/sprites/leiko.png')
  self.irene = love.graphics.newImage('assets/sprites/irene.png')
  self.hiko = love.graphics.newImage('assets/sprites/hiko.png')
end

function Chapter4:loadEntities(object,GAME)
  if self.scene == 1 then
    self.scene1:loadEntities(object, GAME)
  elseif self.scene == 2 then
    self.scene1:loadEntities(object, GAME)
  end
  return GAME
end

function Chapter4:loadAssets(GAME)
  GAME.charImage = self.character
  GAME.npcireneImage = self.irene
  GAME.npcleikoImage = self.leiko
  GAME.npchikoImage = self.hiko
  return GAME
end

function Chapter4:manageCollisions(thisName, otherName, cols, i, GAME)
  if self.scene == 1 then
    self.scene1:manageCollisions(thisName, otherName, cols, i, GAME)
  elseif self.scene == 2 then
    self.scene1:manageCollisions(thisName, otherName, cols, i, GAME)
  end
  return GAME
end

function Chapter4:manageKeypresses(key, GAME)
  if self.scene == 1 then
    self.scene1:manageKeypresses(key, GAME)
  elseif self.scene == 2 then
    self.scene1:manageKeypresses(key, GAME)
  end
  return GAME
end

function Chapter4:loadLevel(GAME)
  if self.scene == 1 then
    self.scene1:loadLevel(GAME)
  elseif self.scene == 2 then
    self.scene1:loadLevel(GAME)
  end
end

function Chapter4:moreMessages(object, GAME)
  return GAME
end
