Scene2_1 = Object:extend()

function Scene2_1:new()
	self.player = {
		avatar = love.graphics.newImage("assets/leiko.png")
	}
end

function Scene2_1:loadEntities(object, GAME)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
	end
end

function Scene2_1:loadLevel(GAME)
	GAME.player.canMove = false
	GAME.player.facing = "S"
	Talkies.say("Leiko", "Ugh, I can’t believe I’m willingly inviting peasants into my room. I hope they don’t leave a smell. ", {image=self.player.avatar, talkSound=GAME.blop,})
end

