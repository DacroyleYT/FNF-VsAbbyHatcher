# FNF - Vs Abby Hatcher
BF and GF are going on a vacation, and need a hotel to stay in. They discover the Hatcher Palace Hotel, and thus meet Abby Hatcher, Fuzzly Catcher!<br />
Originally made in 2022 with an exported copy of Psych Engine and eventually became this!

## Installation:
You must have [the most up-to-date version of Haxe](https://haxe.org/download/), seriously, stop using 4.1.5, it misses some stuff.

open up a Command Prompt/PowerShell or Terminal, type `haxelib install hmm`

after it finishes, simply type `haxelib run hmm install` in order to install all the needed libraries for *Psych Engine!*

## Customization:

if you wish to disable things like *Lua Scripts* or *Video Cutscenes*, you can read over to `Project.xml`

inside `Project.xml`, you will find several variables to customize Psych Engine and VAH to your liking

to start you off, disabling Videos should be simple, simply Delete the line `"VIDEOS_ALLOWED"` or comment it out by wrapping the line in XML-like comments, like this `<!-- YOUR_LINE_HERE -->`

same goes for *Lua Scripts*, comment out or delete the line with `LUA_ALLOWED`, this and other customization options are all available within the `Project.xml` file (except Lua scripts are kinda important for this mod)

## Credits:
* DacroyleYT - Creator
* RayoMC95 - Secondary Artist
* Rob Hoegee, Ryan Carlson, Macy Drouin, a bunch of others - Creators of 'Abby Hatcher'
* Shadow Mario, RiverOaken, Yoshubs - Creators of Psych Engine
* Abby Hatcher is owned by Spin Master. This project is not associated with or endorsed by them in any way.

### Special Thanks
* RayoMC95 - New BGs and ab hat
* Fuzzlyxx, Der, GamerBoyo - Support over the years
* bbpanzu - Ex-Programmer
* Yoshubs - New Input System
* SqirraRNG - Crash Handler and Base code for Chart Editor's Waveform
* KadeDev - Fixed some cool stuff on Chart Editor and other PRs
* iFlicky - Composer of Psync and Tea Time, also made the Dialogue Sounds
* PolybiusProxy - .MP4 Video Loader Library (hxCodec)
* Keoiki - Note Splash Animations
* Smokey - Sprite Atlas Support
* Nebula the Zorua - LUA JIT Fork and some Lua reworks
_____________________________________

# Unique features (I added 'em myself, they're not in Psych Engine!)
This mod uses Psych Engine 0.6.3 as a base, however I added some cool new features that make the mod even crazier!
## SONG METADATA!!! (REAL!!)
You can now add Song metadata in the Chart Editor! Just go to the "Metadata" tab and you can set the name of the song, composer, original composer, charter, Freeplay description and Freeplay song to use!<br />
![Song Metadata tab in Chart Editor, showcasing fields for the Song name, Composer, Original composer, Charter, Freeplay description and Freeplay song](https://github.com/DacroyleYT/FNF-VsAbbyHatcher/blob/main/art/mdImages/metadataTabShowcase.png?raw=true)
## COOL NEW FREEPLAY STUFF
As mentioned in the Metadata part, you can now give descriptions to your Songs in Freeplay! (Inspired by SMB Funk Mix DX)<br />
Every Song now also has a jingle from it that plays when selected in the menu! You can put it in the Metadata file, and if it doesn't exist, the game will just use the Song name.<br />
![Screenshot of the VAH Freeplay Menu, showing a description of the song Fuzzly-Catcher that reads "A faithful remake of the Abby Hatcher title theme! Sit back, relax and sing along!". There are arrows pointing to the description and text on top of it reading "DESCRIPTIONS!!! :D"](https://github.com/DacroyleYT/FNF-VsAbbyHatcher/blob/main/art/mdImages/descriptionsShowcase.png?raw=true)
## NEW CRASH HANDLER (in the works)
I'm working on a Crash Handler that displays inside the game instead of a dialog! It's only activated by pressing C on the Title screen for now, idk how to make it activate when it actually crashes<br />
![Custom crash screen for VAH inspired by the Gru's plan meme](https://github.com/DacroyleYT/FNF-VsAbbyHatcher/blob/main/art/mdImages/crashScreenShowcase.png?raw=true)
