-- copy of characters for battle

active_characters = { 
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
		move = {
			moves.screech, 
			moves.dance, 
			moves.drain,

		}
	},
	irene = {
		name = "Irene", 
		character_id = 4, 
		magic = "purple", 
		stats = {
			attack = 3, 
			defense = 1, 
			focus = 3,
			speed = 3, 
			hp = 4,
		},
		move = {
			moves.wrath,
			moves.poison_powder,
			moves.captivating_curse, 
		},
		cooldown = {false, 0}, 
	},

}