PB_UTIL.MinorArcana {
  key = 'queen_of_relics',
  config = {
    min_highlighted = 2,
    max_highlighted = 2,
    extra = {
      rank_change = 2
    }
  },
  attributes = {
    'modify_card',
    'destroy_card'
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
        card.ability.min_highlighted,
        card.ability.extra.rank_change
      }
    }
  end,

  use = function(self, card, area)
    local left = G.hand.highlighted[1]
    local right = G.hand.highlighted[2]

    -- Make it position based
    if right.T.x < left.T.x then
      local swap = left
      left = right
      right = swap
    end

PB_UTIL.use_consumable_animation(card, G.hand.highlighted, function()
  local rank = card.ability.extra.rank_change
SMODS.modify_rank(left, rank)
SMODS.modify_rank(right, -rank)
    end)
  end
}