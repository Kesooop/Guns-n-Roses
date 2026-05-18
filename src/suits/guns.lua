SMODS.Suit{
    key = 'Guns',
    card_key = 'GUN',
    hidden = true,

    lc_atlas = 'lc_cards',
    hc_atlas = 'hc_cards',

    lc_ui_atlas = 'lc_suits',
    hc_ui_atlas = 'hc_suits',

    pos = { x = 0, y = 1 },
    ui_pos = { x = 1, y = 0 },

    lc_colour = HEX('4c355e'),
    hc_colour = HEX('4c355e'),

    in_pool = function(self, args)
        if args and args.initial_deck then
            return false
        end
    end
}