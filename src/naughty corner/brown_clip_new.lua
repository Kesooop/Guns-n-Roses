PB_UTIL.Paperclip {
  key = 'brown_clip',
  atlas = 'paperclips',
  pos = { x = 1, y = 0 },
  badge_colour = G.C.ROSES_BROWN,
  special = false,
  config = {
    clips = 0,
    clips_mod = 1,
    clips_max = 8,
    money = 5
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability[self.key].clips,
        card.ability[self.key].clips_mod,
        card.ability[self.key].clips_max,
        card.ability[self.key].money,
      }
    }
  end,
calculate = function (self, card, context)

  local to_destroy = {}
  for _, v in ipairs(G.playing_cards or {}) do
    if v.ability.roses_brown_clip and card.ability[self.key].clips > (card.ability[self.key].clips_max - 1) then
      v.paperback_no_destroy_calc = true
      to_destroy[#to_destroy + 1] = v
    end

    if  #to_destroy > 0 then
    card:add_sticker('paperback_temporary', true)

  end
      if context.end_of_round and #to_destroy > 0 then
    return {
      dollars = card.ability[self.key].money 
    }
  end
    end
  end
}