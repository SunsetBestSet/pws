enemies = { 
		enemy1 = {
			name = "Old Man Robert",
			magic = "blue",
			pronouns = {"he", "him"},
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
				status_effects = {},
				attack = 1 * 5,
				defense = 4 * 5,
				focus = 3 * 5,
				speed = 4 * 5,
				hp = 100,
			},
			move = {
				moves.sunsteel_strike, 
				moves.meditate,
			}
		},
		enemy2 = {
			name = "Old Man Tom",
			magic = "green",
			pronouns = {"he", "him"},
			stats = {
				attack = 2,
				defense = 3,
				focus = 2,
				speed = 5,
				hp = 2,
			},
			EXP = 0,
			LVL = 1,
			status = {
				status_effects = {},
				attack = 2 * 5,
				defense = 3 * 5,
				focus = 2 * 5,
				speed = 5 * 5,
				hp = 2 * 100,
			},
			move = {
				moves.screech, 
				moves.drain,
			}
		}
}
enemies.enemy1.status.hp = enemies.enemy1.stats.hp * 100
enemies.enemy2.status.hp = enemies.enemy2.stats.hp * 100

return enemies