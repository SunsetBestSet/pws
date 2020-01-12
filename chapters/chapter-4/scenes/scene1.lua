Scene4_1 = Object:extend()

function Scene4_1:new()
	self.kana = {avatar = love.graphics.newImage("assets/kana.png")}
	self.irene = {avatar = love.graphics.newImage("assets/irene.png")}
	self.hiko = {avatar = love.graphics.newImage("assets/hiko.png")}
	self.leiko = {avatar = love.graphics.newImage("assets/leiko.png")}
end

function Scene4_1:loadEntities(object, GAME, map)
	GAME.location = "Mountain Village"
	if object.name == "kana_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.chapter4.character, GAME.world, 200, 64, 200, "N")
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "leiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.leiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "irene_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.irene, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "hiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.hiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "door_shop" then
		local door = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_door")
		door.nextMap = object.properties.nextMap;
		table.insert(GAME.entities, door)
	end
end

function Scene4_1:manageCollisions(thisName, otherName, cols, i, GAME)
	if thisName == "ent_player" and otherName == "ent_door" then
		GAME.level = cols[i].other.nextMap
		GAME.chapter4.scene = 2
		GAME:loadLevel()
	end
end

function Scene4_1:manageKeypresses(key, GAME)
	if key == "space" then Talkies.onAction() end
end

function Scene4_1:loadLevel(GAME)
	GAME.music.town:stop()
	GAME.music.ch3:stop()
	GAME.music.mountain:play()
	Talkies.say("Hiko", "Wow!! Look at all those cool trees!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (happy)", "Those are yorishiro , we only have a few of them in the capital.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (happy)", "They're traditional to Kuwon culture and sacred to our religion.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "So cool! And what does that rope mean?", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "The ropes show us those trees are sacred and are inhabited by good spirits. Cutting one of the trees brings misfortune.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Oh wow! Ghosts! In trees!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Ugh, Kana, you're so embarrassing. I can't believe you're telling him that. I'm sure it's not even true.", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "They are not lies, Leiko. As a royal, you should know these things if you attended the ancestral rituals from time to time.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "These objects are part of our past and are sacred to the core of our being.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "Enough bickering. We should find out how to get up the mountain the quickest.", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("A Random Villager (excited)", "Hey, isn't that princess Leiko and crown-princess Kana?! What are they doing here?!", {talkSound=GAME.blop})
	Talkies.say("Irene (annoyed)", "No. Now carry on with your life.", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "OK. So how do we get there...", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "LOOOOOKKK!!! I see Satoru's shop in the distance! Maybe he can help!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "That's not Satoru's shop Hiko. It's just another shop. Not all shops are run by Satoru.", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "It is! I recognize it from our village!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "No Hiko. It's not. Now shut up.", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Okay...", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Maybe the local shopkeeper can tell us something about how we can get to the mountain!", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (coughing loudly)", "I can go take a look...", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko (concerned)", "...are you okay Kana?", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Yeah. I'm fine. Just stay here, I'm going. *sneezes*", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Okay, well stay safe Kana!", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Bye Kana! Good luck!!!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "Stay safe.", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "WAITTTT I WANNA COME WITH YOU", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Okay, just follow after me.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (thinking)", "Okay, time to go to the shop.", {image=self.kana.avatar})
end
