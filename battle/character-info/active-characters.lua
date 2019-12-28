-- copy of characters for battle
moves = require 'battle-info/move_info'
characters = { 
		{
		name = "Hiko",
		pronouns = {"he", "him"},
		character_id = 3,
		magic = "green",
		stats = {
			attack = 1,
			defense = 4,
			focus = 3,
			speed = 4,
			hp = 2,
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {},
			attack = 1 * 5,
			defense = 4 * 5,
			focus = 3 * 5,
			speed = 4 * 5,
			hp = 2 * 100,
		},
		move = {
			moves.floral_healing, 
			moves.screech, 
			moves.drain,
		}
},
{
		name = "Leiko",
		pronouns = {"she", "her"},
		character_id = 1,
		magic = "purple",
		stats = {
			attack = 4,
			defense = 3,
			focus = 1,
			speed = 3,
			hp = 3,
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {},
			attack = 4 * 5,
			defense = 3 * 5,
			focus = 1 * 5,
			speed = 3 * 5,
			hp = 3 * 100,
		},
		move = {
			moves.flower_dance,
			moves.scratch,
			moves.humiliate, 
		},
	},
}

characters[1].status.hp = characters[1].stats.hp * 100
characters[2].status.hp = characters[2].stats.hp * 100

return characters