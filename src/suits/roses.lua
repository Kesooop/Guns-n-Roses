SMODS.Suit{
    key = 'Roses',
    card_key = 'ROSE',
    hidden = true,

    lc_atlas = 'lc_cards',
    hc_atlas = 'hc_cards',

    lc_ui_atlas = 'lc_suits',
    hc_ui_atlas = 'hc_suits',

    pos = { x = 0, y = 0 },
    ui_pos = { x = 0, y = 0 },

    lc_colour = HEX('f03464'),
    hc_colour = HEX('f03464'),

    in_pool = function(self, args)
        if args and args.initial_deck then
            return false
        end
    end
}