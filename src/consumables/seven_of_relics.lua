PB_UTIL.MinorArcana {
  key = 'seven_of_relics',
  atlas = 'consumables',
  pos = { x = 6, y = 0 },
  config = {
    extra = {
      required = 7
    }
  },
  paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
card.ability.extra.required
      }
    }
  end,

  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    local apostle = pseudorandom_element({
        "c_paperback_apostle_of_cups",
        "c_paperback_apostle_of_wands",
        "c_paperback_apostle_of_swords",
        "c_paperback_apostle_of_pentacles",
        "c_roses_apostle_of_relics",
},'seven_of_relics')

if G.GAME.seven_of_relics_count ~= card.ability.extra.required - 1 then
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('timpani')
            card:juice_up(0.3, 0.5)
            G.GAME.seven_of_relics_count = (G.GAME.seven_of_relics_count or 0) + 1
            return true end }))
        delay(0.6)
    else
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            func = function()
        if G.GAME.seven_of_relics_count == card.ability.extra.required - 1 then
            play_sound('timpani')
            local copy = SMODS.create_card {key = apostle}
            copy:add_sticker('paperback_energized', true)
            copy:add_to_deck()
            G.consumeables:emplace(copy)
            G.GAME.seven_of_relics_count = 0
            card:juice_up(0.3, 0.5)
        end
    return true
end
}))
delay(0.6)
end
end,
}
