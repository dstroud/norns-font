# norns-font
### About
This repo is a place for to track work on a [proposed default font for monome norns](https://github.com/monome/norns/discussions/1774), hoping to achieve several goals:

1. Extend the default font for monome norns with new glyphs to support more readable chord formatting, media playback controls, and superscript characters. 
2. Ensure flexibility for whatever future font needs may arise, e.g. additional glyphs, new font styles, upscaled variants, or retroactive changes.
3. Attribute the original artist for the (largely ASCII) glyphs this font is based on, while being clear that this is a separate work (with more than twice as many glyphs as the original font!).
4. Minimize disruptions to existing scripts and engage community stakeholders where changes are proposed.

The repo contains a few files:
- 00_norns map.pdf - list of the new glyphs and proposed changes to existing glyphs
- 00_norns.pxf - [PixelForge](http://pixel-forge.com) file
- 00_norns.ttf - the .ttf to be copied to norns
- norns-font.lua - a test script and WIP unicode lookup lib which can be installed in maiden:

  `;install https://github.com/dstroud/norns-font`


---

### Installing the font
1. Download 00_norns.ttf and rename as 04B_03__.TTF
2. Copy the renamed file over to norns/resources/, _overwriting the original_

   `scp your_file_path/04B_03__.TTF we@norns.local:~/norns/resources/`

4. If Norns stops responding, ssh in to reboot

   `ssh we@norns.local`
   
   `reboot`

To undo, download the [original file](https://github.com/monome/norns/blob/main/resources/04B_03__.TTF) and copy it back.


---

### Thanks
This font is based on "04b 03" (copyright 1999-2003 / yuji oshimoto / 04@dsg4.com / www.04.jp.org), heavily extended by the wonderful contributions of @dewb
