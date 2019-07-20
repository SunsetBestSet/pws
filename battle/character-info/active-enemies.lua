enemies = { 
		enemy1 = {
		magic = "blue",
		stats = {
			attack = 1,
			defense = 4,
			focus = 3,
			speed = 4,
			hp = 1,
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {}
		},
		move = {
			moves.sunsteel_strike, 
			moves.meditate, 
			moves.hypnosis,
		}
}
}
enemies.enemy1.status.hp = enemies.enemy1.stats.hp * 100

return enemies