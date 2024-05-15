# Drizzt Saga

#### Mod for BG1, BGEE, BG1Tutu and BGT
#### Version 3
##### Created by: Flysoup
##### WeiDU code & updates by: pro5, Badgert, Erebusant, Roberciiik, TotoR

### General overview

The Drizzt Saga is a WeiDU-based modification for Baldur's Gate 1: Tales of the Sword Coast (BG1:TotSC), Baldur's Gate 1: Tutu conversion (Tutu), Baldur's Gate Trilogy conversion (BGT), and Baldur's Gate: Enhanced Edition (BGEE).
There are two separate install packages of the mod - for BG1:TotSC and BGEE/BGT/Tutu. Both packages can be downloaded from the mod's [homepage](http://www.blackwyrmlair.net/Mods/drizztsaga.php).
Note that most of this readme's contents apply to the BGEE/BGT/Tutu package, the BG1 version has not been updated since the original v1 release.
Tales of the Sword Coast expansion (in the case of BG1 and Tutu) is required to install this mod.

Drizzt Saga is available in the following languages: English, French, Italian, Polish, Russian and Spanish.

This mod brings Drizzt and his companions into the game as joinable characters with their own major quests and side quests, numerous new areas, items (some to be forged) and creatures.
Also, two secret joinable NPCs to discover for those of evil alignment a bit further into the story.

Drizzt is on his way back to Icewind Dale from an errand in the Sword Coast. What he doesn't know is that dark times are upon Dale and his companions will lead him and the protagonist to an adventure of epic proportions.

In the normal version of the mod, you meet Drizzt at the original area fighting some gnolls. In the same area, you will encounter Regis muttering something about a dark ranger.
After joining Drizzt head back to Regis and the Drizzt Saga begins.

With the Delayed Start component, the story begins after finishing Durlag's Tower and gaining enough experience to be more of an equal to Drizzt and his friends (who are all high-level characters).
Provided you aided Drizzt in the initial gnoll encounter, he will meet you outside Durlag's Tower after finishing its main quest.

### Version history

<details>
    <summary>Upcoming release...</summary>
    <br/>

By Roberciiik:
- Drizzt Saga uploaded to GitHub!
- Fixed IWD animation compatibility issues on BGEE, BGT and TuTu (thanks to TotoR).
- Fixed joinable NPC spawn issue on EET.
- New Polish translation by Bartek, formatted to EE by Roberciiik.
- Biffing is now an optional component.
- Update of BP-BGT-Worldmap to support v13.1.0.
- Reviewed and updated items (more in the [commit](https://github.com/Black-Wyrm-Lair/Drizzt-Saga/pull/5) details).
- Removed embedded CRE actors in F_6666.ARE and used proper CRE files instead.
- Removed incorrect pile containers from F_6666.ARE.
- Fixed Regis journal entries, should use them from setup.tra instead of f_regis.tra.
- Moved the English soundset to a different directory, so it can be replaced by localized sounds.
- Corrected doubled cpmvars.tpa entry for "Beregost_House08".
- Removed legacy links from BG1 areas connected to Drizzt Saga areas.
- And other minor fixes (listed in GitHub commits).

By TotoR:
- New balancing components: items exploits, items nerfing and XP reduction.
- Corrected NPC statistics, classes and their items.
- Fixed bugs in various CRE files (more in the commits [here](https://github.com/Black-Wyrm-Lair/Drizzt-Saga/pull/8) and [here](https://github.com/Black-Wyrm-Lair/Drizzt-Saga/pull/27)).
- Fixed various items (more in the commits [here](https://github.com/Black-Wyrm-Lair/Drizzt-Saga/pull/11) and [here](https://github.com/Black-Wyrm-Lair/Drizzt-Saga/pull/27)).
- Fixed NPC scripts: add triggers to prevent duplication of NPCs
- Used Drizzt Portrait, included in the mod, only for F_DRIZZT.cre.
- The script file f_robedA.bcs will now summon a Noble Genie (consistency fix between games).
- Small rework of Valen encounter to be triggered only after finishing the Drizzt Saga story.
- Removed incorrect links to Dragon's Cave area linked from BG1 areas.

By AL|EN:
 - Added Infinity Auto Packager.
 - Deprecation of the 'Raise the XP cap' component in favor of well-maintained components from various Tweaks mods.

By Lzw104522773:
- Added Simplified Chinese translation.

By JohnBob:
- Updated French translation.

</details>
