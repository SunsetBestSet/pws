return {
	swap_health = function swap_hp(user, target) 
		user.hp, target.hp = target.hp, user.hp
	end
}