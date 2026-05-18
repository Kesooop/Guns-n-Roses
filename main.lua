--#region Atlases

SMODS.Atlas {
    key = 'placeholders',
    path = 'placeholders.png',
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
local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src)do
    assert(SMODS.load_file("src/jokers/".. file))()
end
local suits_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/suits")
for _, file in ipairs(suits_src)do
    assert(SMODS.load_file("src/suits/".. file))()
end