OVERVIEW
========

All the original work was done by Victor Straffe at Sorcerer's Place.
Kevmus updated it to WeiDU, added the more balanced items, and "bugfixed like a madman".

This mod adds the Stuff of the Magi set to several creatures. Read sotm-spoilers.txt for details.

Once you gather all the items, the one who equip them all gain an exceptional bonus. Also, if you have all items, you will meet someone in the Pocket Plane who will want to speak with you...

Note: If you choose the original overpowered items you will only end up with 7 items instead of 9, no cape nor ring.

This mod adds the Stuff of the Magi set to the following creatures:

- Robe: Vongoethe.</br>
- Amulet: Demogorgon.</br>
- Boots: Kangaxx.</br>
- Staff: Mage (Layene) in Twisted Rune.</br>
- Bracers: Firkraag.</br>
- Circlet: Sendai.</br>
- Belt: Matron Mother Ardulace.</br>
- Cloak: Suneer in Rillifane Temple (Suldanessellar).</br>
- Ring: Lavok.


COMPATIBLITY
============

This mod is designed to work on the following Infinity Engine games: the original Baldur's Gate II (BG2 or just SoA) with the Throne of Bhaal (ToB) expansion, Baldur's Gate II: Enhanced Edition (BG2EE), the conversion projects Baldur's Gate Trilogy (BGT) and Enhanced Edition Trilogy (EET).
This is a WeiDU mod, and therefore should be compatible with all WeiDU mods. If you encounter any bugs, please report them on the forum!
( http://www.shsforums.net/topic/60857-stuff-ot-the-magi-updated-to-v600-with-ee-compatibility/ )


INSTALLATION
============

If you've previously installed the mod, remove it before extracting the new version. To do this, run setup-stuffofthemagi.exe, un-install the previously installed main component and delete the stuffofthemagi folder.

- Enhanced Editions Note
  The Enhanced Editions are actively supported games. Please note that every patch update will wipe your current mod setup! If in the middle of a modded game you might want to delay the patch update (if possible) as even after reinstalling the mods, you might not be able to continue with your old savegames. Alternatively, copy the whole game's folder into a new one that can be modded and will stay untouched by game patches. It is important that you install the mod to the language version you are playing the game in. Otherwise, the dialogues of the mod will not show but give error messages.

- Windows
  The Stuff of the Magi mod for Windows is distributed as an extractable compressed archive and includes a WeiDU installer.
  Extract the contents of the mod archive into the folder of the game you wish to modify (the folder which contains the "CHITIN.KEY" file), using 7zip, WinRAR, or another file compression utility that handles .zip files. On successful extraction, there should be an stuffofthemagi folder and a setup-stuffofthemagi.exe file in your game folder. To install, simply double-click setup-stuffofthemagi.exe and follow the instructions on screen.
  Run setup-stuffofthemagi.exe in your game folder to reinstall, un-install or otherwise change the component settings.

- Note for Complete Un-installation
  In addition to the methods above for removing individual components, you can completely un-install the mod using "setup-stuffofthemagi --uninstall" at the command line to remove all components without wading through prompts.


COMPONENTS
==========

As of v6.0.0, the installer splits main component into four sub components, letting the player decide which one he/she wants to install.  
The number of each is the component DESIGNATED number which gives it a fixed install position and allows automated installers to specify component choices.

0. Use new, less cheesy items AND Add them to creatures' equipment (recommended)
1. Use new, less cheesy items AND Add them to creatures' inventory
2. Use original, overpowered items AND Add them to creatures' equipment
3. Use original, overpowered items AND Add them to creatures' inventory

Please note that the recommended installation options are "Use new, less cheesy items" and "Add them to creatures' equipment".<br>
If you choose "Add items to creatures' equipment", enemies will use these items against you, while "Add items to creature's inventory" option won't change difficulty of fights.


CREDITS
=======

- Cmorgan: Help with bug-squishing/tidiness/etc.
- Kevmus: Updated the mod to WeiDU, added the more balanced items, and fixed bugs.
- Rastamage: Item stories/Erevain's talk.
- Tassadar88: Help with coding.
- Deratiseur: Made it compatible with translations, wrote the French translation, and provided native BG2:EE compatible version 5.
- Gwendolyne: Released version 6.0.0.
- ilot: Italian translation.
- The BiG World Textpack Russian team: Russian translation.
- Anastasya Zakharova: Matatel portrait for Erevain Beraskána at https://www.artstation.com/artwork/AznzX
- AL|EN: Wrote Auto Packager tool which automatically provides Windows, Linux and Mac versions in the same archive file.
( https://forums.beamdog.com/discussion/78364/infinity-auto-packager-automatically-generate-and-adds-mod-packages-to-release-when-you-publish-it )

If you wish to translate the mod, has a suggestion,or should encounter any bugs, please report them to the maintainers at the mod forum: http://www.shsforums.net/topic/60857-stuff-ot-the-magi-updated-to-v600-with-ee-compatibility/
(Deprecated: Or send a PM to Kevmus at spellholdstudios.net Or email me at KevmusBG@gmail.com)


VERSIONS HISTORY
================

Version 6.0.0
-------------
- Major updates:
	- Added stuffofthemagi.ini metadata file to support AL|EN's "Project Infinity".
	- Renamed Setup-StuffofTheMagi.tp2 -> stuffofthemagi.tp2 to support AL|EN's "Project Infinity".
	- Replaced `AUTHOR` keyword with `SUPPORT`.
	- Fixed a typo in `HANDLE_CHARSETS` function (replaced "infer_charset" with "infer_charsets").
	- Added `REQUIRE_PREDICATE` process to avoid installing the mod in inaccurate games.
	- Added components `DESIGNATED` numbers and "sotm_new_items_in_cre_equipment", "sotm_new_items_in_cre_inventory", "sotm_original_items_in_cre_equipment" and "sotm_original_items_in_cre_inventory" `LABELS`.
	- Replaced `READLN` actions with `SUBCOMPONENTS` to support AL|EN's "Project Infinity".
	- Externalized tp2 code into "sotm_items.tpa" library for more comfortable readability and maintenance.
	- Added "always.tpa" library.
	- Added native EET, 1PP and ToBEx compatibility.
	- Commented code as much as possible.
	- Fixed wrong ACTION.IDS patching.
	- Fixed an installation issue preventing the player wearing whole Stuff of the Magi set to gain an extra bonus if Option 2 ("Use original, overpowered items") was selected.
	- Does not compile anymore "wzrdlich.baf" twice.
	- wzrdlich.cre: moves RNDTREnn items from quick item slots to inventory.
	- Provided a portrait to Erevain Beraskána.
	- Updated "string.tra" files for compatibility with GW_UPDATE_ITM_DESCRIPTION_TO_EE WeiDU function requirements which automatically removes usability restrictions for EE games.
	- Split "setup.tra" file into separate thematic files for more comfortable readability.
	- Added Italian translation (by ilot). 
	- Added Russian translation (by the BiG World Textpack Russian project). 
	- Split "setup.tra" file into separate thematic files for more comfortable readability.
	- Updated and renamed readme files to "sotm-readme-%LANGUAGE%.txt", then moved them into new "readme" folder.
	- Reorganized mod architecture tree: renamed "script" and "language" folders to "baf" and "lang" folders.
	- Removed useless or unused files: wzrdlic2.baf, wzrdlichold.cre and wzrdbag.itm.
	- Included Linux and Mac Os X versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).
	- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
	- Updated WeiDU installer to v246.
	- Uploaded mod to official Spellhold Studios GitHub mirror account.

- Items updates:
	- Hard-coded item unidentified names and descriptions in .itm files to avoid writing them in installation process.
	- Added 1PP compatibility to harmonize colors item with EE games and classical 1PP modded games.
	- Added "Break Sanctuary" flag whenever relevant for EE games.
	- Added Detectable Spells variables whenever relevant.
	- Appended tooltip.2da whenever relevant (wzrdboot, wzrdhelm and wzrdstaf).
	- Fixed remaining glitches and bugs.
	- Scroll Case (wzrdbag1): Fixed wrong Storage capacity (made it bottomless as per its description) and fixed a typo and wrong scroll code (was adding 2 scrolls of Freedom instead of 1 Freedom and 1 Imprisonment).

- Option 1: "Use new, less cheesy items"
	- Cape of the Magi (wzrdrobe)
		- Removed useless Chain Contingency ability that did not do anything and was not described in identified description string.
		- Replaced missing description icon CCLCK02 with CCLCK01.
		- Replaced wrong GCLCK02 ground icon (robe) with GCLCK01 (cloak).
	- Ring of the Magi (wzrdring)
		- Added missing Immune to level drain effects: op#267 Protection from Display Specific String (41495 "One Level Drained" - 40968 "Two Levels Drained" - 40969 "Three Levels Drained" - 40979 "Four Levels Drained" - 41616 "Five Levels Drained") and op#169 Immunity Special Effect Icon (59 Energy Drain).
		- Added missing DS value: opcode #282 (Script: Scripting State Modifier): parameter1 = 1 - parameter2 = 2 [158 SCRIPTINGSTATE3 aka LEVEL_DRAIN_IMMUNITY].
		- Decided not to add opcode #142 Display portrait icon (90 : Negative Plane Protection).
	- Robe of the Magi (wzrdclck)
		- Fixed wrong weight (3 - was 2).
		- Fixed opcode #142 (Display portrait icon): replaced wrong 76 icon (Protected from the Elements) with 63 (Magic Resistance).
	- Amulet of the Magi (wzrdamul)
		- Removed all inaccurate opcodes #206 (Protection from Spell) protecting from Polymorph Other and Flesh to Stone spells with full effects granting immunity to Petrification.
		- Removed useless #142 opcodes (Display portrait icon): 63 (Magic Resistance) and 70 (Protection from Normal Weapons).
		- Added missing DS value: op#282 (Script: Scripting State Modifier: parameter1 = 1 - parameter2 = 20 [176 LOCKPICKINGMTPBONUS aka WIZARD_PROTECTION_FROM_PETRIFICATION]) for classical games and op#328 Set state (107 PROTECTION_FROM_PETRIFICATION) for EE games.
	- Boots of the Magi (wzrdboot)
		- Fixed description strref: same movement rate as Boots of Speed instead of "Movement rate increased by 50%", and replaced "Aura cleansed after each spell" with "Improved Alacrity one per day".
		- Fixed ability icon (SPWI921B) and replaced opcode #148 with opcode #146.
		- Appended tooltip.2da: "Improved Alacrity".
	- Staff of the Magi (wzrdstaf)
		- Fixed wrong damages.
		- Modified opcode #20 (Invisibility) resistance: set to 3 Dispel/Bypass resistance.
		- Added missing opcodes for a full Immunity to Charm effects: op#296 Protection from Specific Animation (SPNWCHRM), op#267 (protection from string = 8364 "Dominated" - 14780 "Dire charmed" - 14672 "Charmed"). Fixed opcode #142 (Display Special Effect Icon) = replaced wrong parameter2 28 (Protection from Magic) with 52 (Mind Shield).
		- Removed ugly Protection from Evil glowing colors: Glow Pulse [9] effect
		- Added missing DS values [117 PROTECTION_FROM_EVIL].
		- Replaced Dispel magic effects with more accurate BG2 Fixpack ones.
		- Fireball-Lightning Bolt ability: added "Break Sanctuary" flag for EE games.
		- Spell trap ability: replaced with STAF11.spl.
		- Added 1PP compatibility with EE games and classical 1PP modded games: added Glowing staff animation (and colors) and harmonized colors item.
		- Appended tooltip.2da: "Staff of the Magi, Fireball-Lightning, Spell Trap".
	- Gauntlets of the Magi (wzrdbrac)
		- Updated description (was missing +1 Intelligence).
	- Circlet of the Magi (wzrdhelm)
		- Item description: added missing Weight (1).
		- Added missing opcodes for a full Immunity to Silence effects: op#169 (Immunity Special Effect Icon = 34 Silenced) and op#267 (protection from string = 14002 "Silence" - 14676 "Silenced").
		- Replaced Protection from spell opcodes (#206) with full effects granting Mind Shield.
		- Added 1PP compatibility with EE games and classical 1PP modded games: added circlet animation (JB) and color.
		- Added EE and ToBEx item flag: EE/Ex: Toggle critical hits flag (BIT25).
	- Girdle of the Magi (wzrdbelt)
		- Added missing opcode #142 (Display portrait icon): 11 (Protection from Missiles).
		- Fixed wrong coding in opcodes #83: parameter1 and parameter2 were inverted.
		- Added missing Protection from normal projectiles if they exist (EE games and classical 1PP modded games): 1arow01, 1bolt01, 1dagg05, 1dart01.
		- Added missing 25% Magic resistance opcode.
		- Added missing DS values: op#282 (Script: Scripting State Modifier: parameter1 = 1 parameter2 = 23 [179 PICKPOCKETMTPBONUS aka WIZARD_PROTECTION_FROM_NORMAL_MISSILES]) for classical games and op#328 Set state (64 BUFF_PRO_WEAPONS and 109 PROTECTION_FROM_NORMAL_MISSILES) for EE games.

- Option 2: "Use original, overpowered items"
	- Robe of the Magi (wzrdclck)
		- Fixed wrong weight (3 - was 2).
		- Added missing DS value op#233 (Stat: Proficiency [124 EXTRAPROFICIENCY10 aka CLERIC_REGENERATION].
		- Added DS value for EE games: op#328 Set state (65 BUFF_PRO_DAMAGE).
	- Amulet of the Magi (wzrdamul)
		- Replaced Protection from spell opcodes (#206) with full effects granting immunity to Petrification.
		- Replaced all inaccurate opcodes #206 (Protection from Spell) protecting from Polymorph Other spells with a +1 bonus to Save vs. Polymorph.
		- Added missing DS value: op#282 (Script: Scripting State Modifier: parameter1 = 1 - parameter2 = 20 [176 LOCKPICKINGMTPBONUS aka WIZARD_PROTECTION_FROM_PETRIFICATION]) for classical games and op#328 Set state (107 PROTECTION_FROM_PETRIFICATION) for EE games.
		- Added missing DS values: op#282 (Script: Scripting State Modifier: parameter1 = 1 - parameter2 = 25 [181 DETECTILLUSIONSMTPBONUS aka PROTECTION_FROM_NORMAL_WEAPONS]) for classical games and op#328 Set state Set State (111 PROTECTION_FROM_NORMAL_WEAPONS and 64 BUFF_PRO_WEAPONS) for EE games.
	- Boots of the Magi (wzrdboot)
		- Added opcode #142 (Display portrait icon): 159 (Improved Alacrity).
		- Added missing DS value: op#282 (Scripting State Modifier: parameter1 = 1 - parameter2 = 9 [165 SCRIPTINGSTATE10 aka WIZARD_IMPROVED_ALACRITY].
	- Circlet of the Magi (wzrdhelm)
		- Item description: added missing Weight (1).
		- Added missing opcodes for a full Immunity to Silence effects: op#169 (Immunity Special Effect Icon = 34 Silenced) and op#267 (protection from string = 14002 "Silence" - 14676 "Silenced").
		- Replaced Protection from spell opcodes (#206) with full effects granting Mind Shield.
		- Fixed Feeblemind ability settings (added missing icon, flags...).
		- Feeblemind ability: added "Break Sanctuary" flag for EE games.
		- Added 1PP compatibility with EE games and classical 1PP modded games: added circlet animation (JB) and color.
		- Added EE and ToBEx item flag: EE/Ex: Toggle critical hits flag (BIT25).
		- Appended tooltip.2da: "Feeblemind".
	- Girdle of the Magi (wzrdbelt)
		- Removed useless empty ability header.
		- Added opcode #142 (Display portrait icon): 11 (Protection from Missiles).
		- Fixed wrong coding in opcodes #83: parameter1 and parameter2 were inverted.
		- Added Protection from missing vanilla magic projectiles and from missing 1PP projectiles if they exist (EE games and classical 1PP modded games).
		- Added missing DS values: op#282 (Script: Scripting State Modifier: parameter1 = 1 parameter2 = 23 [179 PICKPOCKETMTPBONUS aka WIZARD_PROTECTION_FROM_NORMAL_MISSILES]) for classical games and op#328 Set state (64 BUFF_PRO_WEAPONS and 109 PROTECTION_FROM_NORMAL_MISSILES) for EE games.

Version 5
---------
- Added native BG2EE compatibility. Thanks, Deratiseur! (again :))
- Removed unnecessary "backup" folder.

Version 4
---------
- Apparently, a version of 1.3 had gotten out into the wild labeled v3. This should remove any doubt as to which version is latest.
- Fixed: original gauntlets gave +2 ninth level spells permanently. This was also in the non-WeiDU SOTM.
- Fixed: unidentified cape had description of a belt. Oops.
- Added: French translation! Thanks, Deratiseur!

Version 2.4
-----------
- Fixed a bunch of bugs.

Version 2
---------
- Added balanced items, encounter in Pocket plane.

Version 1.3
-----------
- Fixed the No wizard amulet from Demogorgon bug.

Version 1.2
-----------
- Fixed the 2 staffs from Layene bug.

Version 1.1
-----------
- Updated to WeiDU.

Version 1
---------
- Initial release.
