status = require 'battle-info/status'
attack = require 'battle-info/attacks'
return {
	
	scratch = {
		id = 01,
		name = "Scratch",
		magic = "purple",
		description = "The user uses their long nails to scratch their opponent.",
		type = "physical",
		strength = 5,
		properties = {},
	},	
	humiliate = {
		id = 02,
		name = "Humiliate",
		magic = "purple",
		description = "The user insults their opponent until the opponent cries. The next time the opponent uses a move, the opponent will hit themselves (if the opponent uses a healing item in the next turn, the user will steal it.)",
		type = "special",
		strength = 0,
		attack = attack.humiliated,
	},
	poison_powder = {
		id = 03,
		name = "Poison Powder",
		magic = "purple",
		description = "The user throws/blows poison powder onto the target. The target loses health and gets a poison status effect.",
		type = "special",
		strength = 2,
		attack = attack.poison
	},
	heart_swap = {
		id = 04,
		name = "Heart Swap",
		magic = "purple",
		description = "The user’s health is swapped with the target’s health.",
		type = "special",
		strength = 0,
		attack = attack.swap_health,
	},
	captivating_curse = {
		id = 05,
		name = "Captivating Curse",
		magic = "purple",
		description = "The target faints if the user also does.",
		type = "special",
		strength = 0,
		attack = attack.curse,
	},	
	flower_dance = {
		id = 06,
		name = "Flower Dance",
		magic = "purple",
		description = "Leiko uses her magic to turn the nectar of the flowers in her hair into poison. Upon using this attack, the target is poisoned.",
		type = "special",
		strength = 0,
		attack = attack.poison
	},
	irene_move = {
		id = 07,
		name = "Name",
		magic = "purple",
		description = "description",
		type = "special/physical",
		strength = 0,
		attack = attack.someAttack
	},
	hypnosis = {
		id = 08,
		name = "Hypnosis",
		magic = "blue",
		description = "Puts the target to sleep.",
		type = "special",
		strength = 0,
		attack = attack.setToSleep,
	},
	meditate = {
		id = 09,
		name = "Meditate",
		magic = "blue",
		description = "Raises user’s attack stats.",
		type = "special",
		strength = 0,
		attack = attack.raiseAttack,
	},
	sunsteel_strike = {
		id = 10,
		name = "Sunsteel Strike",
		magic = "blue",
		description = "The user uses their weapon to strike the target.",
		type = "physical",
		strength = 8,
		attack = attack.damage,
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
		properties = {},
	},

	]]--
