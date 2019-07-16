return {
	humiliate = function (target) 
		table.insert(target.status_effects, "humiliated")
	end,
	swap_health = function (target, user) 
		user.hp, target.hp = target.hp, user.hp 
	end,
	poison = function (target)
		table.insert(target.status_effects, "poisoned")
	end,
	curse = function (target, user)
		user.curser = true
		user.cursing = target

		target.cursed = true
		target.cursedBy = user
	end,
	setToSleep = function (target) 
		table.insert(target.status_effects, "sleeping")
	end,
	raiseAttack = function(user, amount)
		user.attack = user.attack + amount
	end,
	raiseDefense = function(user, amount) 
		user.defense = user.defense + amount
	end,
	lowerAttack = function(target, amount)
		target.attack = target.attack - amount
	end,
	lowerDefense = function(target, amount)
		target.defense = target.defense - amount
	end,
	damage = function(target, user, move)
		local damage = user.attack * move_info.strength * 0.01
		target.hp = target.hp * (1 - damage)
	end,
	dance = function(target)
		-- idk how to do this yet
	end,
	drain = function(target, user)
		local damage = target.hp / 2
		target.hp = target.hp - damage
		user.hp = user.hp + damage
	end,
	heal = function(target)
		target.hp = target.stats.hp * 0.5 -- we moeten kijken hoe dit werkt precies
	end,
}