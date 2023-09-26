Disable Critical Fails on Skill and Ability Checks for Baldur's Gate 3
=======

![DisableCritFails](https://github.com/ZerdBG3/DCF/assets/40004649/4c1e7df7-7381-43bf-9711-8caaa0c7df29)

# Discord

[![Discord Banner 4](https://discordapp.com/api/guilds/767878527634243624/widget.png?style=banner2)](https://discord.gg/FFKTbzKktj)

# Description

* Disables critical fails on skill checks and raw ability checks (like raw strength or dexterity checks - not Saving Throws) by setting the minimum roll as 2. This means you can't roll a 1 anymore, so no more crit fails on dialogues or lockpicking.
* The downside is, of course, the specific cases where a 2 is enough to pass a check but a 1 wouldn't be. So `+3` on a `DC 5` or `+8` on a `DC 10`. On those cases, you have a 5% chance of being unfairly benefited from the mod. However, given the biggest frustration tends to be on `+15` on `DC 10`, I think it's a fair tradeoff.
* Through testing, I've confirmed that the minimum roll is enforced after the roll, so this doesn't increase your probability of getting higher rolls. You still have a 5% chance of getting any value on dice rolls, but 1's will become 2.
* This also means that there's no interaction with `Reroll` features, like Halfling's Lucky. Mechanically speaking, the roll is made first, checks for a reroll possibility, returns the raw value of the dice, then it's set to the minimum specificed by the passive. So Halflings will still reroll their 1's in skill/ability checks, but if they roll a 1 again, it'll be increased to a 2.

# Compatibility

* If you're using [Zerd's Rules As Written](https://github.com/ZerdBG3/RAW), there's no need to use this mod, since `RAW` already has an option for this same feature (⚙️ `skillCheck_critFail`)
* The mod adds the minimum roll as a passive to all hero characters, overwriting the `Passives` attribute for both `_Hero` and `ORIGIN_Karlach` stat entries.
* If you're using any other mod that overwrites those entries, make sure you use [Norbyte's Script Extender](https://github.com/Norbyte/bg3se/releases) (you can follow the installation guide [here](https://github.com/ZerdBG3/RAW/blob/main/Installing.md#requirements)). By using the Script Extender and placing this mod before the conflicting one (or just first in the load order), you'll still get the passive.
