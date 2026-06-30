return {
    descriptions = {
        Joker = {
            j_roses_joker1 = {
                name = 'Joker1',
                text = {
                    '{C:chips}+#1#{} chips'
                }
            },
            j_roses_joker2 = {
                name = 'Joker2',
                text = {
                    {
                        'Gives {C:money}$#1#{} for each',
                        'scoring {C:clubs}Clubs{} card'
                    },{
                        'Money scales by {C:attention}#2#',
                        'every trigger',
                        '{C:inactive}(Resets at end of round)'
                    }
                }
            },
            j_roses_hell = {
                name = 'Hell Itself',
                text = {
                    {
                        'Each played card has a {C:green}#1# in #2#{} chance',
                        'to be destroyed after scoring'
                    },{
                        'All cards held in hand at',
                        'end of round permanently gain {X:mult,C:white}X#4#{} Mult',
                        'for each card destroyed this way',
                        '{C:inactive}(Currently #3#X mult)'
                    }
                }
            },
            j_roses_calendar = {
                name = 'Calendar',
                text = {
                    "This joker gains {C:red}+#2#{} Mult",
                    "every time a {C:attention}#3#{} is scored",
                    "{s:0.8}Rank changes every round",
                    "{C:inactive}(currently +#1# mult)",
                }
            }
        },
    Other = {
            perma_roses_balance={
                text={
                    "{C:aij_plasma}Balance{} {C:attention}#1#%{} of chips and mult when scored",
                }
            },
            roses_brown_clip = {
                name = "Brown Clip",
                text = {
                   "When {C:attention}scored{}, {X:chips,C:white}X#1#{} Chips",
                   "for each {C:attention}Clip{} held in hand",
                "{C:inactive}(Currently {X:chips,C:white}X#2#{C:inactive} Chips)"
                }
            },
            roses_magenta_clip = {
                name = "Magenta Clip",
                text = {
                     "When {C:attention}scored{}, {{C:aij_plasma}Balance{} {C:attention}#1#%{} of chips and mult",
                     "for each {C:attention}Clip{} held in hand",
                     "{C:inactive}(Currently {{C:attention}#2#%{})",
                     "Otherwise, if held in hand",
                     "{{C:aij_plasma}Balance{} {C:attention}#3#%{} of chips and mult",
                     "for each {C:attention}Clip{} scored"
                     }
                },
            roses_diamond_clip = {
                name = "Diamond Clip",
                text = { 
                "When {C:attention}scored{}, {X:chips,C:white}X#1#{} Chips",
                "for each {C:attention}Clip{} held in hand",
                "{C:inactive}(Currently {X:chips,C:white}X#2#{C:inactive} Chips)",
            }
        }
    }
},
    misc = {
suits_plural = {
    roses_Guns = 'Guns',
    roses_Roses = 'Roses'
},
suits_singular = {
    roses_Guns = 'Gun',
    roses_Roses = 'Rose'
},
labels = {
      roses_brown_clip = "Brown Clip",
      roses_magenta_clip = "Magenta Clip",
      roses_diamond_clip = "Diamond Clip",
}
    },
}