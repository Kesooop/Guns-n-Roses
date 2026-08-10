PB_UTIL.MinorArcana {
  key = 'ten_of_relics',
  config = {
    max_highlighted = 5,
    extra = {
    numerator = 1,
    denominator = 2
    }
  },
  atlas = 'consumables',
  pos = { x = 1, y = 1 },
  paperback = {
    requires_paperclips = false
  },
   paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },
  loc_vars = function(self, info_queue, card)
        local num, den = SMODS.get_probability_vars(card, card.ability.extra.numerator, card.ability.extra.denominator)
    return { vars = {
      card.ability.max_highlighted,
      num,
      den
    } }
  end,
 
  use = function(self, card, area)
    local cards = {}

    for _, v in ipairs(G.hand.highlighted) do
      if SMODS.pseudorandom_probability(
            card,
            'ten_of_relics',
            card.ability.extra.numerator,
            card.ability.extra.denominator)
          then
        cards[#cards + 1] = v
      end
    end

    PB_UTIL.use_consumable_animation(card, nil, function()
      if #cards > 0 then
        SMODS.destroy_cards(cards)
      end
    end)
  end
}