require "dynamic_entity"

Player = DynamicEntity:extend();

function Player:new(x, y, width, height, image, world, maxVelX, maxVelY, speed)
  Player.super.new(self, x, y, width, height, image, world, maxVelX, maxVelY, "ent_player", 2)
  self.origX = x
  self.origY = 15
  self.speed = speed
  self.image = image
  self.facing = "S"
  self.isMoving = false
  
  self.tempDistance = ""
  
  local g = anim8.newGrid(16, 24, image:getWidth(), image:getHeight())
  self.animationNorth = anim8.newAnimation(g('1-9',1), 0.1)
  self.animationEast = anim8.newAnimation(g('1-9',2), 0.1)
  self.animationSouth = anim8.newAnimation(g('1-9',3), 0.1)
  self.animationWest = anim8.newAnimation(g('1-9',2), 0.1):flipH()
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
  love.graphics.print(self.facing, 100, 100)
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
  self.x = self.x + self.speed * dt
  self.facing = "E"
  self:updateAnimations(dt)
end

function Player:moveLeft(dt)
  self.x = self.x - self.speed * dt
  self.facing = "W"
  self:updateAnimations(dt)
end

function Player:moveDown(dt)
  self.y = self.y + self.speed * dt
  self.facing = "S"
  self:updateAnimations(dt)
end

function Player:moveUp(dt)
  self.y = self.y - self.speed * dt
  self.facing = "N"
  self:updateAnimations(dt)
end