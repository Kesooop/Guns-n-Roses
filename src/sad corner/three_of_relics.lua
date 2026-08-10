PB_UTIL.MinorArcana {
  key = 'three_of_relics',
  config = {
    min_highlighted = 3,
    max_highlighted = 3
  },
  atlas = 'consumables',
  pos = { x = 3, y = 1 },
   paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.max_highlighted
      }
    }
  end,

  use = function(self, card)
    local cards = PB_UTIL.get_sorted_by_position(G.hand)
    local target = cards[#cards]

    PB_UTIL.use_consumable_animation(card, cards, function()
      for i = 1, #cards - 1 do
        PB_UTIL.set_paperclip(i, target.ability.paperclip)
      end
    end)
  end
}
