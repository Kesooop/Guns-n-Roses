SMODS.Enhancement {
    key = 'rose_gold',
    atlas = 'enhancements',
    pos = {
        x = 0,
        y = 0
    },
    config ={
            retriggers = 0,
            card = 1
    },
        loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.retriggers
            } 
        }
    end
}