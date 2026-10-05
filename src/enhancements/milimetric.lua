SMODS.Enhancement {
    key = 'milimetric',
    atlas = 'enhancements',
    pos = {
        x = 1,
        y = 0
    },
    config ={
            xmult = 1,
            xmult_mod = 0.1
    },
        loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.xmult,
                card.ability.xmult_mod
            } 
        }
    end,
            calculate = function(self, card, context)
    if context.discard and context.other_card == card then
      card.ability.xmult = card.ability.xmult + card.ability.xmult_mod
      return {
      }
    end

    if context.cardarea == G.play and context.main_scoring then
      return {
        xmult = card.ability.xmult,
      }
    end
    if context.final_scoring_step and context.other_card == card then
        card.ability.xmult = 1
      return {
      }
    end
  end
}