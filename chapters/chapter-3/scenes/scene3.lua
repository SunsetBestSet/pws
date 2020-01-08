Scene3_3 = Object:extend()

function Scene3_3:new()
	self.player = {
		avatar = love.graphics.newImage("assets/irene.png")
	}

end

function Scene3_3:loadEntities(object, GAME, map)
  if GAME.level == "maps/forest.lua" then
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

function Scene3_3:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene3_3:manageKeypresses(key, GAME)
  if key == "space" then Talkies.onAction()
  end
end

function Scene3_3:loadLevel(GAME)
  if GAME.level == "maps/forest.lua" then
    Talkies.say("Irene", "* This spell... why is it not working? What could it be...? *",{image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "Irene, are you sure you do not want to sit closer to the fire? It's a cold night after all.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Irene", "No thanks. I'm trying to figure out this spell so we don't get killed tonight.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Suit yourself. I don't like you either.", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
		Talkies.say("Irene", "Didn't ask you.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Leiko", "Freeze then.", {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
		Talkies.say("Kana", "Let's not be this way... as adults we must behave as such.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Irene", "I don't want you to tell me what to do, princess.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "I'm advising, not ordering. I don't understand where the stubbornness comes from.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Kana", "You could've just asked me to cast the protection spell.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Irene", "*sigh* It's fine. Just keep an eye on Hiko while I do this.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Yay! Princess Kana!! Will you play with me? Will you??", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
		Talkies.say("Kana", "Well I cannot move around to much, but if you want, I can show you some interesting spells?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Hiko", "Ooooh! What kind of spells??", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
		Talkies.say("Kana", "Well, with this spell, you can summon little spirits out of objects. See?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Hiko", "Wooow! Can I try with my coin?", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
		Talkies.say("Kana", "Of course, just make sure you're changeling your magic correctly.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Hiko", "I did it!! I can't understand what he's saying something though...", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
		Talkies.say("Kana", "To understand them you just have to ask the right questions, look...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Irene", "* Who knew those two could get along so well? I thought she'd be more distant. *", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Irene", "* Hiko definitely gets along better then with them than me. I wonder why he's even being so nice to them. *", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Irene", "That should do it.", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Kana", "Did the spell work?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
		Talkies.say("Irene", "Yeah. It did.--Hey, Hiko, would you mind getting some firewood with me?", {image=self.player.avatar, talkSound=GAME.blop})
		Talkies.say("Hiko", "Sure sis! Coming!!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,oncomplete = function() Scene3_3:startScene4(GAME) end})


  end
end

function Scene3_3:startScene4(GAME)
	GAME:doBlackScreen("in")
  GAME.doFadeOut = true
  GAME.chapter3.scene = 4

end
