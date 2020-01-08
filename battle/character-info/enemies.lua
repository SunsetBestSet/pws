enemies = { 
		{
			name = "Yokai",
			magic = "blue",
			pronouns = {"he", "him"},
			stats = {
				attack = 1,
				defense = 4,
				hp = 1,
			},
			EXP = 0,
			LVL = 1,
			status = {
				status_effects = {},
			},
			move = {
				moves.sunsteel_strike, 
				moves.meditate,
			},
			image = "yokai.png"
		},
		{
			name = "Troll",
			magic = "green",
			pronouns = {"he", "him"},
			stats = {
				attack = 2,
				defense = 3,
				hp = 2,
			},
			EXP = 0,
			LVL = 1,
			status = {
				status_effects = {},
			},
			move = {
				moves.screech, 
				moves.drain,
			},
			image = "troll.png"
		},
		{
			name = "Fairy",
			magic = "green",
			pronouns = {"she", "her"},
			stats = {
				attack = 2,
				defense = 3,
				hp = 2,
			},
			EXP = 0,
			LVL = 1,
			status = {
				status_effects = {},
			},
			move = {
				moves.screech, 
				moves.drain,
			},
			image = "fairy.png"
		}
}

for k, v in pairs(enemies) do 
	enemies[k].status.hp = enemies[k].stats.hp * 100
	enemies[k].status.defense = enemies[k].stats.defense * 5
	enemies[k].status.attack = enemies[k].stats.attack * 5
end

return enemies