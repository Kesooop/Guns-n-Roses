SMODS.Joker {
  key = "crown_royal",
  config = {
    extra = {
      suit = "Diamonds",
      amount = 5,
      remaining = 5,
      upgrade = "perma_roses_balance",
    }
  },
  rarity = 2,
  pos = { x = 2, y = 1 },
  atlas = "jokers",
  cost = 6,
  unlocked = true,
  discovered = false,
  blueprint_compat = true,
  eternal_compat = false,
  perishable_compat = false,
  soul_pos = nil,
  pools = {
    Food = true
  },
  paperback = {
    suit_drink = true
  },
  paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },

 loc_vars = function(self, info_queue, card)
  return {
    vars = {
      card.ability.extra.remaining,
      localize(card.ability.extra.suit, 'suits_plural'),
      card.ability.extra.amount,
      colours = { G.C.SUITS[card.ability.extra.suit] }
    },
  }
end,
calculate = function(self, card, context)
  if context.individual and context.cardarea == G.play then
    if SMODS.has_enhancement(context.other_card, "m_wild") then
      if card.ability.extra.remaining > 0 then
        context.other_card.ability[card.ability.extra.upgrade] =
            (context.other_card.ability[card.ability.extra.upgrade] or 1) + card.ability.extra.amount

        if not context.blueprint then
          card.ability.extra.remaining = card.ability.extra.remaining - 1
        end

        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.SUITS[card.ability.extra.suit],
        }
      end
    end
  end

  if context.after and not context.blueprint and card.ability.extra.remaining == 0 then
    PB_UTIL.destroy_joker(card)

    return {
      message = localize('paperback_consumed_ex'),
      colour = G.C.RED,
      message_card = card
    }
  end
end

}
