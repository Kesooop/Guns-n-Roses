SMODS.Joker {
    key = 'the_navidson_record',
    atlas = 'jokers',
    pos = {
        x = 2,
        y = 1
    },
    config ={
        extra = {
            xmult = 1,
            multscale = 0.1,
            poker_hands = 'Full House'
        }
    },
    rarity = 2,
    cost = 8,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                card.ability.extra.multscale,
                card.ability.extra.poker_hands
            }
        }
    end,
    calculate = function(self, card, context)
    if context.before and not context.blueprint and next(context.poker_hands[card.ability.extra.poker_hands]) then
            local suit = false
      for _, v in ipairs(context.scoring_hand) do
        suit = suit or PB_UTIL.is_non_suit(v, 'dark', true)
      end
      if not suit then
        SMODS.scale_card(card, {
          ref_table = card.ability.extra,
          ref_value = 'xmult',
          scalar_value = 'multscale',
        })
        return 
        nil, true
      end
    end
    if context.joker_main then
      return {
        xmult = card.ability.extra.xmult
      }
    end
    end
}
