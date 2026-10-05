SMODS.Joker {
    key = 'calendar',
    atlas = 'jokers',
    pos = {
        x = 0,
        y = 0
    },
    config ={
        extra = {
            mult = 0,
            multscale = 2
        }
    },
    rarity = 1,
    cost = 6,
  loc_vars = function(self, info_queue, card) -- taken from vanilla remade 
        local calendar_card = G.GAME.current_round.roses_calendar_card or { rank = 'Ace', suit = 'Spades' }
        return { 
            vars = { 
                card.ability.extra.mult,
                card.ability.extra.multscale,
                localize(calendar_card.rank, 'ranks')
            } 
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == G.GAME.current_round.roses_calendar_card.id then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.multscale
                 return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT,
                message_card = card
            }
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
local function reset_roses_calendar_card()
    G.GAME.current_round.roses_calendar_card = { rank = 'Ace', suit = 'Spades' }
    local valid_calendar_cards = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
            valid_calendar_cards[#valid_calendar_cards + 1] = playing_card
        end
    end
    local calendar_card = pseudorandom_element(valid_calendar_cards, 'roses_calendar' .. G.GAME.round_resets.ante)
    if calendar_card then
        G.GAME.current_round.roses_calendar_card.rank = calendar_card.base.value
        G.GAME.current_round.roses_calendar_card.suit = calendar_card.base.suit
        G.GAME.current_round.roses_calendar_card.id = calendar_card.base.id
    end
end
function SMODS.current_mod.reset_game_globals(run_start)
    reset_roses_calendar_card()
end