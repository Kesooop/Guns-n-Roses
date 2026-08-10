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
                  "{C:roses_plasma}#3#%{} Score balance when scored",
                 },
             },
        },
    paperback_minor_arcana = {
      c_roses_two_of_relics = {
        name = "Two of Relics",
        text = {
          "Earn {C:money}$#1#{} for every clip held in hand",
          "{C:inactive}Currently{} {C:money}$#2#{}{C:inactive}/$#3# max{}"
        }
      },
      c_roses_three_of_relics = {
        name = "Three of Relics",
        text = {
          "Select {C:attention}#1#{} cards, the {C:attention}left{} card",
          "Copies the {C:attention}clip{} of the {C:attention}right{} card"
        }
      },
      c_roses_four_of_relics = {
        name = "Four of Relics",
        text = {
          "Earn {C:money}$#1#{} for every {C:attention}#2#{} cards in",
          "{C:attention}full deck{}, rounded up",
          "{C:inactive}Currently{} {C:money}$#3#{}"
        }
      },
      c_roses_five_of_relics = {
        name = "Five of Relics",
        text = {
          "Add a {C:roses_brown}Brown Clip{} to up",
          "to {C:attention}#1#{} selected cards"
        }
      },
      c_roses_six_of_relics = {
        name = "Six of Relics",
        text = {
          "Gives a {C:attention}Double Tag{}"
        }
      },
      c_roses_eight_of_relics = {
        name = "Eight of Relics",
        text = {
          "Add an {C:roses_indigo}Indigo Clip{} to",
          "{C:attention}#1#{} selected card"
        }
    },
       c_roses_nine_of_relics = {
        name = "Nine of Relics",
        text = {
          "Apply a random {C:attention}Bonus{} to",
          "up to {C:attention}#1#{} selected card"
        }
      },
      c_roses_ten_of_relics = {
        name = "Ten of Relics",
        text = {
          "Select {C:attention}#1#{} cards.",
          "{C:green}#2# in #3#{} chance to destroy",
          "each {C:attention}selected{} card"

        }
      },
      c_roses_paige_of_relics = {
        name = "Page of Relics",
        text = {
          "Creates the last",
          "{C:paperback_minor_arcana}Minor Arcana{} card",
          "used during this run",
          "{s:0.8,C:paperback_minor_arcana}Page of Relics{s:0.8} excluded",
        }
      },
     c_roses_knight_of_relics = {
        name = "Knight of Relics",
        text = {
          "Add a {C:roses_magenta}Magenta Clip{} to up",
          "to {C:attention}#1#{} selected cards"
        }
      },
      c_roses_king_of_relics = {
        name = "King of Relics",
        text = {
          "Add a {C:roses_diamond}Diamond Clip{} to",
          "{C:attention}#1#{} selected card"
        }
      },
      
    },
        paperback_ego_gift = {
      c_roses_holy_spear = {
        name = "Spear of Holy Light",
        text = {
          "The result of attempting to",
          "have duplicate {C:paperback_ego_gift}E.G.O Gifts{}...",
        }
      }
    },
    Other = {
            perma_roses_balance={
                text={
                    "{C:roses_plasma}Balance{} {C:attention}#1#%{} of chips and mult when scored",
                }
            },
            perma_roses_h_balance={
                text={
                    "{C:roses_plasma}Balance{} {C:attention}#1#%{} of chips and mult when held",
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
                     "When {C:attention}scored{}, Balance {{C:roses_plasma}#1#%{} of chips",
                     "and mult for each {C:attention}Clip{} held in hand",
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
            },
            
        },
            roses_indigo_clip = {
                name = "Indigo Clip",
                text = {
          "Once per round, {C:green}#1# in #2#{} chance",
          "to create the {C:planet}Planet{} card for",
          "{C:attention}played hand{} when {C:attention}held in hand{}.",
          "Odds increase by {C:attention}#3#{}",
          "for each played {C:attention}Clip{}",
          "{C:inactive}(Resets after played hand){}",
          "{C:inactive}(Currently #4#)"
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
      roses_indigo_clip = "Indigo Clip",
},
 dictionary ={
    paperback_dev_kesooop = 'Kesooop',
    k_paperback_ego_sin_indulgence = "Indulgence",
 }
    }
}