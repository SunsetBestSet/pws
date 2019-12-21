return {
	humiliate = function (target) 
		table.insert(target.status.status_effects, {"humiliated", 3})
	end,
	swap_health = function (target, user) 
		user.status.hp, target.status.hp = target.status.hp, user.status.hp 
	end,
	poison = function (target)
		table.insert(target.status.status_effects, {"poisoned", 3})
	end,
	curse = function (target, user)
		user.curser = true
		user.cursing = target

		target.cursed = true
		target.cursedBy = user
	end,
	setToSleep = function (target) 
		table.insert(target.status.status_effects, {"sleeping", 3})
	end,
	raiseAttack = function(user, amount)
		user.status.attack = user.status.attack + amount
	end,
	raiseDefense = function(user, amount) 
		user.status.defense = user.status.defense + amount
	end,
	lowerAttack = function(target, amount)
		target.status.attack = target.status.attack - amount
	end,
	lowerDefense = function(target, amount)
		target.status.defense = target.status.defense - amount
	end,
	damage = function(target, user, move) -- effectiveness of attacks. magic relations
		if (target.magic == 'green' and user.magic == 'purple') or (target.magic == 'blue' and user.magic == 'green') or (target.magic == 'purple' and user.magic == 'blue') then
			effectiveness = 1.5
		elseif (target.magic == 'purple' and user.magic == 'green') or (target.magic == 'green' and user.magic == 'blue') or (target.magic == 'blue' and user.magic == 'purple') then
		    effectiveness = 0.75
		else
			effectiveness = 1
		end
		local damage = user.stats.attack * move.strength * effectiveness * 0.01 
		target.status.hp = target.status.hp * (1 - damage)
	end,
	dance = function(target)
		-- idk how to do this yet
	end,
	drain = function(target, user)
		local damage = target.status.hp / 2
		target.status.hp = target.status.hp - damage
		user.status.hp = user.status.hp + damage
	end,
	heal = function(target)
		local heal = target.stats.hp * 0.5 * 100
		if heal < target.status.hp then
		else
		target.status.hp = target.stats.hp * 0.5 * 100
		end
	end,
}