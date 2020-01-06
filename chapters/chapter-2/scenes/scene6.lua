Scene2_6 = Object:extend()

function Scene2_6:new()
  self.player = {
    avatar = love.graphics.newImage("assets/leiko.png")
  }
end

function Scene2_6:loadEntities(object, GAME, map)
  if object.name == "player_spawn" then
    GAME.player = Player(math.floor(object.x), math.floor(object.y), 16, 24, GAME.charImage, GAME.world, 200, 64, 200)
    table.insert(GAME.entities, GAME.player)
  elseif object.name == "hiko_spawn" then
    GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npchikoImage, GAME.world, 200, 64, 200)
    table.insert(GAME.entities, GAME.npc)
  elseif object.name == "irene_spawn" then
    GAME.npc = Nonplayable(math.floor(object.x), math.floor(object.y), 14, 22, GAME.npcireneImage, GAME.world, 200, 64, 200)
    table.insert(GAME.entities, GAME.npc)
  elseif object.name == "library_hallway" then
    local library_hallway = Entity(math.floor(object.x), math.floor(object.y), math.floor(object.width), math.floor(object.height), nil, GAME.world, "ent_libraryhallway")
    library_hallway.nextMap = object.properties.nextMap;
    table.insert(GAME.entities, library_hallway)
  end
end

function Scene2_6:manageCollisions(thisName, otherName, cols, i, GAME)
  if thisName == "ent_player" and otherName == "ent_npc" then
    GAME.interact = true
  end
end

function Scene2_6:manageKeypresses(key, GAME)
  if (key == 'space') and GAME.interact and GAME.level == "maps/library.lua" and not GAME.ch2scene6Unlocked then
		GAME.player.canMove = false
    Talkies.say("Leiko", "* She's... --another PURPLE?! *", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "You called for me?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Yes, peasant-", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Irene.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "...--What?", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "My name. I got one.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Your name shouldn't matter to me, I do as I please. And address me as 'Your Highness', you low peasant.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "I'm clearly older than you, so have some respect, you spoiled little-", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Hiko", "Irene, please stop it...", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "Hmph. Why was I needed, Your Highness?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "You surely wouldn't invite a peasant over at your precious palace for no reason, would you?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Tsk.-- Sit down. We have things to go over.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("GAME", "* AFTER SOME EXPLAINING...")
    Talkies.say("Irene", "No way.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Just why is everyone on their way to dismiss me?! The evidence is right there!", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "You can't just use the clouds as evidence, princess. What about the rest of the prophecy?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "Are you just ignoring that so it supports your claims?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Hiko", "I think it makes sense, big sis!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "It doesn't. Not to me.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "I'm not ignoring anything. Kana, she solidifies it, my theory.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Who??--Do all royals not make sense? What is this.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Are all peasants this annoying? Dear Gods.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Why you-", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Kana is my older sister.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "The crown princess?? What does she have to with this?", {image=GAME.npc.avatarirene, talkSound=GAME.blop})
    Talkies.say("Leiko", "Kana has always been sick, but over a span of a few weeks her health has declined drastically.", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "My mother favors her, so she has been getting tons of medical treatment but...", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "What has this kingdom come to? Since when do we have multiple useless princesses?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "I'M NOT USELESS! I manage parts of our magical imports, mind you. ", {image=self.player.avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "You're still a brat, though. And what does your sister do, rule the kingdom by herself?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Ugh!! Why are you so difficult to talk to?!", {image=self.player.avatar, talkSound=GAME.blop, oncomplete = function() Scene2_6:moreMessages(object, GAME, map) end})
    GAME.interact = false
  elseif key == "space" then Talkies.onAction()
  end

-- second dialogue check
  if key == "g" then
    Scene2_6:moreMessages(object, GAME, map)
  end

end

function Scene2_6:moreMessages(object, GAME, map)

    local	player_avatar = love.graphics.newImage("assets/leiko.png")
    -- spawn Kana
    GAME.npc = Nonplayable(100, 55, 14, 22, GAME.npckanaImage, GAME.world, 200, 64, 200)
    table.insert(GAME.entities, GAME.npc)

    Talkies.say("Kana", "I do not rule the kingdom, as a matter of fact, but I do have a stance in the court.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "Hello, sister, good morning.", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Hiko", "It's the other lady! Hi!!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "Why, hello, what are you doing here once again?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Hiko", "Helping!!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Leiko", "What are you doing here, Kana?", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "I was looking for you, Leiko. I believe our conversation was cut short yesterday evening, --wasn't it?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "What's her problem? Do you ever speak in a normal way?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "...What?--And who might you be, spellcaster?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Irene. What's it to you?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "I would like to know who visits the castle, of course. You are from around the kingdom?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Doesn't matter. How does she 'solidify' your theory?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Why are you acting as if it's such a crazy theory?!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Because it is.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Kana has been getting sicker the last few weeks and none of the medicine has been working on her.", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "That's exactly what the prophecy says.", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "She is one of 'the weakest', see? They suffer first.", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Hiko", "You're sick?!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "...--Maybe you ARE right. There have been more sick people in town lately...", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Hiko", "They've been coming to our house for healing spells!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Leiko", "See? That makes it even more plausible.", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "I don't get it, my health has nothing to do with-", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "It does... she's right, even if I don't want to admit it. You're a blue right?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "Have you been feeling light-headed, been fainting maybe?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "Has your magic been a bit unstable?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "I think?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Well doesn't that say enough? Your snobby sister is right.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "The disk is disrupting the balance.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Thank you! Finally someone...--hey did you just call me snobby?!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "Okay, well, if what you're claiming is true and the seal is removed...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "How do we restore the balance?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "I might know something that can help.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("GAME", "* IRENE TAKES OUT A BOOK.")
    Talkies.say("Kana", "W-we can't use this! This book has been banned by the court!", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "What are you going to do, throw me into the dungeons? We need this info.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "What kind of info?", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "Leiko, why on earth are you even considering knowing?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "It tells us how to put a new seal on the disk.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Okay, then I'll go and put a new seal on the disk.", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "What? And how are planning on leaving? To the mountain nonetheless?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Leiko", "The royal guards! Soldiers perhaps!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Kana", "Must I remind you the queen has ordered a research to be done, not the royal army to be involved?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Kana", "The court will never let you leave, Leiko. Besides the mountain is inaccessible...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "I don't believe that.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "Why in the world is everyone so insistent that no one can go there?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "Yokai...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Monsters? I doubt it can be that bad.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "It is. Hundreds of people die every year...--Shouldn't everyone know this?", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "Well, I don't. It's not like I care.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Hiko", "Then why don't we all go! Just the four of us! We can fight them off!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Yes, good idea! Let's do it! No complaining from Mother!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Who said I wanted to?", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Princess' orders!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "...--Fine.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "I don't know Leiko... It's a bit too risky. Besides I believe I'm in no condition of going out...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Irene", "I'm sure you can handle it.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Kana", "But won't my health-", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Hiko", "I'm sure you're strong enough! Me and sis can help you too!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "I can mix you up a potion...", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Hiko", "Yeah! She's REALLY good at it! It'll make you feel better for weeks! Promise!", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Kana", "Alright...", {image=GAME.npc.avatarkana, talkSound=GAME.blop})
    Talkies.say("Leiko", "* Even if I don't like admitting it, we do kinda need her. *", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Leiko", "* Her magic is strong, even with her condition. She'd be helpful...--hopefully she won't nag too much...*", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Hiko", "Yay!!! When do we leave??", {image=GAME.npc.avatarhiko, talkSound=GAME.blop,})
    Talkies.say("Irene", "We should leave tonight.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Irene", "If Princess Snob here is right, people might die if we wait any longer.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "Y-You-!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Let's meet at the North gates at dusk.", {image=GAME.npc.avatarirene, talkSound=GAME.blop,})
    Talkies.say("Leiko", "You unrespectful peasant!! Get out!!", {image=player_avatar, talkSound=GAME.blop})
    Talkies.say("Irene", "Just don't be late, 'Your Highnesses'.", {image=GAME.npc.avatarirene, talkSound=GAME.blop, oncomplete = function() self:nextch(GAME) end})
    GAME.ch2scene6Unlocked = true
    GAME.interact = false
end

function Scene2_6:loadLevel(GAME)
end

function Scene2_6:nextch(GAME)
  GAME.music.castle2:stop()
  GAME:doBlackScreen("in", "ch3")
	GAME.doFadeOut = true
  GAME.chapter = 3
end
