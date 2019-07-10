status = require 'battle-info/status'
special = require 'battle-info/special'
return {
	
	scratch = {
		id = 01,
		name = "Scratch",
		type = "purple",
		description = "The user uses their long nails to scratch their opponent.",
		strength = 50,
		properties = {},
	},	
	humiliate = {
		id = 02,
		name = "Humiliate",
		type = "purple",
		description = "The user insults their opponent until the opponent cries. The next time the opponent uses a move, the opponent will hit themselves (if the opponent uses a healing item in the next turn, the user will steal it.)",
		strength = 0,
		properties = {
			status = status.humiliated,
		},
	},
	poison_powder = {
		id = 03,
		name = "Poison Powder",
		type = "purple",
		description = "The user throws/blows poison powder onto the target. The target loses health and gets a poison status effect.",
		strength = 20,
		properties = {
			status = status.poisoned,
		},
	},
	heart_swap = {
		id = 04,
		name = "Heart Swap",
		type = "purple",
		description = "The user’s health is swapped with the target’s health.",
		strength = 0,
		properties = {
			special = special.swap_health
		},
	},
		
}
--[[
a_move = {
		id = 01,
		name = "Name",
		type = "colour",
		description = "Description",
		strength = 0,
		properties = {},
	},	
]]--
