status = require 'battle-info/status'
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
}
