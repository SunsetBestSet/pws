require "entity"


DynamicEntity = Entity:extend()


function DynamicEntity:new(x, y, width, height, image, world, maxVelX, maxVelY, ent_name, mass)
  DynamicEntity.super.new(self, x, y, width, height, image, world, ent_name)
  self.direction = 1
end

--[[function DynamicEntity:checkCols(cols)
  --[[self.grounded = false
	for i,v in ipairs (cols) do
		if cols[i].normal.y == -1 then
			self.yVel = 0
			self.grounded = true
		elseif cols[i].normal.y == 1 then
			self.yVel = -self.yVel/4
		end
		if cols[i].normal.x ~= 0 then
			self.xVel = 0
		end
	end
end]]