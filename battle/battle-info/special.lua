return {
	swap_health = function (user, target) 
		user.hp, target.hp = target.hp, user.hp 
	end,
	poison = function (target)
		--[[ 

		* check of target.status_effects leeg is
		- als het leeg is, maak target.status_effects = {"poisoned"}
		- als index 1 vol zit, ga naar index 2
		
		]]--
	end
}