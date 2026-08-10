PB_UTIL.Paperclip {
  key = 'magenta_clip',
  atlas = 'paperclips',
  pos = { x = 2, y = 0 },
  badge_colour = G.C.ROSES_MAGENTA,
    config = {
    balance_base = 0,
    balance_mod = 2,
    balance_hand_base = 0,
    balance_hand_mod = 2
  },

  loc_vars = function(self, info_queue, card)
    local clips = PB_UTIL.count_paperclips {
      area = G.hand,
      exclude_highlighted = true
    }

    return {
      vars = {
        card.ability[self.key].balance_mod,
        card.ability[self.key].balance_base + clips * card.ability[self.key].balance_mod,
        card.ability[self.key].balance_hand_mod,
        card.ability[self.key].balance_hand_base
      }
    }
  end,

  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.play then
      local clips = PB_UTIL.count_paperclips { area = G.hand }

      if clips > 0 then
        return {
          aij_balance_percent = card.ability[self.key].balance_base + clips * card.ability[self.key].balance_mod * 0.01
        }
      end
    end
    if context.paperback and context.paperback.clip_scored then
      card.ability[self.key].balance_hand_base = card.ability[self.key].balance_hand_base + card.ability[self.key].balance_hand_mod
    end

    if context.main_scoring and context.cardarea == G.hand then
      local balance_hand_base = card.ability[self.key].balance_hand_base

      if balance_hand_base ~= 0 then
        return {
          aij_balance_percent = balance_hand_base * 0.01
        }
      end
    end

    if context.after then
      card.ability[self.key].balance_hand_base = 0
    end
  end
}
