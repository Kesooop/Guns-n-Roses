PB_UTIL.MinorArcana {
  key = 'four_of_relics',
  config = {
    extra = {
    money = 1,
    card_denom = 4
    }
  },
  atlas = 'consumables',
  pos = { x = 3, y = 0 },
  paperback = {
    requires_paperclips = false
  },
   paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },
    loc_vars = function(self, info_queue, card)
        local cards = G.playing_cards and #G.playing_cards or 0
    return {
      vars = {
        card.ability.extra.money,
        card.ability.extra.card_denom,
        math.ceil(
          card.ability.extra.money * (cards / card.ability.extra.card_denom))

      }
    }
  end,
      can_use = function(self, card)
    return true
  end,
  use = function(self, card, area)
      local cards = #G.playing_cards
      G.E_MANAGER:add_event(Event {
      trigger = 'after',
      delay = 0.4,
      func = function()
        if cards > 0 then
          ease_dollars(math.ceil(cards / card.ability.extra.card_denom))
        return true
      end
      return true
    end
    })
end
}