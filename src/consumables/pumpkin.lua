SMODS.Consumable{
    key = 'pumpkin',
    atlas = 'consumables',
    pos = {
        x = 5,
        y = 0
    },
    config = {
        extra = {
            xmoney = 0.1,
            max_highlighted = 2
        }
    },
    set = 'roses_botany',

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmoney
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
                    highlighted_card.ability.perma_roses_x_money =
                        highlighted_card.ability.perma_roses_x_money or 0

                    highlighted_card.ability.perma_roses_x_money =
                        highlighted_card.ability.perma_roses_x_money + 0.1

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