SMODS.Joker {
    key = 'crown_royal',
    atlas = 'jokers',
    pos = {
        x = 2,
        y = 1
    },
    config ={
        extra = {
            chips = 100
        }
    },
    rarity = 1,
    cost = 5,
    loc_vars = function (self, info_queue, card)
        return{
            vars = {
                card.ability.extra.chips
            }
        }
        
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}