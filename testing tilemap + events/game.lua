Game = Object:extend();
Talkies = require("libs/talkies")

function Game:new()
  self.level = "maps/dungeon_1.lua"
  self.entities = {}
  self.debug = {}
  self.player = {}
  self.interact = false
  
  self:loadAssets()
  self:loadLevel()
  
end

function Game:loadAssets()
  self.charImage = love.graphics.newImage('assets/sprites/link.png')
end

function Game:setupPhysics()
  self.world = bump.newWorld()
end

function Game:loadLevel()
  self.entities = {}
  self:setupPhysics();
  self.map = sti(self.level, { "bump" })
	self.map:bump_init(self.world)
  
  for k, object in pairs(self.map.objects) do
    if object.name == "player_spawn" then
      self.player = Player(object.x, object.y, 16, 24, self.charImage, self.world, 200, 64, 250)
      table.insert(self.entities, self.player)
    elseif object.name == "level_end" then
      local level_end = Entity(object.x, object.y, 16, 16, nil, self.world, "ent_level_end")
      level_end.nextMap = object.properties.next_map;
      table.insert(self.entities, level_end)
    elseif object.name == "character" then
      local character = Entity(object.x, object.y, 16, 16, nil, self.world, "ent_character")
      table.insert(self.entities, character)
    end
  end
  
  self.map:removeLayer("Objects")
  self.map:removeLayer("custom_colliders")
end


function Game:checkCols(entity, cols)
  local thisName = entity.name;
  
	for i,v in ipairs (cols) do
    local otherName = cols[i].other.name;
    
    if thisName == "ent_player" and otherName == "ent_level_end" then
      self.level = cols[i].other.nextMap
      self:loadLevel();
    elseif thisName == "ent_player" and otherName == "ent_character" then
      self.interact = true
    end
    
	end
end

function Game:manageKeypresses(key)
  if key == 'return' and self.interact then 
    print('hi!')
    Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption() 
  elseif key == "space" then Talkies.onAction() end
end

function Game:update(dt)
  self.map:update(dt)
  self:manageKeyboard(dt);
  
  for i=1,#self.entities do
    self.entities[i].x, self.entities[i].y, cols = self.world:move( self.entities[i], self.entities[i].x, self.entities[i].y )
    self:checkCols(self.entities[i], cols)
  end
  
  self.player:update(dt)
  Talkies.update(dt)
end
 
function Game:manageKeyboard(dt)
  
  if love.keyboard.isDown( "d" ) then
		self.player:moveRight(dt)
    self.player.isMoving = true
	
  elseif love.keyboard.isDown("a") then
		self.player:moveLeft(dt)
    self.player.isMoving = true
	
  end
  
  if love.keyboard.isDown("w") then
    self.player:moveUp(dt)
    self.player.isMoving = true
  
  elseif love.keyboard.isDown("s") then
    self.player:moveDown(dt)
    self.player.isMoving = true
  
  end
  
  if not (love.keyboard.isDown( "w" ) or love.keyboard.isDown( "a" ) or love.keyboard.isDown( "s" ) or love.keyboard.isDown( "d" )) then
    self.player.isMoving = false
  end 

end



function Game:draw()

  --love.graphics.setColor( 255,255,255,255 )
	--map:setDrawRange(0, 0, 800, 600)
	self.map:draw()
  --love.graphics.setColor( 255, 93, 0,255 )
	--love.graphics.rectangle( "fill",player.x,player.y,player.w,player.h )
	--love.graphics.setColor(255, 255, 0, 255)
	self.map:bump_draw(self.world)
	--love.graphics.print(self.player.yVel..self.debug..tostring(self.player.grounded))
	love.graphics.print(self.player.x,0,12)
	love.graphics.print(self.player.y,0,24)
  love.graphics.print(self.player.facing, 0, 36)
  
	debug = " "
  
  for i=1,#self.entities do
    self.entities[i]:draw()
  end
  Talkies.draw()
end