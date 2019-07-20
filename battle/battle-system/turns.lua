function start_battle(enemy, player)
	print("hp player: " .. player.status.hp)
	print("hp enemy: " .. enemy.status.hp)
end

function turn(enemy, player)
	player.move[selection].attack(enemy, player, player.move[selection])
	check_hp(enemy, player)
	print('!')
end

function select_move(player)
	local move1 = player.move[1]
	local move2 = player.move[2]
	local move3 = player.move[3]
	text = ""
	if selection == 1 then
		text = "> ".. move1.name .. "    " .. move2.name .. "    " .. move3.name
	elseif selection == 2 then
		text = move1.name .. "  > " .. move2.name .. "    " .. move3.name
	elseif selection == 3 then
		text = move1.name .. "    " .. move2.name .. "  > " .. move3.name
	end
	love.graphics.print(text, 0, 0)
end

function check_hp(enemy, player)
	print("hp player: " .. player.status.hp)
	print("hp enemy: " .. enemy.status.hp)
end