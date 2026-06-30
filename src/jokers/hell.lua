SMODS.Joker {
    key = 'hell',
    atlas = 'jokers',
    pos = {
        x = 2,
        y = 0
    },
    config ={
        extra = {
            xmult = 0.0,
            odds = 4,
            multscale = 0.1,
            reset = 0
        }
    },
    rarity = 3,
    cost = 8,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds)
        return {
            vars = {
                numerator, denominator,
                card.ability.extra.xmult,
                card.ability.extra.multscale
            }
        }
    end,
    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint and context.cardarea == G.play and SMODS.pseudorandom_probability(card, 'roses_hell', 1, card.ability.extra.odds) then
          card.ability.extra.multscale = card.ability.extra.multscale
         card.ability.extra.xmult = card.ability.extra.multscale + card.ability.extra.xmult
            return {
                remove = true

            }
        end
         if context.individual and context.cardarea == G.hand and context.end_of_round then
            context.other_card.ability.perma_x_mult = context.other_card.ability.perma_x_mult or 0
            context.other_card.ability.perma_x_mult = context.other_card.ability.perma_x_mult + card.ability.extra.xmult
            return {
                message = localize('k_upgrade_ex'), colour = G.C.MULT
            }
        end
        if context.round_eval then
            card.ability.extra.xmult = card.ability.extra.reset
        end
     
    end
}
