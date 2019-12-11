require "dynamic_entity"
require "game"

Player = DynamicEntity:extend();

function Player:new(x, y, width, height, image, world, maxVelX, maxVelY, speed, facing)
  Player.super.new(self, x, y, width, height, image, world, maxVelX, maxVelY, "ent_player", 2)
  self.origX = x
  self.origY = 15
  self.vertical_speed = speed * 0.85
  self.horizontal_speed = speed
  self.image = image
  self.facing = facing or "S"
  self.isMoving = false
  self.canMove = true
  self.avatar = love.graphics.newImage("assets/hiko.png")
  self.tempDistance = ""

  local g = anim8.newGrid(14, 22, image:getWidth(), image:getHeight())
  self.animationNorth = anim8.newAnimation(g('1-4',3), 0.1)
  self.animationEast = anim8.newAnimation(g('1-4',2), 0.1)
  self.animationSouth = anim8.newAnimation(g('1-4',1), 0.1)
  self.animationWest = anim8.newAnimation(g('1-4',2), 0.1):flipH()
end

function Player:update(dt)
  if not self.isMoving then
    if self.facing == "N" then
      self.animationNorth:gotoFrame(1)
    end
    if self.facing == "E" then
      self.animationEast:gotoFrame(1)
    end
    if self.facing == "S" then
      self.animationSouth:gotoFrame(1)
    end
    if self.facing == "W" then
      self.animationWest:gotoFrame(1)
    end
  end
end

function Player:draw()
  if self.facing == "N" then
    self.animationNorth:draw(self.image, self.x, self.y)
  elseif self.facing == "E" then
    self.animationEast:draw(self.image, self.x, self.y)
  elseif self.facing == "S" then
    self.animationSouth:draw(self.image, self.x, self.y)
  elseif self.facing == "W" then
    self.animationWest:draw(self.image, self.x, self.y)
  end
end

function Player:checkCols(cols)
  Player.super:checkCols(cols)
end

function Player:updateAnimations(dt)
  self.animationNorth:update(dt)
  self.animationEast:update(dt)
  self.animationSouth:update(dt)
  self.animationWest:update(dt)
end

function Player:moveRight(dt)
  self.x = math.floor(self.x + self.horizontal_speed * dt)
  self.facing = "E"
  self:updateAnimations(dt)
  if game.interact then
    game.interact = false
  end
end

function Player:moveLeft(dt)
  self.x = math.floor(self.x - self.horizontal_speed * dt)
  self.facing = "W"
  self:updateAnimations(dt)
  if game.interact then
    game.interact = false
  end
end

function Player:moveDown(dt)
  self.y = math.floor(self.y + self.vertical_speed * 1.25 * dt)
  self.facing = "S"
  self:updateAnimations(dt)
  if game.interact then
    game.interact = false
  end
end

function Player:moveUp(dt)
  self.y = math.floor(self.y - self.vertical_speed * dt)
  self.facing = "N"
  self:updateAnimations(dt)
  if game.interact then
    game.interact = false
  end
end
