Scene3 = Object:extend()

function Scene3:new()
	self.nao_img = love.graphics.newImage('assets/sprites/nao.png')
	self.satoru_img = love.graphics.newImage('assets/sprites/satoru.png')
	self.satoru_avatar = love.graphics.newImage('assets/satoru.png')
	self.nao_avatar = love.graphics.newImage('assets/nao.png')
end

function Scene3:loadEntities(object, GAME, map)
	if object.name == "player_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.player)
		GAME.player.canMove = false
	elseif object.name == "nao_spawn" then 
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.nao_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "satoru_spawn" then 
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, self.satoru_img, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	end
end

function Scene3:manageCollisions(thisName, otherName, cols, i, GAME)

end

function Scene3:manageKeypresses(key, GAME)
	if key == "space" then
		Talkies.onAction() 
	end
end

function Scene3:loadLevel(GAME)
	GAME.player.canMove = false
	GAME.player.facing = "N"
	Talkies.say("Hiko", "Satoru!-- Satoru!-- I need your help!", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Satoru", "What is it, my child?", {image=self.satoru_avatar, talkSound=GAME.blop,})
	Talkies.say("Hiko", "There's something weird and scary going on in the mountain...-- and there are weird clouds...", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Hiko", "and I don't know what's happening...--and I want to have a look, but it's too far!", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Satoru", "Slow down there my child. Have some consideration with my old ears, I cannot keep up as fast as you youngsters.", {image=self.satoru_avatar, talkSound=GAME.blop,})
	Talkies.say("Satoru", "So...there is something going on on the mountain and you want to see it from afar?", {image=self.satoru_avatar, talkSound=GAME.blop,})
	Talkies.say("Hiko", "Yes! I don't think I can go there myself, so I want to have a look from fort Hiko, but I cannot see everything from there.", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Hiko", "Do you have anything that could help me?", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Nao", "Grandpa, I might know something!", {image=self.nao_avatar, talkSound=GAME.blop,})
	Talkies.say("Satoru", "Yes?", {image=self.satoru_avatar, talkSound=GAME.blop,})
	Talkies.say("Nao", "Last time I went to Europe, I found these weird things, 'binoculars', they are called.", {image=self.nao_avatar, talkSound=GAME.blop,})
	Talkies.say("Nao", "They let you see far into the distance. I brought one home!", {image=self.nao_avatar, talkSound=GAME.blop,})
	Talkies.say("Satoru", "Well, Hiko, I think Nao has got you covered. Nao, why don't you bring those binoculars you got from Europe here.", {image=self.satoru_avatar, talkSound=GAME.blop,})
	Talkies.say("Game", "* Hiko received binoculars")
	Talkies.say("Nao", "Here it is! It is one of the newest inventions in Europe.", {image=self.nao_avatar, talkSound=GAME.blop,})
	Talkies.say("Hiko", "That looks so cool!", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Nao", "Now, go to your treehouse and look take a closer look!", {image=self.nao_avatar, talkSound=GAME.blop,})
	Talkies.say("Hiko", "Wow! Thanks Nao!! I'm sure this will help me!", {image=GAME.player.avatar, talkSound=GAME.blop,})
	Talkies.say("Satoru", "Make sure to take care of it, Hiko!", {image=self.satoru_avatar, talkSound=GAME.blop,})
end