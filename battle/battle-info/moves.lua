local attack = require 'battle-info/subattacks'
local status = require 'battle-info/status'
local move_info = require 'battle-info/move_stats'

return {
	scratch = function(target, user, move)
		attack.damage(target, user, move)
	end,
	humiliate = attack.humiliate,
	poison_powder = function(target, user)
		attack.addeffect(target, "poisoned")
		attack.damage(target, user, move_info[poison_powder])
	end,
	heart_swap = attack.swap_health,
	captivating_curse = attack.curse,
	flower_dance = function(target)
		attack.addeffect(target, "poisoned")
		attack.lowerDefense(target, move_info.flower_dance.amount)
	end,
	wrath = function(target, user)
		if not user.cooldown[1] then
			local wrath = move_info[wrath]
			attack.lowerDefense(target, wrath.amount)
			attack.lowerAttack(target, wrath.amount)
			attack.damage(target, user, wrath)
		else
			-- Display "You can't use this move anymore!"
		end 
	end,
	hypnosis = attack.setToSleep,
	meditate = function(user)
		attack.raiseAttack(user, move_info.meditate.amount)
	end,
	sunsteel_strike = function(target, user)
		attack.damage(target, user, move_info.sunsteel_strike)
	end,
	moonblast = function(target, user)
		attack.damage(target, user, move_info[moonblast])
	end,
	telekinesis = function(target, user)
		attack.damage(target, user, move_info[telekinesis])
	end,
	dance = function(target)
		-- idk how to do this yet lol
	end,
	floral_healing = attack.heal,
	screech = function(target)
		attack.lowerDefense(target, move_info[screech].amount)
	end,
	calamity = function(target)
		attack.addeffect(target, "poisoned")
		attack.addeffect(target, "sleeping")
	end,
	drain = attack.drain,
	heal = attack.heal,
}