PB_UTIL.Paperclip {
  key = 'brown_clip',
  atlas = 'paperclips',
  pos = { x = 1, y = 0 },
  badge_colour = G.C.ROSES_BROWN,
  special = false,
  config = {
    odds = 0,
    odds_mod = 1
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability[self.key].odds,
        card.ability[self.key].odds_mod,
      }
    }
  end,
  calculate = function(self, card, context)
  if context.mod_probability  and context.trigger_obj == card then
    return {
      numerator = context.numerator + card.ability[self.key].odds
    }
  end
    if context.playing_card_end_of_round then
    return {
      card.ability[self.key].odds == 0
    }
  end
end
}

