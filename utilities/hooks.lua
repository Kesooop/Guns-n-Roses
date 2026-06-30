---@diagnostic disable: duplicate-set-field 
--took the code from paperback
-- Initializes default values in the game object
local init_game_object_ref = Game.init_game_object
function Game.init_game_object(self)
  local ret = init_game_object_ref(self)
  ret.roses = {
    permabalance = 0
  }

  return ret
end