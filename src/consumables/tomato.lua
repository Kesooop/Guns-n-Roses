SMODS.ConsumableType {
    key = 'roses_botany',
    primary_colour = HEX('77743b'),
    secondary_colour = HEX('d2c9a5'),
    default = 'c_roses_tomato',
    shop_rate = 0,
}
SMODS.Consumable{
    key = 'tomato',
    atlas = 'consumables',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            balance = 2,
            max_highlighted = 2
        }
    },
    set = 'roses_botany',

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.balance
            }
        }
    end,

    use = function(self, card, area, copier)
        for k, v in pairs(G.hand.highlighted) do
            local highlighted_card = v

            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.1,
                func = function()
                    highlighted_card.ability.perma_roses_balance =
                        highlighted_card.ability.perma_roses_balance or 0

                    highlighted_card.ability.perma_roses_balance =
                        highlighted_card.ability.perma_roses_balance + 2

                    return true
                end
            }))
        end
    end,

    can_use = function(self, card)
        return #G.hand.highlighted > 0
            and #G.hand.highlighted <= card.ability.extra.max_highlighted
    end
}