Scene3_4 = Object:extend()

function Scene3_4:new()
	self.player = {
		avatar = love.graphics.newImage("assets/irene.png")
	}

end

function Scene3_4:loadEntities(object, GAME, map)
  if GAME.level == "maps/forest.lua" then
		GAME.location = "Fairy Forest"
    if object.name == "player_spawn2" then
      GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.player)
    elseif object.name == "leiko_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcleikoImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    elseif object.name == "kana_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npckanaImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    elseif object.name == "hiko_spawn2" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npchikoImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    end
  end
end

function Scene3_4:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene3_4:manageKeypresses(key, GAME)
  if key == "space" then Talkies.onAction()
  end
end

function Scene3_4:loadLevel(GAME)
  self.scene = 5
Talkies.say("Hiko", "Sis?", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "Yeah?", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "Why do you keep being mean to everyone?", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "I'm not 'being mean'. Their attitude is just frustrating.", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "But Princess Kana has shown me cool spells and told me a lot of stories!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Hiko", " And Princess Leiko is really funny and likes to play hide and seek with me!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "Since when are you this close with the princesses?", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "Dunno. They're nice!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "Well to me they've been nothing but a pain. Very stuck up.", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "Well Kana told me that she thinks you're very mean.", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "What? When did she tell you that?", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "When we were playing. I agree. You're being mean.", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "Wow okay. Way to betray me.", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "I'm being honest! Leiko is also mad at you because of it.", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "And remind me why I should care?", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "Because we're trying to save everyone! We need to team up! You can't do everything alone, sis!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "...", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Irene", "Ugh, you're right. Kana's right too. These quarrels aren't helping out.", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Irene", "We gotta do something and work together, even if I don't like it.", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "Does this mean you'll try to be nicer?", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
Talkies.say("Irene", "I guess. Can't promise anything though.--Come on, let's head back and get some sleep.", {image=self.player.avatar, talkSound=GAME.blop})
Talkies.say("Hiko", "Wait!! What is that!!!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop, oncomplete=function() GAME.battle:initiate(function() self:startCH4(GAME) end, 4, enemies[2], 3, enemies[3]) end})
end

function Scene3_4:startCH4(GAME)
    GAME.chapter = 4
    GAME.music.ch3:stop()
    GAME:doBlackScreen("in", "ch4")
    GAME.doFadeOut = true
end
