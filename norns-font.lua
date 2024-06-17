-- norns font WIP 240527
-- 
-- NEW GLYPHS
-- spaces:		med⏹ ⏹ thin⏹ ⏹ hair⏹ ⏹
-- media: 			⏸ ⏵ ⏺ ⏹ ⏴ ⏪ ⏩ ⏮ ⏭ ⏯
-- RN lower: 		ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ
-- RN upper: 	Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ
-- musical:		𝄪 𝄫
-- ui: 				✓ ◆ 🔄 ␣ ▮ ● ○ ◉
-- arrows:		↻ ↺ ↳ ↲
-- math:			∆ ▦
-- 
-- REMAPS
--  U+266D to U+E260
--  ̃ U+007E to U+0303
-- Ø U+00F8 to U+00D8
-- 
-- SUPERSCRIPTS/SUPERIORS
-- numerals:		¹²³⁴⁵⁶⁷⁸⁹⁰
-- alphabet:		ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖ𐞥ʳˢᵗᵘᵛʷˣʸᶻ ᴹ
-- accidentals: 	
-- misc: 			⁺⁻⁽⁾
-- 
-- ALTERNATE CHORDS EX
-- CØ7: C⁷ Cm7⁵ Cm⁷⁵ Cm7⁻⁵
-- D♭°: D♭
-- Cm♮7:  Cm⁷ Cmᴹ⁷
-- D♭♭+:  D𝄫⁺
-- C##: D𝄪
-- vii7:  ⅶ⁷
-- III+M7:  Ⅲ+ᴹ⁷
-- VIIM7: Ⅶᴹ⁷
-- 
-- SUPERSCRIPT EX
-- a²+b²=c²
-- 1ˢᵗ 2ⁿᵈ 3ʳᵈ 4ᵗʰ


UI = require("ui")
local lib = norns.state.shortname.."/lib/"
lattice = include(lib .. "unicode")

function init()
  scroll ={}
  scroll[1] = UI.ScrollingList.new(0,8,1,unicode_index) 
  message = {}
end

function redraw()
  screen.clear()
  screen.font_size(8)
  if message.display then
    message:redraw()
  else
    for i = 1,1 do
      scroll[i]:redraw()
    end
    screen.aa(1)
    screen.level(15)
  end
  screen.update()
end


function enc(n,d)
  if not message.display then
    scroll[1]:set_index_delta(d,false)
    redraw()
  end
end