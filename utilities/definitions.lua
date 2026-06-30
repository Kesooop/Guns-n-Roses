SMODS.current_mod.calculate = function(self, context)
		if context.individual and context.cardarea == G.play and context.other_card.ability.perma_roses_balance ~= 0 then
      return {
      aij_balance_percent = context.other_card.ability.perma_roses_balance * 0.01
     }
  end
end