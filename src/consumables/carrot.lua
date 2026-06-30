


SMODS.Consumable {
    key = 'carrot',
    atlas = 'consumables',
    pos = {
        x  = 1,
        y = 0
    },
    config = {
        extra = {
dollars = 10
        }
    },
    set = 'roses_botany',
        loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollars
            }
        }
    end,
    use = function(self, card, area, copier)
        ease_dollars(card.ability.extra.dollars)
    end,
    can_use = function(self, card)
        return G.GAME.blind
    end,
}