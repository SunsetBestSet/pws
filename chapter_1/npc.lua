Nonplayable = DynamicEntity:extend()

function Nonplayable:new(x, y, width, height, image, world, maxVelX, maxVelY, speed, facing) 
Nonplayable.super.new(self, x, y, width, height, image, world, maxVelX, maxVelY, "ent_npc", 2)
  self.origX = x
  self.origY = 15
  self.speed = speed
  self.image = image
  self.facing = facing or "N"
  self.isMoving = false
  self.canMove = true
  self.avatar = love.graphics.newImage("assets/irene.png")
  
  self.tempDistance = ""

  local g = anim8.newGrid(14, 22, image:getWidth(), image:getHeight())
  self.animationNorth = anim8.newAnimation(g('1-4',1), 0.1)
  self.animationEast = anim8.newAnimation(g('1-4',2), 0.1)
  self.animationSouth = anim8.newAnimation(g('1-4',3), 0.1)
  self.animationWest = anim8.newAnimation(g('1-4',2), 0.1):flipH()
end

function Nonplayable:update(dt)
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

function Nonplayable:draw()
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

function Nonplayable:checkCols(cols)
  Player.super:checkCols(cols)
end

function Nonplayable:updateAnimations(dt)
  self.animationNorth:update(dt)
  self.animationEast:update(dt)
  self.animationSouth:update(dt)
  self.animationWest:update(dt)
end