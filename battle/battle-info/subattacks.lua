return {
	humiliate = function (target) 
		table.insert(target.status_effects, "humiliated")
	end
	swap_health = function (user, target) 
		user.hp, target.hp = target.hp, user.hp 
	end,
	poison = function (target)
		table.insert(target.status_effects, "poisoned")
	end,
	curse = function (user, target)
		user.curser = true
		user.cursing = target

		target.cursed = true
		target.cursedBy = user
	end,
	setToSleep = function (target) 
		table.insert(target.status_effects, "sleeping")
	end,
	raiseAttack = function(user) 
		user.attack = user.attack * 1.2
	end,
	damage = function(user, target, move)
		local damage = user.attack * move.strength * 0.01
		target.hp = target.hp * (1 - damage)
	end,
}