PB_UTIL.MinorArcana {
  key = 'six_of_relics',
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
    info_queue[#info_queue + 1] = G.P_TAGS.tag_double
  end,

  can_use = function(self, card)
    return true
  end,

  use = function(self, card)
    PB_UTIL.use_consumable_animation(card, nil, function()
      local key = SMODS.Tags.tag_double and 'tag_double'
      PB_UTIL.add_tag(key)
    end)
  end
}
