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
	hypnotise = function (target) 
		table.insert(target.status_effects, "sleeping")
	end
}