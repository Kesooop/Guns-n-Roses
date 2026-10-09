-- what she said
function PB_UTIL.find(table, value)
  for i, v in ipairs(table) do
    if v == value then
      return i
    end
  end
  return nil
end
--- Counts all the paperclips in the specified area and returns the count
--- @param args { area: table, allow_debuff: boolean?, exclude_highlighted: boolean? }
--- @return integer
function PB_UTIL.count_paperclips(args)
  local clips = 0
  if not args.area then return 0 end
  for _, v in ipairs(args.area.cards or args.area) do
    local debuff_check = args.allow_debuff or not v.debuff
    local highlighted_check = not args.exclude_highlighted or not v.highlighted
    local clip = PB_UTIL.has_paperclip(v)
    if PB_UTIL.has_paperclip(v) and clip ~= "roses_diamond_clip" and debuff_check and highlighted_check then 
      clips = clips + 1
 else
   if PB_UTIL.has_paperclip(v) and clip == "roses_diamond_clip" and debuff_check and highlighted_check then  -- i think this is how else works, no clue tho
      clips = clips + 2
    end
  end
end
  for i, v in ipairs(SMODS.find_card('j_paperback_clothespin', args.allow_debuff)) do
    clips = clips + 1
  end
  return clips
end
PB_UTIL.Developer({
  name = 'kesooop',
  loc = true,
  colour = HEX('eea858')
})