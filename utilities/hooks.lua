-- paperback code, will rewrite when i actually learn how to code
local eval_card_ref = eval_card
function eval_card(card, context)
  local ret, ret2 = eval_card_ref(card, context)
  local clip = PB_UTIL.has_paperclip(card)

  -- Count scored Clips each round, all of this works, check misc functions for the other part of the code knucklehead
  if context.cardarea == G.play and context.main_scoring and ret and ret.playing_card then
    if PB_UTIL.has_paperclip(card) and clip == "roses_diamond_clip" then
      G.GAME.paperback.round.scored_clips = G.GAME.paperback.round.scored_clips + 1

      -- Add a new context for our Paperclips when held in hand
      for _, v in ipairs(G.hand.cards) do
        local key = PB_UTIL.has_paperclip(v)
        local clip = SMODS.Stickers[key]

        if clip and clip.calculate and type(clip.calculate) == "function" then
          clip:calculate(v, {
            paperback = {
              clip_scored = true,
              other_card = card
            }
          })
        end
      end
    end
  end
  return ret, ret2
end

-- if a brown clip is copied, replace it with a random non-special clip
local copy_card_ref = copy_card
copy_card = function(other, new_card, card_scale, playing_card, strip_edition)
  local clip = PB_UTIL.has_paperclip(other)
  local other = copy_card_ref(other, new_card, card_scale, playing_card, strip_edition)
    if PB_UTIL.is_special_clip(clip) and clip == "roses_brown_clip" and not G.SETTINGS.paused and not other.debuff then
     other.ability.card_limit = 0
      PB_UTIL.set_paperclip(other, PB_UTIL.poll_paperclip('plat_copy', false))
  end
  return other
end
