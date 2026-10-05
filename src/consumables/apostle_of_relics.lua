SMODS.Consumable {
  key = 'apostle_of_relics',
  config = {
    extra = {
      shop_mod = 1, --theres gotta be a better way to do all this
      booster_mod = 1,
      voucher_mod = 1,
      shopminus = 0,
      boostminus = 0,
      vouchminus = 0
    }
  },
  attributes = {
  },
  set = "Spectral",
  atlas = 'consumables',
  pos = { x = 2, y = 0 },

  hidden = true,
  soul_set = "paperback_minor_arcana",
  soul_rate = 0.001,

  can_use = function(self, card)
    return true
  end,

  loc_vars = function(self, info_queue, card)
    local shopminus = G.GAME.apostle_shopminus or 0
    local boostminus = G.GAME.apostle_boostminus or 0
    local vouchminus = G.GAME.apostle_vouchminus or 0
    return {
      vars = {
        card.ability.extra.shop_mod - shopminus,
        card.ability.extra.booster_mod - boostminus,
        card.ability.extra.voucher_mod - vouchminus,
      }
    }
  end,

use = function(self, card, context )
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            func = function()
              G.GAME.apostle_of_relics_count = G.GAME.apostle_of_relics_count or 0
              G.GAME.apostle_shopminus = G.GAME.apostle_shopminus or 0
              G.GAME.apostle_boostminus = G.GAME.apostle_boostminus or 0
              G.GAME.apostle_vouchminus = G.GAME.apostle_vouchminus or 0
                  local shopminus = G.GAME.apostle_shopminus
                  local boostminus = G.GAME.apostle_boostminus
                  local vouchminus = G.GAME.apostle_vouchminus
              local count = G.GAME.apostle_of_relics_count
              if count == 0 then
                    play_sound('timpani')
                     change_shop_size(card.ability.extra.shop_mod)
                     SMODS.change_booster_limit(card.ability.extra.booster_mod)
                     SMODS.change_voucher_limit(card.ability.extra.voucher_mod)
                     G.GAME.apostle_shopminus = shopminus + 1
              elseif count == 1 then
                  play_sound('timpani')
                     change_shop_size(card.ability.extra.shop_mod)
                     SMODS.change_booster_limit(card.ability.extra.booster_mod)
                     G.GAME.apostle_boostminus = boostminus+1
                elseif count == 2 then
                  play_sound('timpani')
                     change_shop_size(card.ability.extra.shop_mod)
                     G.GAME.apostle_vouchminus = vouchminus + 1
                  else
                  play_sound('timpani')
                    PB_UTIL.show_nope_text(card, G.C.PAPERBACK_MINOR_ARCANA)
                    end
                     G.GAME.apostle_of_relics_count = count + 1
                     card:juice_up(0.3, 0.5)
                return true
            end
  }))
delay(0.6)
end
}
