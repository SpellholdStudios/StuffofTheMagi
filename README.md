# StuffofTheMagi

<strong>Author:</strong> Victor Straffe<br />
<strong>WeiDU coding:</strong> Kevmus<br />
<strong>Version:</strong> 6.0.0<br />
<strong>Language:</strong> English, <a href="README-FR.md">French</a><br />
<strong>Platforms:</strong> Windows

<strong>Mod Website and Forum:</strong> <a href="http://www.shsforums.net/topic/34134-stuff-of-the-magi/">Spellhold Studios</a><br />
</br>


<hr>


## <a name="intro" id="intro"></a>Overview

This mod adds the Stuff of the Magi set to several creatures.


<hr>


## <a name="compat" id="compat"></a>Compatibility


<hr>


## <a name="installation" id="installation"></a>Installation

#### Notes

<em>If you've previously installed the mod, remove it before extracting the new version. To do this, run <strong>setup-stuffofthemagi.exe</strong>, uninstall all previously installed components and delete the stuffofthemagi folder.</em>

<em>When installing or uninstalling, <strong>do not close the <acronym title="Disk Operating System">DOS</acronym> window</strong> by clicking on the <strong>X</strong> button! Instead, press the <strong>Enter</strong> key whenever instructed to do so.</em>

<strong>Disable any antivirus</strong> or other memory-resident software before installing this or any other mod. Some (particularly avast!) have a tendency to report false positives with mod activity, resulting in failed installs.

You can extract files from the archive using <a href="http://www.rarlab.com/download.htm">WinRAR</a>, <a href="http://www.zipgenius.it/ita/?page_id=12">ZipGenius</a> or another file compression utility that handles .rar files.

## 

#### Windows

Extract the contents of the mod to the folder of the game you wish to modify (<acronym title="Baldur's Gate II">BG2</acronym>, <acronym title="Baldur's Gate Trilogy">BGT</acronym> or EasyTutu). On successful extraction, there should be an stuffofthemagi folder and a setup-stuffofthemagi.exe file in your game folder. To install, simply double-click <strong>setup-stuffofthemagi.exe</strong> and follow the instructions on screen.

Run <strong>setup-stuffofthemagi.exe</strong> in your game folder to reinstall, uninstall or otherwise change components.

## 

#### Note for Complete Uninstallation

In addition to the methods above for removing individual components, you can completely uninstall the mod using <strong>setup-stuffofthemagi --uninstall</strong> at the command line to remove all components without wading through prompts.</br>
<div style="text-align:right"><a href="#top">Back to top</a></div>

## 

#### <a name="config" id="config">:warning: Warning: new installation process

##### As of version 6.0.0, options needed for installation are read from <a href="../infinityanimations-config-default.ini"><em>infinityanimations-config-default.ini</em></a> file, or <em>infinityanimations-config.ini</em> if it exists.


<hr>


## <a name="components" id="components"></a>Components

The installer includes the following components. The number of each is the component DESIGNATED number which gives it a fixed install position, lets other components detect it and allows automated installers like the BiG World Setup specify component choices.


<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

#### Author: Victor Straffe


#### Special Acknowledgements to (alphabetical order):

- Cmorgan: Help with bugsquishing/tidiness/etc.
- Deratiseur: Made it compatible with translations, wrote the French translation, and provided the EE compatible version.
- Kevmus: Updated the mod to WeiDU, added the more balanced items, and bug fixed.
- Rastamage: Item stories/Erevain's talk
- Tassadar88: Help with coding


<hr>


## <a name="versions" id="versions"></a>Versions History

##### Version 6.0.0 - Month day, 2019

- Removed unnecessary files: handle_charsets.tpa, .
- Removed unnecessary backup folder.

- stuffofthemagi.ini:
- Removed READLN to support ALIEN's "Project Infinity".

- Added compatibility with 1PP and ToBEx.
- Added Detectable Spells variables.
- Appended items to tooltip.2da file.
- Fixed remaining glitches and bugs.
- Scroll Case (wzrdbag1): Fixed wrong Storage capacity (made it botomless as per its description).
- Option 1: Use new, less cheesy items.
	- Cape of the Magi (wzrdrobe)
		- Removed useless Chain Contingency ability that did not do anything and was not described in identified description string.
		- Replaced missing description icon CCLCK02 with CCLCK01.
		- Replaced wrong GCLCK02 ground icon (robe) with GCLCK01 (cloak).
	- Ring of the Magi (wzrdring)
		- Added missing opcodes #267 (Text: Protection from Display Specific String) and #169 (Graphics: Immunity Special Effect Icon).
		- Added missing DS value: opcode #282 (Script: Scripting State Modifier): parameter1 = 1 - parameter2 = 2 [158 SCRIPTINGSTATE3 aka LEVEL_DRAIN_IMMUNITY].
		- Decided not to add opcode #142 Display portrait icon (90 : Negative Plane Protection).
	- Robe of the Magi (wzrdclck)
		- Fixed opcode #142 (Display portrait icon): replaced wrong 76 icon (Protected from the Elements) with 63 (Magic Resistance).
	- Amulet of the Magi (wzrdamul)
		- Replaced Protection from spell opcodes (#206) with full effects granting immunity to Petrification.
		- Removed all inaccurate opcodes #206 (Protection from Spell) protecting from Polymorph Other spells.
		- Removed useless #142 opcodes (Display portrait icon): 63 (Magic Resistance) and 70 (Protection from Normal Weapons).
		- Added DS values (176 LOCKPICKINGMTPBONUS = 176 WIZARD_PROTECTION_FROM_PETRIFICATION) for classical games and Set State PROTECTION_FROM_PETRIFICATION (107) for EE games.
	- Boots of the Magi (wzrdboot)
		- Fixed description string: same movement rate as Boots of Speed instead of "Movement rate increased by 50%", and replaced "Aura cleansed after each spell" with "Improved Alacrity one per day".
		- Fixed ability icon (SPWI921B) and replaced opocde #148 with opcode #146.
		- Appended tooltip.2da: Improved Alacrity.
	- Staff of the Magi (wzrdstaf)
		- Fixed wrong damages.
		- Modified opcode #20 (Invisibility) resistance: set to 3-Dispel/Bypass resistance.
		- Added missing opcode #296 Graphics: Protection from Specific Animation (SPNWCHRM).
		- Added opcodes #247 (Text: Protection from Display Specific String): 8364 (dominated), 14672 (charmed), 14780 (dire charmed).
		- Fixed opcode #142 (Graphics: Display Special Effect Icon) = replaces wrong parameter2 28 (Protection from Magic) with 52 (Mind Shield).
		- Removed ugly Protection drom Evil glowing colors: Glow Pulse [9] effect
		- Replaced Dispel magic effects with more accurate BG2 Fixpack ones.
		- Added DS values (117 PROTECTION_FROM_EVIL).
		- Fireball-Lightning ability: added Break Sanctuary flag for EE games.
		- Spel trap ability: replaced with STAF11.spl.
		- Added Glowing staff animation (and colors) for EE game or if 1PP is installed.
		- Appended tooltip.2da
	- Gauntlets of the Magi (wzrdbrac)
		- Updated description (was missing +1 Intelligence)
	- Circlet of the Magi (wzrdhelm)
		- Added circlet animation (and color) for EE game or if 1PP is installed.
		- Replaced Protection from spell opcodes (#206) with full effects granting immunity to Petrification.
	- Girdle of the Magi (wzrdbelt)
		- Added opcode #142 (Display portrait icon): 11 (Protection from Missiles).
		- Fixed wrong coding in opcodes #83: parameter1 and parameter2 were inverted.
		- Added Protection from missing projectiles if they exist in game: spear, 1arow01, 1bolt01, 1dagg05, 1dart01.
		- Added missing 25 % Magic resistance.
		- Added DS values (179 PICKPOCKETMTPBONUS = 179 WIZARD_PROTECTION_FROM_NORMAL_MISSILES) for classical games and Set State BUFF_PRO_WEAPONS (64) and PROTECTION_FROM_NORMAL_MISSILES (109) for EE games.
- Option 2: Use original, overpowered items.
	- Robe of the Magi (wzrdclck)
		- Added DS value #133 Stat: Proficiency (CLERIC_REGENERATION - 124).
		- Added DS value for EE games: Set State BUFF_PRO_DAMAGE (65).
	- Amulet of the Magi (wzrdamul)
		- Replaced Protection from spell opcodes (#206) with full effects granting immunity to Petrification.
		- Removed all inaccurate opcodes #206 (Protection from Spell) protecting from Polymorph Other spells.
		- Removed useless #142 opcodes (Display portrait icon): 63 (Magic Resistance) and 70 (Protection from Normal Weapons).
		- Added DS values (176 LOCKPICKINGMTPBONUS = 176 WIZARD_PROTECTION_FROM_PETRIFICATION) for classical games and Set State PROTECTION_FROM_PETRIFICATION (107) for EE games.
		- Added DS values (181 DETECTILLUSIONSMTPBONUS = 181 PROTECTION_FROM_NORMAL_WEAPONS) for classical games and Set State PROTECTION_FROM_NORMAL_WEAPONS (111) and BUFF_PRO_WEAPONS (64) for EE games.
	- Boots of the Magi (wzrdboot)
		- Added opcode #142 (Display portrait icon): 159 (Improved Alacrity).
		- Added DS value (#282 Scripting State Modifier): 165 WIZARD_IMPROVED_ALACRITY.
	- Gauntlets of the Magi (wzrdbrac)
		- Added DS value #133 Stat: Proficiency (CLERIC_REGENERATION - 124).
		- Added DS value for EE games: Set State BUFF_PRO_DAMAGE (65).
	- Circlet of the Magi (wzrdhelm)
		- Added circlet animation (and color) for EE game or if 1PP is installed.
		- Fixed Feeblemind Ability.
		- Feeblemind ability: added Break Sanctuary flag for EE games.
		- Appended tooltip.2da
	- Girdle of the Magi (wzrdbelt)
		- Removed useless ability header.
		- Added opcode #142 (Display portrait icon): 11 (Protection from Missiles).
		- Fixed wrong coding in opcodes #83: parameter1 and parameter2 were inverted.
		- Added Protection from missing projectiles if they exist in game: spear, 1arow01, 1bolt01, 1dagg05, 1dart01.
		- Added missing magic projectiles.
		- Added DS values (179 PICKPOCKETMTPBONUS = 179 WIZARD_PROTECTION_FROM_NORMAL_MISSILES) for classical games and Set State BUFF_PRO_WEAPONS (64) and PROTECTION_FROM_NORMAL_MISSILES (109) for EE games.
- Updated French translation.
- Updated English item descriptions to allow WeiDU to automatically remove usability restrictions for EE games.
- Renamed Setup-StuffofTheMagi.tp2 -> stuffofthemagi.tp2 to support ALIEN's "Project Infinity".
- Added stuffofthemagi.ini with mod info metadata to support ALIEN's "Project Infinity".
- Updated to Weidu 246.


##### Version 5

- Added BG2EE compatibility. Thanks, Deratiseur! ( again :) )


##### Version 4

- Apparently, a version of 1.3 had gotten out into the wild labeled v3. This should remove any doubt as to which version is latest.
- Fixed: original gauntlets gave +2 ninth level spells permanently. This was also in the nonweidu SOTM.
- Fixed: Unidentified cape had description of a belt. Oops.
- Added: French Translation! Thanks, Deratiseur!


##### Version 2.4

- Fixed a bunch of bugs.


##### Version 2

- Added balanced items, encounter in Pocket plane.


##### Version 1.3

- Fixed the No wizard amulet from Demogorgon bug.


##### Version 1.2

- Fixed the 2 staffs from Layene bug.


##### Version 1.1

- Updated to WEIDU.
