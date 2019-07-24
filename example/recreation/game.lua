Game = Object:extend()

function Game:new()
	self.level = "maps/test_map.lua"
	self.entities = {}
	self.debug = {}
	self.player = {}

	self:loadAssets()
	self.loadLevel()
end

function Game:loadAssets()
	self.charImage = love.graphics.newImage('sprites/main_char.png')
end

function Game:loadLevel()
	self.entities = {}
	self:setupPhysics()

	self.map = sti(self.level, { "bump" })
	self.map:bump_init(self.world)

	for k, object in pairs(self.map.objects) do
		if object.name == "player_spawn" then
			self.player = Player(object.x, object.y, 28, 49, self.charImage, self.world, 200, 64, 100)
		end

		self.map:removeLayer("Objects")
	end
end

function Game:setupPhysics()
	self.world = bump.newWorld()
end

