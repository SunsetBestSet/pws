function link:move()
	
		local x, y = link.x, link.y
		-- move right
		if down.d then
			link.x = link.x + link.speed
		end

		-- move left
		if down.a then
			link.x = link.x - link.speed
		end

		-- move up
		if down.w then
			link.y = link.y - link.speed
		end

		-- move down
		if down.s then
			link.y = link.y + link.speed
		end

		-- stop at walls
		if link.x <= 60 or link.x >= 365 or link.y >= 332 or link.y <= 40 then
		link.x, link.y = x, y
		end
	
end