--[[

character = {
	name = "name", 	
	character_id = 0,
	magic = "magic"			(type of magic)
	stats = {},				(table with set of stats)
	EXP = 0,				(amount of EXP the character has)
	LVL = 1, 				(EXP level of the character)
	status = {]				(Status: effects, hitpoints)
		status_effects = {},
		hitpoints, 
	},
	moves = {}, 			(List of moves of the character)
}

]]-- 

moves = require 'battle-info/move_info'

characters = {
	{
		name = "Leiko",
		pronouns = {"she", "her"},
		character_id = 1,
		magic = "purple",
		stats = {
			attack = 4,
			defense = 3,
			hp = 3,
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {}
		},
		move = {
			moves.flower_dance,
			moves.scratch,
			moves.humiliate, 
		},
	},
	{
		name = "Kana",
		pronouns = {"she", "her"},
		character_id = 2,
		magic = "blue",
		stats = {
			attack = 4,
			defense = 3,
			hp = 1, 
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {}
		},
		move = {
			moves.calamity,
			moves.sunsteel_strike,
			moves.meditate,
		},
	},
	{
		name = "Hiko",
		pronouns = {"he", "him"},
		character_id = 3,
		magic = "green",
		stats = {
			attack = 1,
			defense = 4,
			hp = 2,
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {}
		},
		move = {
			moves.floral_healing, 
			moves.screech, 
			moves.drain,

		}
	},
	{
		name = "Irene", 
		pronouns = {"she", "her"},
		character_id = 4, 
		magic = "purple", 
		stats = {
			attack = 3, 
			defense = 1, 
			hp = 4,
		},
		EXP = 0,
		LVL = 1,
		status = {
			status_effects = {}
		},
		move = {
			moves.wrath,
			moves.poison_powder,
			moves.scratch, 
		},
		-- cooldown for Irene's special move
		cooldown = {false, 0}, 
	},
}

-- set actual stats
for k, v in pairs(characters) do 
	characters[k].status.hp = characters[k].stats.hp * 100
	characters[k].status.defense = characters[k].stats.defense * 5
	characters[k].status.attack = characters[k].stats.attack * 5
end

return characters