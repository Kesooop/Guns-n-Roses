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
    key = 'paperclips',
    path = 'paperclips.png',
    px = 71,
    py = 95
}
local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src)do
    assert(SMODS.load_file("src/jokers/".. file))()
end
--local suits_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/suits")
--for _, file in ipairs(suits_src)do
--   assert(SMODS.load_file("src/suits/".. file))()
--end
local consumables_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/consumables")
for _, file in ipairs(consumables_src)do
    assert(SMODS.load_file("src/consumables/".. file))()
end
local paperclip_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/paperclip")
for _, file in ipairs(paperclip_src)do
    assert(SMODS.load_file("src/paperclip/".. file))()
end
SMODS.load_file("utilities/definitions.lua")()
SMODS.load_file("utilities/indicators.lua")()
SMODS.load_file("utilities/hooks.lua")()
SMODS.load_file("utilities/misc_functions.lua")()


