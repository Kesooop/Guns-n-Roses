PB_UTIL.Paperclip {
  key = 'brown_clip',
  atlas = 'paperclips',
  pos = { x = 1, y = 0 },
  badge_colour = G.C.ROSES_BROWN,
  special = true,
  config = {
    handsize = 0,
    handsize_mod = 1,
    handsize_max = 16,
    clips = 0,
    clips_mod = 1,
    clips_max = 8 --change to 16
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability[self.key].handsize,
        card.ability[self.key].handsize_mod,
        card.ability[self.key].clips,
        card.ability[self.key].clips_mod,
        card.ability[self.key].clips_max,
        card.ability[self.key].handsize_max
      }
    }
  end,
calculate = function(self, card, context)
    if context.cardarea == G.hand and card.ability[self.key].clips > (card.ability[self.key].clips_max - 1) and G.hand.config.card_limit < card.ability[self.key].handsize_max then
      card.ability[self.key].handsize = card.ability[self.key].handsize_mod
      card.ability[self.key].clips = card.ability[self.key].clips_max
      card.ability.card_limit = card.ability[self.key].handsize
    end


    if context.cardarea == G.hand and card.ability[self.key].clips < (card.ability[self.key].clips_max - 1) then
      card.ability[self.key].handsize = 0
      card.ability.card_limit = card.ability[self.key].handsize
    end

  end

}

