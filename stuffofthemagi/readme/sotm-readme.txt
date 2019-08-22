OVERVIEW
========

All the original work was done by Victor Straffe at Sorcerer's Place.
Kevmus updated it to WeiDU, added the more balanced items, and "bugfixed like a madman".

This mod adds the Stuff of the Magi set to several creatures. Read spoilers.txt for details.

Also, if you have all the items you will meet someone in the pocket plane who want to speak with you...
Si vous possédez tous les objets, celui qui les porte tous obtient un bonus exceptionnel, et vous rencontrerez quelqu'un qui voudra vous parler dans l'antichambre....

Note: If you choose the original overpowered items you will only end up with 7 items instead of 9, no cape nor ring.


COMPATIBLITY
============

This mod is designed to work on the following Infinity Engine games: the original Baldur's Gate II (BG2 or just SoA) with the Throne of Bhaal (ToB) expansion, Baldur's Gate II: Enhanced Edition (BG2EE), the conversion projects Baldur's Gate Trilogy (BGT) and Enhanced Edition Trilogy (EET).
This is a WeiDU mod, and therefore should be compatible with all WeiDU mods. If you encounter any bugs, please report them on the forum!


INSTALLATION
============

If you've previously installed the mod, remove it before extracting the new version. To do this, run setup-stuffofthemagi.exe, uninstall the previously installed main component and delete the stuffofthemagi folder.

- Enhanced Editions Note
  The Enhanced Editions are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update (if possible) as even after reinstalling the mods, you might not be able to continue with your old savegames. Alternatively, copy the whole game's folder into a new one that can be modded and will stay untouched by game patches. It is important that you install the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.

- Warning: new installation process
  As of version 6.0.0, options needed for installation are read from stuffofthemagi.ini file, or stuffofthemagi_user.ini, if it exists.
  As interrupting installation with plain text prompts allowing players to customise installation to their liking, those install options are no longer available via the main installer, and have been moved into stuffofthemagi.ini file in stuffofthemagi folder. This file provides a « default » installation.
  If you want to define your own customized installation, you have to edit the [Mod_content] section of stuffofthemagi.ini with Notepad or another text editor, then save this file as tuffofthemagi_user.ini.
  Each line consists of a configuration option, then '=', then a number. The only thing you should edit is the number.
  The installation process will read both ini files and prioritize user's options values. If a value is not set or mismatched in stuffofthemagi_user.ini, any installation failure will be prevented by reverting it back to its default value.

  Here is the the install options list and their values meaning (Don't change anything not listed: these are part of the testing framework.):

    - sotm_use : Items Power
        (1) = Use new, less cheesy items (recommended)
        2 = Use original, overpowered items (no cape nor ring)
    - sotm_equip : Where to find items
        (1) = Add items to creatures' equipment (recommended, enemies will use these items against you)
        2 = Add items to creatures' inventory (does not change difficulty of fights)

- Windows
  Extract the contents of the mod archive into the folder of the game you wish to modify (the folder which contains the "CHITIN.KEY" file), using 7zip, WinRAR, or another file compression utility that handles .zip files. On successful extraction, there should be an stuffofthemagi folder and a setup-stuffofthemagi.exe file in your game folder. To install, simply double-click setup-stuffofthemagi.exe and follow the instructions on screen.
  Run setup-stuffofthemagi.exe in your game folder to reinstall, uninstall or otherwise change the component settings.

- Note for Complete Uninstallation
  In addition to the methods above for removing individual components, you can completely uninstall the mod using "setup-stuffofthemagi --uninstall" at the command line to remove all components without wading through prompts.


CREDITS (alphabetical order)
============================

- Cmorgan: Help with bug-squishing/tidiness/etc.
- Deratiseur: Made it compatible with translations, wrote the French translation, and provided the EE compatible version (5.0).
- Gwendolyne: Fixed French translation and released version 6.0.0.
- Rastamage: Item stories/Erevain's talk.
- Tassadar88: Help with coding.
- Anastasya Zakharova: Matatel portrait for Erevain Beraskána at https://www.artstation.com/artwork/AznzX

If you wish to translate the mod, has a suggestion,or should encounter any bugs, please report them to the maintainers at the mod forum: http://www.shsforums.net/topic/34134-stuff-of-the-magi/
(Deprecated: Or send a PM to Kevmus at spellholdstudios.net Or email me at KevmusBG@gmail.com)


VERSIONS HISTORY
================

Version 6.0.0:
--------------
- Major updates:
	- Renamed Setup-StuffofTheMagi.tp2 -> stuffofthemagi.tp2 to support AL|EN's "Project Infinity".
	- Installation options have been moved into stuffofthemagi.ini file and replaced READLN actions to support AL|EN's "Project Infinity".
	- Reorganized mod architecture tree: created lib and readme folders, renamed script and language folders as baf and lang folders.
	- Removed unnecessary or unused files : wzrdlic2.baf, wzrdlichold.cre and wzrdbag.itm.
	- Split setup.tra file into separate thematic files for more comfortable readability.
	- Provided compatibility with 1PP and TobEx.
	- Added Detectable Spells variables.
	- Appended items (wzrdboot, wzrdhelm and wzrdstaf) to tooltip.2da file.
	- Provided a portrait to Erevain Beraskána.
	- Fixed an installation issue preventing the player wearing whole Stuff of the Magi set to gain an extra bonus if Option 2 (Use original, overpowered items) was selected.
	- Fixed remaining glitches and bugs.
	- Hard-coded item unidentified names and descriptions in .itm files to avoid writing them in installation process.
	- Updated English item descriptions for compatibility with GW_UPDATE_ITM_DESCRIPTION_TO_EE WeiDU function requirements which automatically removes usability restrictions for EE games.
	- Added stuffofthemagi.ini metadata file to support AL|EN's "Project Infinity".
- Scroll Case (wzrdbag1): Fixed wrong Storage capacity (made it bottomless as per its description) and fixed a typo and wrong scroll code (was adding 2 scrolls of Freedom instead of 1 Freedom and 1 Imprisonment).
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
		- Fixed wrong weight (3 replaces 2).
	- Amulet of the Magi (wzrdamul)
		- Replaced Protection from spell opcodes (#206) with full effects granting immunity to Petrification.
		- Removed all inaccurate opcodes #206 (Protection from Spell) protecting from Polymorph Other spells.
		- Removed useless #142 opcodes (Display portrait icon): 63 (Magic Resistance) and 70 (Protection from Normal Weapons).
		- Added DS values (176 LOCKPICKINGMTPBONUS = 176 WIZARD_PROTECTION_FROM_PETRIFICATION) for classical games and Set State PROTECTION_FROM_PETRIFICATION (107) for EE games.
	- Boots of the Magi (wzrdboot)
		- Fixed description string: same movement rate as Boots of Speed instead of "Movement rate increased by 50%", and replaced "Aura cleansed after each spell" with "Improved Alacrity one per day".
		- Fixed ability icon (SPWI921B) and replaced opcode #148 with opcode #146.
		- Appended tooltip.2da: Improved Alacrity.
	- Staff of the Magi (wzrdstaf)
		- Fixed wrong damages.
		- Modified opcode #20 (Invisibility) resistance: set to 3-Dispel/Bypass resistance.
		- Added missing opcode #296 Graphics: Protection from Specific Animation (SPNWCHRM).
		- Added opcodes #247 (Text: Protection from Display Specific String): 8364 (dominated), 14672 (charmed), 14780 (dire charmed).
		- Fixed opcode #142 (Graphics: Display Special Effect Icon) = replaces wrong parameter2 28 (Protection from Magic) with 52 (Mind Shield).
		- Removed ugly Protection from Evil glowing colors: Glow Pulse [9] effect
		- Replaced Dispel magic effects with more accurate BG2 Fixpack ones.
		- Added DS values (117 PROTECTION_FROM_EVIL).
		- Fireball-Lightning ability: added Break Sanctuary flag for EE games.
		- Spell trap ability: replaced with STAF11.spl.
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
		- Fixed wrong weight (3 replaces 2).
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
- Updated readmes.
- Updated French translation (Gwendolyne).
- Updated WeiDU installer to v246.

Version 5:
----------
- Added BG2EE compatibility. Thanks, Deratiseur! ( again :) )
- Removed unnecessary backup folder.

Version 4:
----------
- Apparently, a version of 1.3 had gotten out into the wild labeled v3. This should remove any doubt as to which version is latest.
- Fixed: original gauntlets gave +2 ninth level spells permanently. This was also in the non-WeiDU SOTM.
- Fixed: Unidentified cape had description of a belt. Oops.
- Added: French Translation! Thanks, Deratiseur!

Version 2.4:
------------
- Fixed a bunch of bugs.

Version 2:
----------
- Added balanced items, encounter in Pocket plane.

Version 1.3:
------------
- Fixed the No wizard amulet from Demogorgon bug.

Version 1.2:
------------
- Fixed the 2 staffs from Layene bug.

Version 1.1:
------------
- Updated to WeiDU.
