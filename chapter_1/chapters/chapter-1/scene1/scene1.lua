Scene1 = Chapter1:extend()

function Scene1:new()
	Scene1.super.new(self, game.characters.hiko)
end

function Scene1:loadEntities()
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