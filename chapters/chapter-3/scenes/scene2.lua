Scene3_2 = Object:extend()

function Scene3_2:new()
	self.player = {
		avatar = love.graphics.newImage("assets/irene.png")
	}

end

function Scene3_2:loadEntities(object, GAME, map)
  if GAME.level == "maps/farmlands2.lua" then
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
		elseif object.name == "farmer_spawn" then
			GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcfarmerImage, GAME.world, 200, 64, 200)
			table.insert(GAME.entities, GAME.npc)
    end
  end
end

function Scene3_2:manageCollisions(thisName, otherName, cols, i, GAME)
end

function Scene3_2:manageKeypresses(key, GAME)
  if key == "space" then Talkies.onAction()
  end
end

function Scene3_2:loadLevel(GAME)
  if GAME.level == "maps/farmlands2.lua" then
    Talkies.say("Farmer", "Your Highnesses! What are you doing out here without any of your guards? Are you well? ", {talkSound=GAME.blop})
    Talkies.say("Leiko", "What's with the questions, mind your own b-",  {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "We are, no need to worry. The crops are looking well this season.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Farmer", "They are Princess! They'll be all perfect for the next festival, I'm sure!", {talkSound=GAME.blop})
    Talkies.say("Farmer", "But uh... are the four of you going somewhere?", {talkSound=GAME.blop})
    Talkies.say("Hiko", "Yeah! We're on a mission to-", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "Somewhere. Up the mountains.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Farmer", "To Mikai village perhaps?", {talkSound=GAME.blop})
    Talkies.say("Irene", "Yeah, that one. I was thinking of going through the enchanted forest first... then make our way up from there.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Farmer", "The enchanted forest?", {talkSound=GAME.blop})
    Talkies.say("Irene", "Yeah, what about it?", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Farmer", "Well, the fairies that inhabit the forest aren't really keen  on visitors... They might attack you, if you get too close.", {talkSound=GAME.blop})
    Talkies.say("Irene", "What? If gone through before and I've never encountered any 'fairy'.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Farmer", "They come out at night, just like regular wild animals and jokai.", {talkSound=GAME.blop})
    Talkies.say("Leiko", "Would a battle be enough to scare them off? ",  {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Farmer", "I think so, yes, but you need to be careful, they can be quite scary.", {talkSound=GAME.blop})
    Talkies.say("Leiko", "I think we'll be alright! You've got me!",  {image=GAME.npc.avatarleiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "We certainly will, Farmer. Thank you for the information.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Farmer", "Before you go-", {talkSound=GAME.blop})
    Talkies.say("Hiko", "OH NO! A TROLL!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Farmer", "Oh no! You might have to fight this one off!", {oncomplete = function() Scene3_2:startScene3(GAME) end})
  end
end

function Scene3_2:startScene3(GAME)
  GAME:doBlackScreen("in")
  GAME.doFadeOut = true
  GAME.chapter3.scene = 3
  GAME.music.town:stop()
end
