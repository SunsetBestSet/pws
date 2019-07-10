status = require 'battle-info/status'
special = require 'battle-info/special'
return {
	
	scratch = {
		id = 01,
		name = "Scratch",
		magic = "purple",
		description = "The user uses their long nails to scratch their opponent.",
		type = "physical"
		strength = 50,
		properties = {},
	},	
	humiliate = {
		id = 02,
		name = "Humiliate",
		magic = "purple",
		description = "The user insults their opponent until the opponent cries. The next time the opponent uses a move, the opponent will hit themselves (if the opponent uses a healing item in the next turn, the user will steal it.)",
		type = special
		strength = 0,
		properties = {
			status = status.humiliated,
		},
	},
	poison_powder = {
		id = 03,
		name = "Poison Powder",
		magic = "purple",
		description = "The user throws/blows poison powder onto the target. The target loses health and gets a poison status effect.",
		type = "special"
		strength = 20,
		properties = {
			special = special.poison
		},
	},
	heart_swap = {
		id = 04,
		name = "Heart Swap",
		magic = "purple",
		description = "The user’s health is swapped with the target’s health.",
		type = "special"
		strength = 0,
		properties = {
			special = special.swap_health
		},
	},
	captivating_curse = {
		id = 05,
		name = "Captivating Curse",
		magic = "purple",
		description = "The target faints if the user also does.",
		type = "special"
		strength = 0,
		properties = {
			special = special
		},
	},	

}
--[[
a_move = {
		id = 01,
		name = "Name",
		magic = "colour",
		description = "description",
		type = "special/physical"
		strength = 0,
		properties = {},
	},	
	]]--
