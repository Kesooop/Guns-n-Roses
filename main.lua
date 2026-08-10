--#region Atlases

SMODS.Atlas {
    key = 'jokers',
    path = 'jokers.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'hc_cards',
    path = 'hc_cards.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'lc_cards',
    path = 'lc_cards.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'hc_ui',
    path = 'hc_ui.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'lc_ui',
    path = 'lc_ui.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'consumables',
    path = 'consumables.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'ego',
    path = 'EGOGifts.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'paperclips',
    path = 'paperclips.png',
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = 'enhancements',
    path = 'enhancements.png',
    px = 71,
    py = 95
}
SMODS.Gradient {
    key = 'plasma',
    colours = {
        HEX('F9A2E6'), HEX('b288bc')
    },
    cycle = 5,
    interpolation = 'trig'
}
local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src)do
    assert(SMODS.load_file("src/jokers/".. file))()
end
--local EGO_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/EGO")
--for _, file in ipairs(EGO_src)do
--  assert(SMODS.load_file("src/EGO/".. file))()
--end
local paperclip_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/paperclip")
for _, file in ipairs(paperclip_src)do
    assert(SMODS.load_file("src/paperclip/".. file))()
end
--local enhancements_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/enhancements")
--for _, file in ipairs(enhancements_src)do
--    assert(SMODS.load_file("src/enhancements/".. file))()
--end
SMODS.load_file("utilities/definitions.lua")()
SMODS.load_file("utilities/indicators.lua")()
SMODS.load_file("utilities/hooks.lua")()
SMODS.load_file("utilities/misc_functions.lua")()
SMODS.load_file("utilities/functions.lua")()

PB_UTIL.register_items(PB_UTIL.ENABLED_MINOR_ARCANA, "src/consumables")

