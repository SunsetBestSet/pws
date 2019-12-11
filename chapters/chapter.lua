Chapter = Object:extend()
require "chapters/chapter-1/chapter1"

function Chapter:new(player, maps)
	self.player = player
	self.maps = maps
end