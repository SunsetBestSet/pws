Scene3_1 = Object:extend()

function Scene3_1:new()
	self.player = {
		avatar = love.graphics.newImage("assets/irene.png")
	}

end

function Scene3_1:loadEntities(object, GAME, map)
  GAME.level = "maps/farmlands1.lua"
	GAME.location = "Random Farm Path"
  if GAME.level == "maps/farmlands1.lua" then
    if object.name == "player_spawn" then
      GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.player)
    elseif object.name == "leiko_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcleikoImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    elseif object.name == "kana_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npckanaImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    elseif object.name == "hiko_spawn" then
      GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npchikoImage, GAME.world, 200, 64, 200)
      table.insert(GAME.entities, GAME.npc)
    end
  end
end

function Scene3_1:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene3_1:manageKeypresses(key, GAME)
  if key == "space" then Talkies.onAction()
  end
end

function Scene3_1:loadLevel(GAME)
  GAME.music.castle2:stop()
  GAME.music.town:stop()
  GAME.music.ch3:play()
  if GAME.level == "maps/farmlands1.lua" then
    Talkies.say("Leiko", "Oh my Gods!! I think I just stepped into some mud! Kana, come HELP ME!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "Well, I did tell you not to bring your... shoes, but you still did.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "I'm sure Mother won't be happy to hear you dirtied your shoes again Leiko.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Leiko", "Ugh! Stop lecturing me and help me out of this mud swamp!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Leiko", "And how was I supposed to know?! We never walk outside the city walls, we always take the carriage!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "I clearly told you that there are no stone paths as in the inner walls, besides, you should have learned this before-", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Leiko", "Yeah but this is MUD! On my shoes!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "Are you two butterflies done? It's mud, not the end of the world.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "Well, it is the end of the world when my shoes are custom made in the Northern monastery and probably cost more than your house!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "Oh wow, that hurt Princess! Poor you, your precious little shoes got dirty!", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "Look, I don't know what your deal is, but I'd rather-", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "My deal is that you're complaining about the littlest things while this is reality.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "The fact that you've never lifted a finger and can't handle a bit of mud while the rest of your citizens are working their lives away is ridiculous.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "You seriously have no right to complain.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "Why, you ungrateful hag!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Hiko", "Guys, why are we fighting again??", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "Sometimes adults don't agree with each other, Hiko.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "Irene, you can't expect Leiko to see things from your perspective. Life at the castle is very different and isolated from-", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Whatever, no need to waste your valuable breath on me Your Highness.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "I think this is a matter we should talk about.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "I know you do not like us but if we want to save our people, we cannot keep fighting along the way. It is keeping us from making progress!", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Hiko", "I agree! Fighting isn't good! We should stop it.", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "I'm not in the mood to have another headache for the rest of the night. Now give me some minutes of silence so I can figure out where-", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "I do not understand why you keep being rude and shushing me as if I'm not the heir to the throne!", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "I believe we should discuss and come to an understanding before working together becomes impossible.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Okay, let me tell you loud and clear: I don't like how the two of you think you can just order me around and degrade me with words.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Irene", " I'm human, just like you.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Your little sister's an arrogant brat and you probably think you're more sophisticated than everyone here!", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "The fact that you royals think you're above me just because you were born lucky is stupid.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "I mean you're right about Kana but you're the rude one here!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Leiko", "It doesn't matter if I was born lucky I'm still a princess!", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "What do you mean 'right about me'?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "If you two were not so keen on disrupting the order I would not have to correct you all the time!", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "Using banned books and spells! Ignoring the Queen's orders!", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Well, you're out here as well aren't you?", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "Perhaps, but at least I am not trying to break anymore laws...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Let's just... drop it. We gotta at least reach the forest so we can make camp first.", {image=self.player.avatar, talkSound=GAME.blop, oncomplete = function() Scene3_1:startScene2(GAME) end})
  end
  GAME.interact = false
end

function Scene3_1:startScene2(GAME)
  GAME:doBlackScreen("in")
  GAME.doFadeOut = true
  GAME.chapter3.scene = 2
  GAME.music.town:stop()
end
