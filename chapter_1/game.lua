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
	
	self:loadAssets()
	self:loadLevel()
end

function Game:loadAssets()
	self.charImage = love.graphics.newImage('assets/sprites/link.png')
	self.npcImage = love.graphics.newImage('assets/sprites/npc.png')
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
			self.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, self.charImage, self.world, 200, 64, 200)
			table.insert(self.entities, self.player)
		elseif object.name == "irene_spawn" then
			self.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.npcImage, self.world, 200, 64, 200)
			table.insert(self.entities, self.npc)
		elseif object.name == "door" then
			local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, self.world, "ent_door")
			door.nextMap = object.properties.nextMap;
			table.insert(self.entities, door)
		elseif object.name == "bed_hiko" then
			local bed_hiko = Entity(math.floor(object.x), math.floor(object.y), 16, math.floor(object.height), nil, self.world, "ent_bed_hiko")
			table.insert(self.entities, bed_hiko)
		elseif object.name == "bed_irene" then
			local bed_hiko = Entity(math.floor(object.x), math.floor(object.y), 16, 32, nil, self.world, "ent_bed_irene")
			table.insert(self.entities, bed_irene)
		end
	end
	
	--self.map:removeLayer("Objects")
	self.map:removeLayer("custom_collisions")
	self.stop = true
end



function Game:checkCols(entity, cols)

	local thisName = entity.name;
	
	for i,v in ipairs (cols) do

		local otherName = cols[i].other.name;
		
		if thisName == "ent_player" and otherName == "ent_npc" then
			self.interact = true
		elseif thisName == "ent_player" and otherName == "ent_door" and self.player.facing == "N" then
			if self.scene1Unlocked or self.level == "maps/town.lua" then
				self.level = cols[i].other.nextMap
				self:loadLevel()
			elseif self.level == "maps/scene1.lua" then
				Talkies.say("Hiko", "I should tell her about the cloud...", {image=self.player.avatar, talkSound=self.blop,})
			end
		elseif thisName == "ent_player" and otherName == "ent_bed_hiko" then
			Talkies.say("Hiko", "I'm not tired right now.", {image=self.player.avatar, talkSound=self.blop,})
		elseif thisName == "ent_player" and otherName == "ent_bed_irene" then
			Talkies.say("Hiko", "That's not my bed.", {image=self.player.avatar, talkSound=self.blop,})
		end
		
	end

end

function Game:manageKeypresses(key)

	if (key == 'space') and self.interact and self.level == "maps/scene1.lua" and not self.scene1Unlocked then
		Talkies.say("Hiko", "Irene!!!! What's that cloud??!! What's that cloud??!!", {image=self.player.avatar, talkSound=self.blop,})
		Talkies.say("Irene", "...be silent Hiko.", {image=self.npc.avatar, talkSound=self.blop,})
		Talkies.say("Hiko", "But Irene, it's so weird! And purple, and dark, and... and it looks evil!!", {image=self.player.avatar, talkSound=self.blop,})
		Talkies.say("Irene", "Hiko... *sighs* I told you already- I'm working on some important spells. I need to concentrate...", {image=self.npc.avatar, talkSound=self.blop,})
		Talkies.say("Hiko", "But,--Irene!!! It looks evil and scary! What if something bad is going on?!", {image=self.player.avatar, talkSound=self.blop,})
		Talkies.say("Irene", "Hiko! Don't you see I'm busy?? Go play outside or something.", {image=self.npc.avatar, talkSound=self.blop,})
		self.interact = false
		self.scene1Unlocked = true
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