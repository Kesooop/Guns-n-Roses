PB_UTIL.Paperclip {
  key = 'indigo_clip',
  atlas = 'paperclips',
  pos = { x = 3, y = 0 },
  badge_colour = G.C.ROSES_INDIGO,
  special = false,
  config = {
    num_mod = 1,
    numerator = 0,
    denominator = 8,
    active = true
  },

  loc_vars = function(self, info_queue, card)
    local active, colours

    if card.ability[self.key].active then
      active = localize('k_active')
      colours = { G.C.FILTER }
    else
      active = localize('paperback_inactive')
      colours = { G.C.UI.TEXT_INACTIVE }
    end

    local num, den = SMODS.get_probability_vars(card, card.ability[self.key].numerator,
      card.ability[self.key].denominator, "indigo_clip") -- i dont remeber this bemg used in other like thingies that used odds but whatever
    return {
      vars = {
        num ,
        den,
        card.ability[self.key].num_mod,
active
      }
    }
  end,
  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.hand  and card.ability[self.key].active == true and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local clips = PB_UTIL.count_paperclips { area = G.play }
      local planet = PB_UTIL.get_planet_for_hand(context.scoring_name)
      card.ability[self.key].numerator = card.ability[self.key].numerator + clips

      if SMODS.pseudorandom_probability(card, "indigo_clip", card.ability[self.key].numerator, card.ability[self.key].denominator, "indigo_clip") and 
      planet == PB_UTIL.get_planet_for_hand(context.scoring_name) and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        card.ability[self.key].active = false
        return {
          message = localize("k_plus_planet"),
          colour = G.C.SECONDARY_SET.Planet,
          message_card = card,
          func = function()
            G.E_MANAGER:add_event(Event({
              func = function()
                SMODS.add_card { key = planet }
                G.GAME.consumeable_buffer = 0
                return true
              end
            }))
          end,
          
        }
      end
    end

    if context.after and context.cardarea == G.hand then
      G.E_MANAGER:add_event(Event({
        trigger = "after",
        func = function()
          if card.ability[self.key] then
            card.ability[self.key].numerator = 0
            return true
          end
          return true
        end
      }))
    end
    if context.drawing_cards then
      card.ability[self.key].active = true
    end
  end
}

