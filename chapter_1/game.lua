Game = Object:extend()

function Game:new()
	self.level = "maps/scene1.lua"
	self.entities = {}
	self.debug = {}
	self.player = {}
	self.interact = false
	self.debugFont = love.graphics.newFont("assets/fonts/monogram_extended.ttf", 20)
	self.blop = love.audio.newSource("assets/talk.wav", "static")
	self.stop = false
	self.camera = Camera()
	self.camera:setFollowStyle('TOPDOWN_TIGHT')
	self.interact_bed_hiko = false
	self.interact_bed_irene = false
	self.characters = require 'characters'
	self.chapter1 = Chapter1()
	self.chapter = 1
	self.black = {colour={0,0,0,0}, width=love.graphics.getWidth(), height=love.graphics.getHeight()}
	self.fadeInBlack = tween.new(1, self.black, {colour={0, 0, 0, 1}}, 'inQuad')
	self.fadeOutBlack = tween.new(1, self.black, {colour={0, 0, 0, 0}}, 'outQuad')
	
	self:loadLevel()

end

function Game:setupPhysics()
	self.world = bump.newWorld()
end

function Game:loadLevel()

	self.entities = {}
	self:setupPhysics()
	self.map = sti(self.level, { "bump" })
	self.map:bump_init(self.world)
	self = self.chapter1:loadAssets(self)
	for k, object in pairs(self.map.objects) do
		self = self.chapter1:loadEntities(object, self)
	end

	self.map:removeLayer("Objects")
	self.map:removeLayer("custom_collisions")
	self.stop = true
end



function Game:checkCols(entity, cols)

	local thisName = entity.name;
	
	for i,v in ipairs (cols) do

		local otherName = cols[i].other.name;
		if self.chapter == 1 then
		self = self.chapter1:manageCollisions(thisName, otherName, cols, i, self)
		end
	end

end

function Game:tween(dt)
	
end

function Game:manageKeypresses(key)

	if self.chapter == 1 then 
		self = self.chapter1:manageKeypresses(key, self)
	end

end

function Game:update(dt)

	self.map:update(dt)
	self:manageKeyboard(dt)
	
	for i=1, #self.entities do
		self.entities[i].x, self.entities[i].y, cols = self.world:move( self.entities[i], self.entities[i].x, self.entities[i].y )
		self:checkCols(self.entities[i], cols)
		if self.stop then 
			self.stop = false
			return
		end
	end

	
	self.player:update(dt)

	self.camera:update(dt)
	self.camera:follow(self.player.x + love.graphics.getWidth() / 4, self.player.y + love.graphics.getHeight() / 4)

	if Talkies.isOpen() then
		self.player.canMove = false
	else
		self.player.canMove = true
	end


end

function Game:manageKeyboard(dt)

	local x, y = self.player.x, self.player.y

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
	local tx, ty = self.camera.x - love.graphics.getWidth() / 2, self.camera.y - love.graphics.getHeight() / 2

	tx = math.floor(tx)
	ty = math.floor(ty)
	self.map:draw(-tx, -ty)
	self.camera:attach()
	for i=1,#self.entities do
		self.entities[i]:draw()
	end
	
	-- debug information
	--self.map:bump_draw(self.world, -tx, -ty)
	self.camera:detach()
	self.camera:draw()

	love.graphics.setFont(self.debugFont)
	love.graphics.print(self.player.x,0,12)
	love.graphics.print(self.player.y,0,24)
	love.graphics.print(self.player.facing, 0, 36)
	love.graphics.print(tostring(self.interact), 0, 48)

end

