PB_UTIL.Paperclip {
  key = 'brown_clip',
  atlas = 'paperclips',
  pos = { x = 1, y = 0 },
  badge_colour = G.C.ROSES_BROWN,
  config = {
    x_chips_base = 1,
    x_chips_mod = 0.1
  },

  loc_vars = function(self, info_queue, card)
    local clips = PB_UTIL.count_paperclips {
      area = G.hand,
      exclude_highlighted = true
    }

    return {
      vars = {
        card.ability[self.key].x_chips_mod,
        card.ability[self.key].x_chips_base + clips * card.ability[self.key].x_chips_mod
      }
    }
  end,

  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.play then
      local clips = PB_UTIL.count_paperclips { area = G.hand }

      if clips > 0 then
        return {
          x_chips = card.ability[self.key].x_chips_base + clips * card.ability[self.key].x_chips_mod
        }
      end
    end
  end
}
