SMODS.current_mod.calculate = function(self, context)
		if context.individual and context.cardarea == G.play and context.other_card.ability.perma_roses_balance ~= 0 then
      return {
      aij_balance_percent = context.other_card.ability.perma_roses_balance * 0.01
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
          clip_table.clips = math.max(0, clip_table.clips + clip_table.clips_mod)
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
          clip_table.clips = 0
          clip_table.handsize = 0
      end
    end
  end
end
end