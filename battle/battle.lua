Battle = Game:extend()

function Rect:new()
  Rect.super.new(self)
  self.move_info = require 'battle-info/move_info'
end