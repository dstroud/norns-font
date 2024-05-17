-- norns font WIP 240517
--
--
-- NEW GLYPHS
-- space:			med⏹ ⏹ thin⏹ ⏹ hair⏹ ⏹
-- media: 			  ⏸ ⏵ ⏺ ⏹ ⏴ ⏪ ⏩ ⏮ ⏯
-- RN lower: 		ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ
-- RN upper: 		Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ
-- musical:			𝄪 𝄫
-- misc: 				∆ ✓ ◆ 🔄 ␣ ↺
--
--
-- SUPERSCRIPTS/SUPERIORS
-- numerals:			¹²³⁴⁵⁶⁷⁸⁹⁰
-- alphabet:			ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖ
--           𐞥ʳˢᵗᵘᵛʷˣʸᶻ ᴹ
-- accidentals: 		
-- misc: 				⁺⁻⁽⁾
--
--
-- ALTERNATE CHORDS EX
-- CØ7	  >> C⁷ Cm7⁵ Cm⁷⁵ Cm7⁻⁵
-- D♭°		>> D♭
-- Cm♮7	  >> Cm⁷ Cmᴹ⁷
-- D♭♭+	  >> D𝄫⁺
-- C##	  >> D𝄪)
-- vii7	  >> ⅶ⁷
-- III+M7  >> Ⅲ+ᴹ⁷
-- VIIM7	  >> Ⅶᴹ⁷
--
--
-- SUPERSCRIPT EX
-- a²+b²=c²
-- 1ˢᵗ 2ⁿᵈ 3ʳᵈ 4ᵗʰ



UI = require("ui")
local lib = norns.state.shortname.."/lib/"
lattice = include(lib .. "unicode")

function init()
  
  -- glyphs = {}
  -- -- tab.print(unicode)
  -- for k,v in pairs(unicode) do
  --   -- print(v, k)
  --   table.insert(glyphs, v .. " " .. k)
  -- end
  
  -- creates instances of scrolling lists
  scroll ={}
  
  -- scroll[1] = UI.ScrollingList.new(0,8,1,glyphs) 
  scroll[1] = UI.ScrollingList.new(0,8,1,unicode_index) 

  
  message = {}
end

function redraw()
  screen.clear()
  screen.font_size(8)
  if message.display then
    message:redraw()
  else
    for i = 1,1 do -- redraw each scrolling list
      scroll[i]:redraw()
    end
    screen.aa(1)
    screen.level(15)
  end
  screen.update()
end


function enc(n,d)
  if not message.display then
    scroll[1]:set_index_delta(d,false) -- sets index according to delta of E1, no wrapping
    redraw()
  end
end