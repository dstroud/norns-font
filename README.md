# norns-font
### About
This repo is a place to track work on a proposed pixel font for musical applications including norns and seamstress. Goals include:

1. Extend the base font currently used by norns with new additional glyphs: typographical, UI, media playback controls, superscript glyphs, roman numerals, musical symbols, and more. 
2. Ensure flexibility for whatever future needs may arise, e.g. additional glyphs, new font styles, upscaled variants, or retroactive changes.
3. Minimize disruptions to existing scripts and engage community stakeholders where changes are proposed.

---
### Files

- norns-font.pdf - list of the new glyphs and proposed changes to existing glyphs
- norns.pxf - PixelForge file (see [workflow](https://github.com/dstroud/norns-font/edit/main/README.md#workflow))
- norns.ttf - the final .ttf font file
- norns-font.lua - a Norns test script and WIP unicode lookup lib which can be installed in maiden:

  `;install https://github.com/dstroud/norns-font`

---
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

  
---

### Installing the font on Norns
1. Download norns.ttf and rename as 04B_03__.TTF
2. Copy the renamed file over to norns/resources/, _overwriting the original_

   `scp your_file_path/04B_03__.TTF we@norns.local:~/norns/resources/`

4. Norns will probably stop responding and require a reboot via SSH

   `ssh we@norns.local`
   
   `reboot`

To undo, download the [original file](https://github.com/monome/norns/blob/main/resources/04B_03__.TTF) and copy it back.


---

### Thanks
This font is based on "04b 03", © 1999-2003 [Yuji Oshimoto](www.04.jp.org), used by express permission of the designer for this project.

Additional glyphs and project guidance by Michael Dewberry [@dewb](https://github.com/dewb)
