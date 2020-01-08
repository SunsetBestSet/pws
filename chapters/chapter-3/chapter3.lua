Chapter3 = Object:extend()
require "chapters/chapter-3/scenes/scene1"
require "chapters/chapter-3/scenes/scene2"
require "chapters/chapter-3/scenes/scene3"
require "chapters/chapter-3/scenes/scene4"


function Chapter3:new()
  self.scene1 = Scene3_1()
  self.scene2 = Scene3_2()
  self.scene3 = Scene3_3()
  self.scene4 = Scene3_4()
  self.scene = 1

  self.leiko = love.graphics.newImage('assets/sprites/leiko.png')
	self.kana = love.graphics.newImage('assets/sprites/kana.png')
	self.character = love.graphics.newImage('assets/sprites/irene.png')
	self.hiko = love.graphics.newImage('assets/sprites/hiko.png')
  self.farmer = love.graphics.newImage('assets/sprites/farmer.png')
end

function Chapter3:loadEntities(object,GAME)
  if self.scene == 1 then
    self.scene1:loadEntities(object, GAME)
  elseif self.scene == 2 then
      self.scene2:loadEntities(object, GAME)
    elseif self.scene == 3 then
        self.scene3:loadEntities(object, GAME)
      elseif self.scene == 4 then
          self.scene4:loadEntities(object, GAME)
  end
  return GAME
end

function Chapter3:loadAssets(GAME)
  GAME.charImage = self.character
	GAME.npckanaImage = self.kana
	GAME.npcleikoImage = self.leiko
	GAME.npchikoImage = self.hiko
  GAME.npcfarmerImage = self.farmer
  return GAME
end

function Chapter3:manageCollisions(thisName, otherName, cols, i, GAME)
  if self.scene == 1 then
    self.scene1:manageCollisions(thisName, otherName, cols, i, GAME)
  elseif self.scene == 2 then
      self.scene2:manageCollisions(thisName, otherName, cols, i, GAME)
    elseif self.scene == 3 then
        self.scene3:manageCollisions(thisName, otherName, cols, i, GAME)
      elseif self.scene == 4 then
          self.scene4:manageCollisions(thisName, otherName, cols, i, GAME)
  end
  return GAME
end

function Chapter3:manageKeypresses(key, GAME)
  if self.scene == 1 then
    self.scene1:manageKeypresses(key, GAME)
  elseif self.scene == 2 then
      self.scene2:manageKeypresses(key, GAME)
    elseif self.scene == 3 then
        self.scene3:manageKeypresses(key, GAME)
      elseif self.scene == 4 then
          self.scene4:manageKeypresses(key, GAME)
  end
  return GAME
end

function Chapter3:loadLevel(GAME)
  if self.scene == 1 then
    self.scene1:loadLevel(GAME)
  elseif self.scene == 2 then
      self.scene2:loadLevel(GAME)
    elseif self.scene == 3 then
        self.scene3:loadLevel(GAME)
      elseif self.scene == 4 then
          self.scene4:loadLevel(GAME)
  end
end

function Chapter3:moreMessages(object, GAME)
  return GAME
end
