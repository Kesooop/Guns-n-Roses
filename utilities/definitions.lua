SMODS.current_mod.calculate = function(self, context)
    if context.before then --credits to the peole over on the balatro server, mainly the #modding_dev lurkers and mainly somethingcom as he made pretty much the entire code
        for k, v in pairs(G.hand.cards) do
            if SMODS.has_enhancement(v, 'm_roses_rose_gold') then
                v.ability.roses_retrigger_card = pseudorandom_element(context.full_hand, 'seed').unique_val
            end
        end
    end
    if context.repetition and context.cardarea == G.play then
        local retriggers = {}
        for k, v in pairs(G.hand.cards) do
            if SMODS.has_enhancement(v, 'm_roses_rose_gold') then
                retriggers[v.ability.roses_retrigger_card] = retriggers[v.ability.roses_retrigger_card] or {}
                local reps = {1}
                SMODS.calculate_repetitions(v, {repetition = true, cardarea = G.hand, card_effects = {{}, {}}}, reps)
                for i, vv in ipairs(reps) do
                    table.insert(retriggers[v.ability.roses_retrigger_card], {repetitions = 1, message_card = v, pre_func = function()
                        if vv ~= 1 then
                            local eff = vv.retriggers
                            SMODS.calculate_effect(eff, eff.card)
                        end
                    end})
                end
            end
        end
        if retriggers[context.other_card.unique_val] and next(retriggers[context.other_card.unique_val]) then
            return SMODS.merge_effects(retriggers[context.other_card.unique_val])
        end
    end
		if context.individual and context.cardarea == G.play and context.other_card.ability.perma_roses_balance ~= 0 then
      return {
      aij_balance_percent = context.other_card.ability.perma_roses_balance * 0.01
     }
  end
  		if context.individual and context.cardarea == G.hand and context.other_card.ability.perma_roses_h_balance ~= 0 then
      return {
      aij_balance_percent = context.other_card.ability.perma_roses_h_balance * 0.01
     }
  end
		if context.individual and context.cardarea == G.play and context.other_card.ability.perma_roses_x_money ~= 0 then
      local money = math.floor(G.GAME.dollars * context.other_card.ability.perma_roses_x_money + 1)
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + money
      return {
      dollars = money - 1,
        remove_default_message = true,
        message = localize { type = 'variable', key = "a_aij_times_money", vars = { context.other_card.ability.perma_roses_x_money + 1 } },
        func = function() 
          G.E_MANAGER:add_event(Event({
            func = function()
              G.GAME.dollar_buffer = 0
                return true
            end
          }))
      end
     }
  end
if context.discard then
    if PB_UTIL.has_paperclip(context.other_card) and not context.other_card.debuff then
      for _, v in ipairs(G.playing_cards) do
        local clip = PB_UTIL.has_paperclip(v)
        if clip == "roses_brown_clip" and not v.debuff then
          local clip_table = v.ability.roses_brown_clip
          clip_table.odds = math.max(0, clip_table.odds + clip_table.odds_mod)
        end
      end
    end
  end
  if context.end_of_round then
    if PB_UTIL.has_paperclip(context.other_card) then
      for _, v in ipairs(G.playing_cards) do
        local clip = PB_UTIL.has_paperclip(v)
        if clip == "roses_brown_clip" and not v.debuff then
          local clip_table = v.ability.roses_brown_clip
          clip_table.odds = 0
      end
    end
  end
    if context.using_consumeable then
        if context.consumeable.ability.set == "paperback_minor_arcana" then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.GAME.roses_secondlast_minor_arcana = G.GAME.roses_last_minor_arcana or nil
                    G.GAME.roses_last_minor_arcana = context.consumeable.config.center_key
                    return true
                end
            }))
        end
    end
  end
end
PB_UTIL.ENABLED_MINOR_ARCANA = {
  "ace_of_relics",
  "two_of_relics",
  "three_of_relics",
  "four_of_relics",
  "five_of_relics",
  "six_of_relics",
  "seven_of_relics",
  "eight_of_relics",
  "nine_of_relics",
  "ten_of_relics",
  "paige_of_relics",
  "knight_of_relics",
  "queen_of_relics",
  "king_of_relics", -- RELICS
}
PB_UTIL.ENABLED_SPECTRALS = {
  "apostle_of_relics"
}