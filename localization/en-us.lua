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
            },
            j_roses_crown_royal = {
                name = "Crown Royal",
                text = {
                  "The next {C:attention}#1#{} scored {C:attention}Wild Cards{} permanently gain",
                  "{C:roses_plasma}#3#%{} Balance when scored",
                 },
             },
        },
    paperback_minor_arcana = {
      c_roses_tomato = {
        name = "Two of Relics",
        text = {
          "Add a {C:roses_brown}Brown Clip{} to up",
          "to {C:attention}#1#{} selected cards"
        }
      },
     c_roses_beet = {
        name = "Knight of Relics",
        text = {
          "Add a {C:roses_magenta}Magenta Clip{} to up",
          "to {C:attention}#1#{} selected cards"
        }
      },
      c_roses_carrot = {
        name = "King of Relics",
        text = {
          "Add a {C:roses_diamond}Diamond Clip{} to",
          "{C:attention}#1#{} selected card"
        }
      },
    },
    Other = {
            perma_roses_balance={
                text={
                    "{C:roses_plasma}Balance{} {C:attention}#1#%{} of chips and mult when scored",
                }
            },
            perma_roses_x_money={
                text={
                    "{X:money,C:white}X#1#{}{C:money}${} when scored",
                }
            },
            roses_brown_clip = {
                name = "Brown Clip",
                text = {
                   "{C:attention}+1{} hand size if atleast",
                   "{C:attention}#5#{} clips have been discarded",
                   "this round, extra hand size",
                   "won't go over {C:attention}#6#{}",
                   "{C:inactive}(Currently {{C:attention}#3#{} {C:inactive}discarded clips)"
                }
            },
            roses_magenta_clip = {
                name = "Magenta Clip",
                text = {
                     "When {C:attention}scored{}, Balance {{C:roses_plasma}#1#%{} of chips and mult",
                     "for each {C:attention}Clip{} held in hand",
                     "{C:inactive}(Currently {{C:roses_plasma}#2#%{})",
                     "Otherwise, if held in hand",
                     "Balance {{C:roses_plasma}#3#%{} of chips and mult",
                     "for each scored {C:attention}Clip{}",
                      "{C:inactive}(Resets after hand played)"
                     }
                },
            roses_diamond_clip = {
                name = "Diamond Clip",
                text = { 
                "Counts as {C:attention}2 clips{} when",
                "played, discarded, or held in hand"
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
},
 dictionary ={
    paperback_dev_kesooop = 'Kesooop',
 }
    },
}