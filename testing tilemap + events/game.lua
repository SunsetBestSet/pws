Game = Object:extend()

function Game:new()
	self.level = "maps/dungeon_1.lua"
	self.entities = {}
	self.debug = {}
	self.player = {}
	self.interact = false
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 20)
	
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
	self:setupPhysics()
	self.map = sti(self.level, { "bump" })
	self.map:bump_init(self.world)
	
	for k, object in pairs(self.map.objects) do
		if object.name == "player_spawn" then
			self.player = Player(object.x, object.y, 16, 24, self.charImage, self.world, 200, 64, 200)
			table.insert(self.entities, self.player)
		elseif object.name == "level_end" then
			local level_end = Entity(object.x, object.y, 16, 16, nil, self.world, "ent_level_end")
			level_end.nextMap = object.properties.next_map
			table.insert(self.entities, level_end)
		elseif object.name == "character" then
			local character = Entity(object.x, object.y, object.width, object.height, nil, self.world, "ent_character")
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
			print(cols[i].other.nextMap)
			self.level = cols[i].other.nextMap
			self:loadLevel()
		end

		if thisName == "ent_player" and otherName == "ent_character" then
			self.interact = true
		else 
			self.interact = false
		end
		
	end

end

function Game:manageKeypresses(key)

	if (key == 'space' and self.interact) then
		Talkies.say("hi", "hello")
		self.interact = false
	elseif key == "space" then 
		Talkies.onAction() 
	elseif key == "return" then
		for i, entity in pairs(self.map.objects) do
			print(entity.name)
			print("hello!")
		end
	end

end

function Game:update(dt)

	self.map:update(dt)
	self:manageKeyboard(dt)

	for i=1,#self.entities do
		self.entities[i].x, self.entities[i].y, cols = self.world:move( self.entities[i], self.entities[i].x, self.entities[i].y )
		self:checkCols(self.entities[i], cols)
	end

	self.player:update(dt)
	if Talkies.isOpen() then
		self.player.canMove = false
	else
		self.player.canMove = true
	end

end

function Game:manageKeyboard(dt)

	local xA, yA, xB, yB -- player -> A and character -> B

	if self.interact then

		xA = self.player.x
		yA = self.player.y

	end

	if self.player.canMove then

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

	end

	if not (love.keyboard.isDown( "w" ) or love.keyboard.isDown( "a" ) or love.keyboard.isDown( "s" ) or love.keyboard.isDown( "d" )) then
		self.player.isMoving = false
	end

end

function Game:draw()
	self.map:draw()
	for i=1,#self.entities do
		self.entities[i]:draw()
	end
	-- debug information
	self.map:bump_draw(self.world)
	love.graphics.setFont(self.debugFont)
	love.graphics.print(self.player.x,0,12)
	love.graphics.print(self.player.y,0,24)
	love.graphics.print(self.player.facing, 0, 36)
	love.graphics.print(tostring(self.interact), 0, 48)

end