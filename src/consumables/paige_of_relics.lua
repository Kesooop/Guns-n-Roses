PB_UTIL.MinorArcana {
  key = 'paige_of_relics',
  atlas = 'consumables',
  pos = { x = 3, y = 0 },
  paperback = {
    requires_paperclips = false
  },
   paperback_credit = {
    coder = { 'kesooop' },
    artist = { 'kesooop' }
  },
  loc_vars = function(self, info_queue, card)
        local paige_of_relics_c = G.GAME.roses_last_minor_arcana and G.P_CENTERS[G.GAME.roses_last_minor_arcana] or nil
        local last_minor_arcana = paige_of_relics_c and localize { type = 'name_text', key = paige_of_relics_c.key, set = paige_of_relics_c.set } or localize('k_none')
        local color = (not paige_of_relics_c or paige_of_relics_c.key == 'c_roses_paige_of_relics') and G.C.RED or G.C.GREEN
        if not (not paige_of_relics_c or paige_of_relics_c.key == 'c_roses_paige_of_relics') then
            info_queue[#info_queue+1] = paige_of_relics_c
        end

        local main_end = {
            {
                n = G.UIT.C,
                config = { align = "bm", padding = 0.02 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "m", colour = color, r = 0.05, padding = 0.05 },
                        nodes = {
                            { n = G.UIT.T, config = { text = ' ' .. last_minor_arcana .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.3, shadow = true } },
                        }
                    }
                }
            }
        }

        return { vars = { last_minor_arcana, colours = { HEX("ff98e2") } }, main_end = main_end }
    end,
    use = function(self, card, context, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            func = function()
                if G.consumeables.config.card_limit > #G.consumeables.cards then
                    play_sound('timpani')
                    SMODS.add_card({ key = G.GAME.roses_last_minor_arcana })
                    card:juice_up(0.3, 0.5)
                end
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return (#G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables) and G.GAME.roses_last_minor_arcana and G.GAME.roses_last_minor_arcana ~= 'c_roses_paige_of_relics'
    end
}