-- copy of characters for battle

characters = { 
		hiko = {
		name = "Hiko",
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
			status_effects = {}
		},
		move = {
			moves.screech, 
			moves.dance, 
			moves.drain,

		}
}
}

characters.hiko.status.hitpoints = characters.hiko.stats.hp * 100

return characters