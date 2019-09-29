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

	-- Load Chapters
	self.chapter1 = Chapter1()
	self.chapter2 = Chapter2()
	self.chapter3 = Chapter3()
	self.chapter4 = Chapter4()
	
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
		if self.chapter == 1 then 
			self.chapter1:loadEntities()
		elseif self.chapter == 2 then 
			self.chapter2:loadEntities()
		elseif self.chapter == 3 then 
			self.chapter3:loadEntities()
		elseif self.chapter == 4 then 
			self.chapter4:loadEntities()
		end
	end
	
	self.map:removeLayer("Objects")
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
			self.interact_bed_hiko = true
		elseif thisName == "ent_player" and otherName == "ent_bed_irene" then
			self.interact_bed_irene = true
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
	elseif key == "space" and self.interact_bed_hiko then
		Talkies.say("Hiko", "I'm not tired right now.", {image=self.player.avatar, talkSound=self.blop,})
		self.interact_bed_hiko = false
	elseif key == "space" and self.interact_bed_irene then
		Talkies.say("Hiko", "That's not my bed.", {image=self.player.avatar, talkSound=self.blop,})
		self.interact_bed_irene = false
	elseif key == "space" then
		Talkies.onAction() 
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