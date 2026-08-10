PB_UTIL.MinorArcana {
  key = 'nine_of_relics',
  config = {
    max_highlighted = 3,
    extra = {
    perma_h_chips = 30,
    perma_h_mult = 7,
    perma_h_dollars = 1,
    perma_h_x_chips = 0.2,
    perma_h_x_mult = 0.2,
    perma_roses_h_balance = 3,
    perma_paperback_h_plus_odds = 1,
    perma_bonus = 20,
    perma_mult = 5,
    perma_p_dollars = 1,
    perma_x_chips = 0.1,
    perma_x_mult = 0.1,
    perma_roses_balance = 2,
    perma_paperback_plus_odds = 1
    }
  },
  atlas = 'consumables',
  pos = { x = 5, y = 0 },
  paperback = {
    requires_paperclips = false
  },
   paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.max_highlighted,
      }
    }
  end,

    use = function(self, card, area, copier)
      local base = 0
        local value = pseudorandom_element({
        "perma_h_chips",
        "perma_h_mult",
        "perma_h_x_chips",
        "perma_h_x_mult",
        "perma_h_dollars",
        "perma_roses_h_balance",
        "perma_paperback_h_plus_odds",
        "perma_bonus",
        "perma_mult",
        "perma_x_chips",
        "perma_x_mult",
        "perma_p_dollars",
        "perma_roses_balance",
        "perma_paperback_plus_odds"
},'ace_of_relics')
        PB_UTIL.use_consumable_animation(card, G.hand.highlighted, function()
        for k, v in pairs(G.hand.highlighted) do
            local highlighted_card = v
                    highlighted_card.ability[value] =
                        (highlighted_card.ability[value] or base) + card.ability.extra[value]
        end
    end)
end
}
