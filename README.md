# norns-font

### About
This repo is a place to store source files for norns.ttf, a font for musical applications including monome norns.


### Files
- norns-font.pdf - list of the new glyphs and changes to existing glyphs
- norns-font.csv - source for .pdf with formulas for .lua functions
- norns.pxf - PixelForge file (see [workflow](https://github.com/dstroud/norns-font/edit/main/README.md#workflow))
- norns-font.lua - a Norns test script and WIP unicode lookup lib which can be installed in maiden:

  `;install https://github.com/dstroud/norns-font`


### Workflow
PixelForge does not currently support all of the code points used in this project, and some cleanup of metadata is required. Workflow:
Edit .pxf file using [PixelForge](http://pixel-forge.com)
- Update version in Font Properties using `yymmdd` format
- Export .ttf

Edit .ttf in [Type light](https://cr8software.net/typelight.html)
- Remap 𝄪 U+E000 to U+1D12A
- Remap 𝄫 U+E001 to U+1D12B
- Remap 𐞥 U+E002 to U+107A5
- Remap 🔄 U+E003 to U+1F504
- Font:Names >> edit to remove "Copyright" which PixelFont inserts by default
- Font:Rename font>> Rename with "Remove all non-english entries" (fixes Font Book error warning)


### Thanks
This font is based on "04b 03", © 1999-2003 [Yuji Oshimoto](www.04.jp.org), used by express permission of the designer for this project.

Additional glyphs and project guidance by Michael Dewberry [@dewb](https://github.com/dewb)
