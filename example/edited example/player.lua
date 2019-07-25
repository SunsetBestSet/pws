require "dynamic_entity"

Player = DynamicEntity:extend();

function Player:new(x, y, width, height, image, world, maxVelX, maxVelY, speed)
  Player.super.new(self, x, y, width, height, image, world, maxVelX, maxVelY, "ent_player", 2)
  self.origX = x;
  self.origY = 15;
  self.speed = speed
  self.image = image;
  self.isGripping = false;
  self.grippedEntity = nil;
  self.origMaxVel = maxVelX;
  self.facing = "S";
  
  self.tempDistance = ""
  
  local g = anim8.newGrid(16, 24, image:getWidth(), image:getHeight())
  self.animationNorth = anim8.newAnimation(g('1-9',1), 0.1)
  self.animationEast = anim8.newAnimation(g('1-9',2), 0.1)
  self.animationSouth = anim8.newAnimation(g('1-9',3), 0.1)
  self.animationWest = anim8.newAnimation(g('1-9',2), 0.1):flipH()
end

function Player:update(dt)
  self.animationNorth:update(dt)
  self.animationEast:update(dt)
  self.animationSouth:update(dt)
  self.animationWest:update(dt)
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

--[[function Player:isEntityGrippable(entity)
  local yReq = math.abs(entity.h - self.h) + 3
  local xReq = math.abs(entity.w / 2 + self.w / 2) + 5
  local xDiff = entity.x - self.x;
  local yDiff = entity.y - self.y;

  if entity.name == "ent_crate" then  
    if ((self.direction > 0 and xDiff < 0) or (self.direction < 0 and xDiff > 0)) then
      return false
    end
  end

  if entity.name == "ent_crate" and math.abs(yDiff) <= yReq and math.abs(xDiff) <= xReq and self.grounded then
    return true;
  end
end]]

function Player:updateAnimations(dt)
  --[[self.animationNorth:update(dt)
  self.animationEast:update(dt)
  self.animationSouth:update(dt)
  self.animationWest:update(dt)]]
end

function Player:moveRight(dt)
  self.x = self.x + self.speed * dt
  self.facing = "E"
  self.updateAnimations(dt)
end

function Player:moveLeft(dt)
  self.x = self.x - self.speed * dt
  self.facing = "W"
  self.updateAnimations(dt)
end

function Player:moveDown(dt)
  self.y = self.y + self.speed * dt
  self.facing = "S"
  self.updateAnimations(dt)
end

function Player:moveUp(dt)
  self.y = self.y - self.speed * dt
  self.facing = "N"
  self.updateAnimations(dt)
end