PB_UTIL.MinorArcana {
  key = 'two_of_relics',
  config = {
    extra = {
    money = 3,
    money_cap = 30
    }
  },
  atlas = 'consumables',
  pos = { x = 1, y = 0 },
  paperback = {
    requires_paperclips = true
  },
   paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },

  loc_vars = function(self, info_queue, card)
    local clips = PB_UTIL.count_paperclips {area = G.hand}
    return {
      vars = {
        card.ability.extra.money,
        math.min(
          card.ability.extra.money * (clips or 0),
          card.ability.extra.money_cap),
        card.ability.extra.money_cap
      }
    }
  end,
    can_use = function(self, card)
    return true
  end,

    use = function(self, card, area)
      local clips = PB_UTIL.count_paperclips {area = G.hand}
      G.E_MANAGER:add_event(Event {
      trigger = 'after',
      delay = 0.4,
      func = function()
        if clips > 0 then
          ease_dollars(math.min(card.ability.extra.money_cap, clips * card.ability.extra.money))
        return true
      end
      return true
    end
    })
end
}