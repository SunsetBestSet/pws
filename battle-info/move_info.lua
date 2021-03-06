-- list of moves. Tables with information

local attack = require 'battle-info/subattacks'
local status = require 'battle-info/status'
local move = require 'battle-info/moves'
return {

	scratch = {
		id = 01,
		name = "Scratch",
		magic = "purple",
		description = "The user uses their long nails to scratch their opponent.",
		type = "physical",
		strength = 5,
		attack = move.scratch,
	},
	humiliate = {
		id = 02,
		name = "Humiliate",
		magic = "purple",
		description = "The user insults their opponent until the opponent cries. The next time the opponent uses a move, the opponent will hit themselves (if the opponent uses a healing item in the next turn, the user will steal it.)",
		type = "special",
		strength = 0,
		attack = move.humiliate,
	},
	poison_powder = {
		id = 03,
		name = "Poison Powder",
		magic = "purple",
		description = "The user throws/blows poison powder onto the target. The target loses health and gets a poison status effect.",
		type = "special",
		strength = 2,
		attack = move.poison_powder,
	},
	heart_swap = {
		id = 04,
		name = "Heart Swap",
		magic = "purple",
		description = "The user’s health is swapped with the target’s health.",
		type = "special",
		strength = 0,
		attack = move.heart_swap,
	},
	captivating_curse = {
		id = 05,
		name = "Captivating Curse",
		magic = "purple",
		description = "The target faints if the user also does.",
		type = "special",
		strength = 0,
		attack = move.captivating_curse,
	},	
	flower_dance = {
		id = 06,
		name = "Flower Dance",
		magic = "purple",
		description = "Leiko uses her magic to turn the nectar of the flowers in her hair into poison. Upon using this attack, the target is poisoned and their defense is lowered.",
		type = "special",
		strength = 0,
		amount = 2,
		attack = move.flower_dance,
	},
	wrath = { -- Hoeveel moves wordt de cooldown?
		id = 07,
		name = "Wrath",
		magic = "purple",
		description = "Inflicts small HP damage as well as lowers the target’s attack and defense with 1 for the entirety of the game. Has cooldown",
		type = "special/physical",
		strength = 2,
		amount = 1,
		attack = move.wrath,
	},
	hypnosis = {
		id = 08,
		name = "Hypnosis",
		magic = "blue",
		description = "Puts the target to sleep.",
		type = "special",
		strength = 0,
		attack = move.hypnosis,
	},
	meditate = {
		id = 09,
		name = "Meditate",
		magic = "blue",
		description = "Raises user’s attack stats.",
		type = "special",
		strength = 0,
		amount = 2,
		attack = move.meditate,
	},
	sunsteel_strike = {
		id = 10,
		name = "Sunsteel Strike",
		magic = "blue",
		description = "The user uses their weapon to strike the target.",
		type = "physical",
		strength = 8,
		attack = move.sunsteel_strike,
	},
	moonblast = {
		id = 11,
		name = "Moonblast",
		magic = "blue",
		description = "The user redirects moonlight onto the target. (very strong move but can only be used at night.)",
		type = "physical",
		strength = 7,
		attack = move.moonblast,
	},
	telekinesis = {
		id = 12,
		name = "Telekinesis",
		magic = "colour",
		description = "User lifts up the target and smashes them to the ground.",
		type = "physical",
		strength = 5,
		attack = move.telekinesis,
	},
	calamity = {
		id = 13,
		name = "Calamity",
		magic = "blue",
		description = "The user poisons target and puts them to sleep.",
		type = "special",
		strength = 0,
		attack = move.calamity,
	},
	dance = {
		id = 14,
		name = "Dance",
		magic = "green",
		description = "Let’s their teammate use a move twice during the turn (always goes first).",
		type = "special",
		strength = 0,
		priority = true,
		attack = move.dance,
	},
	drain = {
		id = 15,
		name = "Drain",
		magic = "green",
		description = "Drains half of the health of the target and gains it.",
		type = "special",
		strength = 0,
		attack = move.drain,
	},
	floral_healing = {
		id = 16,
		name = "Floral Healing",
		magic = "green",
		description = "The user restores the target's HP by up to half of its max HP.",
		type = "special",
		strength = 0,
		attack = move.floral_healing,
	},
	screech = {
		id = 17,
		name = "Screech",
		magic = "green",
		description = "Lowers the defense of the target.",
		type = "special",
		strength = 0,
		amount = 3,
		attack = move.screech,
	},
}
--[[

	a_move = {
		id = 01,
		name = "Name",
		magic = "colour",
		description = "description",
		type = "special/physical",
		strength = 0,
		attack = {},
	},

moves die worden geschrapt (sws):
* dance
moves die ik aan ze zijkant leg voor nu, misschien komen ze nog:
* calamity
* moonblast, we hebben een tijd systeem nodig i don't think that's it chief
* wrath, het deel dat t maar 2 keer gebruikt kan worden
* humiliate
* poison powder
* captivating curse
* hypnosis
- 


	]]--
