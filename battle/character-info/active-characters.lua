-- copy of characters for battle
moves = require 'battle-info/move_info'
characters = { 
		hiko = {
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
			attack = 4 * 5,
			defense = 3 * 5,
			focus = 1 * 5,
			speed = 3 * 5,
			hp = 3 * 100,
		},
		move = {
			moves.floral_healing, 
			moves.dance, 
			moves.drain,
		}
},
leiko = {
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

characters.hiko.status.hp = characters.hiko.stats.hp * 100
characters.leiko.status.hp = characters.leiko.stats.hp * 100

return characters