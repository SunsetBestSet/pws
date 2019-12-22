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
		local damage = user.status.attack * move.strength * effectiveness * .5 - .5 * target.status.defense
		target.status.hp = target.status.hp - damage
		if target.status.hp < 0 then target.status.hp = 0 end
	end,
	dance = function(target)
		-- we scrapping this move lmao
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
	addeffect = function (target, effect)
		local affected = false
		for k, v in pairs(target.status.status_effects) do 
			if target.status.status_effects[k][1] == effect then 
				affected = true
				Talkies.say("GAME", target.name .. " is already " .. effect .. "!")
			end
		end
		if not affected then 
			table.insert(target.status.status_effects, {effect, 3})
		end
	end
}