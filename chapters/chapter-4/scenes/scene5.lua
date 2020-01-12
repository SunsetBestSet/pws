Scene4_5 = Object:extend()

function Scene4_5:new()
	self.kana = {avatar = love.graphics.newImage("assets/kana.png")}
	self.irene = {avatar = love.graphics.newImage("assets/irene.png")}
	self.hiko = {avatar = love.graphics.newImage("assets/hiko.png")}
	self.leiko = {avatar = love.graphics.newImage("assets/leiko.png")}
	self.boss = {avatar = love.graphics.newImage("assets/boss.png")}
end

function Scene4_5:loadEntities(object, GAME, map)
	GAME.location = "Mountain"
	if object.name == "kana_spawn" then
		GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.chapter4.character, GAME.world, 200, 64, 200, "W")
		table.insert(GAME.entities, GAME.player)
	elseif object.name == "leiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.leiko, GAME.world, 200, 64, 200, "S")
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "irene_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.irene, GAME.world, 200, 64, 200)
		table.insert(GAME.entities, GAME.npc)
	elseif object.name == "hiko_spawn" then
		GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.chapter4.hiko, GAME.world, 200, 64, 200, "E")
		table.insert(GAME.entities, GAME.npc)
	end
end

function Scene4_5:manageCollisions(thisName, otherName, cols, i, GAME)

end

function Scene4_5:manageKeypresses(key, GAME)
	if key == "space" then Talkies.onAction()
  elseif key == "up" then Talkies.prevOption()
  elseif key == "down" then Talkies.nextOption()
  end
end

function Scene4_5:loadLevel(GAME)
	GAME.music.mountain:stop()
	GAME.music.town:stop()
	GAME.music.top:play()
	Talkies.say("Mysterious Man", "HAHA! What do you younglings think you are doing, Do you think you can defeat me? I am already a god.", {image=self.boss.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "No! Gods are kind, generous, --and have a better fashion sense than this.", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Mysterious Man", "...?", {image=self.boss.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "..?", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "uhh....????", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "What??!", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Mysterious Man", "I am a mere shadow, youngling, how am I supposed to have a bad sense of fashion?", {image=self.boss.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Duhhh, you have aura of all the magics surrounding you. Sorry. Not a good look.", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "That is exactly what makes him a god, dumbass...", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Leiko", "Hello! I am trying to insult him so he is less confident when he fight him...", {image=self.leiko.avatar, talkSound=GAME.blop})
	Talkies.say("Mysterious Man", "Fight *me*?", {image=self.boss.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "You cannot bring down our kingdom. The magic belongs to my people.", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Irene", "You don't own us!", {image=self.irene.avatar, talkSound=GAME.blop})
	Talkies.say("Kana", "Not the time...", {image=self.kana.avatar, talkSound=GAME.blop})
	Talkies.say("Hiko", "Yeah weird man! We're going to fight you, and defeat you, and save the kingdom!", {image=self.hiko.avatar, talkSound=GAME.blop})
	Talkies.say("Kana (thinking)", "Who should I fight with?", {image=self.kana.avatar, talkSound=GAME.blop, options={
		{"Hiko", function() GAME.battle:initiate(nil, 2, enemies[4], 3, enemies[5]) end},
		{"Leiko", function() GAME.battle:initiate(nil, 2, enemies[4], 1, enemies[5]) end},
		{"Irene", function() GAME.battle:initiate(nil, 2, enemies[4], 4, enemies[5]) end},
	}})
end
