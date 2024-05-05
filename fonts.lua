-- norns font WIP 240505
--
--
-- NEW GLYPHS
-- media: 			  ⏸ ⏵ ⏺ ⏹ ⏴ ⏪ ⏩
-- RN lower: 		ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ
-- RN upper: 		Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ
-- musical:			𝄪 𝄫
-- misc: 				∆ ✓ ◆
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
  
  glyphs = {}
  -- tab.print(unicode)
  for k,v in pairs(unicode) do
    print(k, v)
    table.insert(glyphs, k .. " " .. v)
  end
  
  -- creates instances of scrolling lists
  scroll ={}
  
  scroll[1] = UI.ScrollingList.new(0,8,1,glyphs) 
  
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


-- local lib = norns.state.shortname.."/lib/"

-- -- ""\u{E263}"  double sharp


-- function init()
--   redraw()
-- end

-- -- Std.supers: ¹²³⁴⁵⁶⁷⁸⁹⁰⁺⁻⁽⁾ᴹᵐᵃʲᵇ
-- -- Private-use supers: 
-- -- Media: ⏵ ⏸ ⏹ ⏺ ⏴ ⏪ ⏩
-- -- Romans: ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ
-- --          Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ
-- -- Extras: ∆✓
-- -- Ex: Cmᴹ⁷  Cm7ᵇ⁵  iᵐᵃʲ⁷  Ⅳᴹ⁷


-- function redraw()
--   screen.aa(1)
--   screen.level(15)
--   screen.font_size(8)
  

--   -- questionables:
--   -- \u{E000} superscript ø
--   -- \u{E001} superscript ♮
--   -- \u{E002} superscript ♯


-- -- Std.supers: ¹²³⁴⁵⁶⁷⁸⁹⁰⁺⁻⁽⁾ᴹᵐᵃʲᵇ
-- -- Private-use supers: 
-- -- Media: ⏵ ⏸ ⏹ ⏺ ⏴ ⏪ ⏩
-- -- Romans: ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ
-- --          Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ
-- -- Extras: ∆✓
-- -- Ex: Cmᴹ⁷  Cm7ᵇ⁵  iᵐᵃʲ⁷  Ⅳᴹ⁷


--   screen.move(0,10)
--   screen.text("Std.supers: ¹²³⁴⁵⁶⁷⁸⁹⁰⁺⁻⁽⁾ᴹᵐᵃʲᵇ")
  
--   screen.move(0,20)
--   screen.text("Private-use supers: \u{E000}\u{E001}\u{E002}")
  
--   screen.move(0,30)
--   screen.text("Media: ⏵ ⏸ ⏹ ⏺ ⏴ ⏪ ⏩")
    
--   screen.move(0,40)
--   screen.text("Romans: ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ")
--   screen.move(37,50)
--   screen.text("Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ")

--   screen.move(0,60)
--   screen.text("Extras: ∆✓")
  
--   print("Std.supers: ¹²³⁴⁵⁶⁷⁸⁹⁰⁺⁻⁽⁾ᴹᵐᵃʲᵇ")
--   -- print("Private-use: \u{E260} \u{E261} \u{E262} \u{E263} \u{E264} \u{E870} \u{E871}")
--   print("Flat: \u{E260}")
--   print("Sharp: \u{E262}") 
--   print("Natural: \u{E261}") 
--   print("Double-sharp: \u{E263}")
--   print("Double-flat: \u{E264}")
--   print("Diminished: \u{E870}")
--   print("Half-diminished \u{E871}")
--   print("  ")
--   print("Media: ⏵ ⏸ ⏹ ⏺ ⏴ ⏪ ⏩")
--   print("Romans: ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ")
--   print("Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ")
--   print("Extras: ∆✓")
--   print("Ex: Cmᴹ⁷  Cm7ᵇ⁵  iᵐᵃʲ⁷  Ⅳᴹ⁷")
 
    
--   -- -- Alt for major-minor
--   -- screen.move(10,40)
--   -- screen.text("Major-minor alt: Cmᴹ⁷")


--   -- -- Alt for half-diminished
--   -- screen.move(10,50)
--   -- screen.text("Half-diminished alt: Cm7ᵇ⁵")


  
--   screen.fill()
--   screen.update()
-- end  