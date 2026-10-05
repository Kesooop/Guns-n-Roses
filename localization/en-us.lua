return {
    descriptions = {
    Enhanced = {
            m_roses_rose_gold = {
                name = "Rose Gold Card",
                text = {
                    '{C:attention}Retrigger{} a random played',
                    'card used in scoring',
                    'while this card stays in hand'
                },
            },
            m_roses_milimetric = {
                name = "Milimetric Card",
                text = {
                    '{X:mult,C:white}X#1#{} Mult,',
                    'increases by {X:mult,C:white}X#2#{} Mult when',
                    'discarded, {C:attention}resets{} after scoring'
                },
            },
          },
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
                        '{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)'
                    }
                }
            },
            j_roses_calendar = {
                name = 'Calendar',
                text = {
                    "This Joker gains {C:red}+#2#{} Mult",
                    "every time a {C:attention}#3#{} is scored",
                    "{s:0.8}Rank changes every round",
                    "{C:inactive}(currently {C:red}+#1#{} {C:inactive}Mult)",
                }
            },
            j_roses_crown_royal = {
                name = "Crown Royal",
                text = {
                  "The next {C:attention}#1#{} scored {C:attention}Wild Cards{} permanently gain",
                  "{C:roses_plasma}#3#%{} Score balance when scored",
                 },
             },
             j_roses_the_navidson_record = {
                name = "The Navidson Record",
                text = {
                  "This Joker gains {X:mult,C:white}X#2#{} Mult",
                  "if hand contains a {C:attention}Full{} {C:roses_house}House{}",
                  "and all scoring suits are {C:paperback_dark_suit}dark{}",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{} {C:inactive}Mult)"
                 },
             },
        },
      Spectral = {
      c_roses_apostle_of_relics = {
        name = "Apostle of Vessels",
        text = {
          "{C:attention}+#1#{} Shop slot",
          "{C:attention}+#2#{} Booster Pack slot",
          "{C:attention}+#3#{} Voucher slot",
        }
      }
    },
    paperback_minor_arcana = {
      c_roses_ace_of_relics = {
        name = "Ace of Vessels",
        text = {
          "Add a {C:roses_magenta}Magenta Clip{} to up",
          "to {C:attention}#1#{} selected cards"
        }
      },
      c_roses_two_of_relics = {
        name = "Two of Vessels",
        text = {
          "Earn {C:money}$#1#{} for every clip held in hand",
          "{C:inactive}Currently{} {C:money}$#2#{}{C:inactive}/$#3# max{}"
        }
      },
      c_roses_three_of_relics = {
        name = "Three of Vessels",
        text = {
          "Enhances {C:attention}#1#{}",
          "selected card to",
          "{C:attention}#2#{}"
        }
      },
      c_roses_four_of_relics = {
        name = "Four of Vessels",
        text = {
          "Earn {C:money}$#1#{} for every {C:attention}#2#{} cards in",
          "{C:attention}full deck{}, rounded up",
          "{C:inactive}Currently{} {C:money}$#3#{}"
        }
      },
      c_roses_five_of_relics = {
        name = "Five of Vessels",
        text = {
          "Add a {C:roses_brown}Brown Clip{} to up",
          "to {C:attention}#1#{} selected cards"
        }
      },
      c_roses_six_of_relics = {
        name = "Six of Vessels",
        text = {
          "Gives a {C:attention}Double Tag{}"
        }
      },
      c_roses_seven_of_relics = {
        name = "Seven of Vessels",
        text = {
          "After using this card {C:attention}#1#{} times,",
          "create an {C:attention}Energized apostle{} spectral card"
        }
    },
      c_roses_eight_of_relics = {
        name = "Eight of Vessels",
        text = {
          "Add an {C:roses_indigo}Indigo Clip{} to",
          "{C:attention}#1#{} selected card"
        }
    },
       c_roses_nine_of_relics = {
        name = "Nine of Vessels",
        text = {
          "Apply a random {C:attention}Bonus{} to",
          "up to {C:attention}#1#{} selected card"
        }
      },
      c_roses_ten_of_relics = {
        name = "Ten of Vessels",
        text = {
          "Select {C:attention}#1#{} cards.",
          "{C:green}#2# in #3#{} chance to destroy",
          "each {C:attention}selected{} card"

        }
      },
      c_roses_paige_of_relics = {
        name = "Page of Vessels",
        text = {
          "Creates the last two",
          "{C:paperback_minor_arcana}Minor Arcana{} cards",
          "used during this run",
          "{s:0.8,C:paperback_minor_arcana}Page of Vessels{s:0.8} excluded",
        }
      },
      c_roses_knight_of_relics = {
        name = "Knight of Vessels",
        text = {
          "Enhances {C:attention}#1#{}",
          "selected cards to",
          "{C:attention}#2#s{}"
        }
      },
      c_roses_queen_of_relics = {
        name = "Queen of Vessels",
        text = {
          "Select {C:attention}2{} cards,",
          "increase the rank of the {C:attention}left{} card by {C:attention}2{},",
          "decrease the rank of the {C:attention}right{} card by {C:attention}2{}"
        }
      },
      c_roses_king_of_relics = {
        name = "King of Vessels",
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
            roses_energized = {
        name = "Energized",
        text = {
          "Cannot be copied by",
          "{C:attention}#1#{} or",
          "{C:attention}#2#{}",
        }
      },
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
                   "{C:green}+#2#{} odds for every {C:attention}Clip{}",
                   "discarded this round",
                   "{C:inactive}(Currently {{C:green}+#1#{} {C:inactive}odds)"
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