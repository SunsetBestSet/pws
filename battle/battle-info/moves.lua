--move_info = require 'battle-info/move_info'
attack = require 'battle-info/subattacks'
status = require 'battle-info/status'

return {
	scratch = function(target, user)
		attack.damage(user, target, move_info["scratch"])
	end,
	humiliate = attack.humiliate,
	poison_powder = function(target, user, move)
		attack.poison(target)
		attack.damage(target, user, move)
	end,
	heart_swap = attack.swap_health,
	captivating_curse = attack.curse,
	flower_dance = function(target)
		attack.poison(target)
		attack.lowerDefense(target, move_info["flower_dance"].amount)
	end,
}