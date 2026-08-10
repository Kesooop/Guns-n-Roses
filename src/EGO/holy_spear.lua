PB_UTIL.EGO_Gift {
  key = 'holy_spear',
  config = {
    sin = 'indulgence',
    a_hand = 1,
  },
  atlas = 'ego',
  pos = { x = 0, y = 1 },
  soul_pos = { x = 0, y = 4 },
  paperback_credit = {
      artist = { 'kesooop' },
      coder = { 'kesooop' }
    },


  ego_gift_calc = function(self, card, context)
    if context.setting_blind then
      local selected_card = context.blueprint_card or card
      G.E_MANAGER:add_event(Event({
        func = function()
          ease_hands_played(card.ability.a_hand)
          SMODS.calculate_effect({
              message = localize { type = 'variable', key = 'a_hands', vars = { card.ability.a_hand } },
              colour = G.C.BLUE,
              instant = true
            },
            selected_card)
          return true
        end
      }))
      return nil, true
    end
  end,

  ego_loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.a_hand
      }
    }
  end,
}
