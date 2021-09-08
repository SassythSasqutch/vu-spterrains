# vu-spterrains

*Update: the mod's finished (for now). Thanks to Bree_Arnold who found the last issue.*

Modification for Battlefield 3 (using the Venice Unleashed framework) allowing singleplayer and co-op maps to be played in multiplayer with a universal solution. While's the mod's first release is ready, in the future I'll try and add fixes for excluded WorldPartData (see below for more details), and add more MP-friendly Visual Environment for each level (e.g. COOP_010 has a black sky). Feel free to contribute to these yourself.

In your server MapList, load the level like any other with any gamemode. The options are below, in chronological order:

```
coop_007         -    Operation Exodus
coop_006         -    Fire from the Sky
coop_009         -    Exfiltration
coop_002         -    Hit and Run
coop_003         -    Drop 'Em Like Liquid
coop_010         -    The Eleventh Hour
sp_new_york      -    Semper Fidelis
sp_earthquake    -    Operation Swordbreaker
sp_earthquake2   -    Uprising
sp_jet           -    Going Hunting
sp_bank          -    Operation Guillotine
sp_paris         -    Comrades
sp_tank          -    Thunder Run
sp_tank_b        -    Fear No Evil (see note below)
sp_sniper        -    Night Shift
sp_valley        -    Rock and a Hard Place
sp_villa         -    Kaffarov
sp_finale        -    The Great Destroyer
```

**NOTE**: Some quirk of Frostbite or something means that this mod can't load Thunder Run (sp_tank) if Fear No Evil (sp_tank_b) is allowed to load in MP - the server loads Fear No Evil every time you put 'sp_tank' in the server MapList. A dirty fix has been implemented: *if you wish to play Fear No Evil, change line 5 in `vu-spterrains/ext/Shared/__init__.lua` to 'true'*.

If you put all of the above in your MapList (in the same order), you can also use the `vu-spterrains.skipto` command whilst in game. To enable this, comment back in the 'SkipToLevel' requirements in `Server/__init__.lua` and `Client/__init__.lua`.

## Gamemodes - Default

By default, load Team Deathmatch CQ (`TeamDeathMatchC0`) to explore. Since there will be closed doors and invisible walls in some levels, I recommend a NoClip mod, like [txt's and Powback's vu-noclip mod here](https://github.com/romunro/VU-Noclip) - press 'v', and you will be able to move anywhere you want.

## Gamemodes - Freecam

To use a freecam to look around, load any gamemode other than `TeamDeathMatchC0`. If the map has a custom layout (see below), don't load that gamemode either.

## Gamemodes - Custom Layouts

Some maps have custom layouts, making them playable for more than just exploration.

| Level                      | Gamemode (as in MapList) | Description                                                                                                          |
| -------------------------- | ------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| Thunder Run `SP_Tank`      | `ConquestLarge0`         | Follows (mostly) the mission, starting in the desert and running towards Tehran. Maybe biggest CQL map in BF.        |

More custom layouts will be made in the future.

There are instructions for making your own custom layouts (aka 'presets') in `vu-spterrains/ext/Shared/MpPresets/Default`. If your preset works, message me and I will add it to the mod: the more, the merrier.

## Other issues

Many SP levels have issues with certain parts of the map (WorldPart instances, in particular), causing the server to crash. For this reason, these have been excluded. The list of approved WorldParts - including ones which should be approved, but are excluded for their problems - can be seen and edited at `vu-spterrains/ext/Shared/SpLevelApprovedWorldPartList.lua`. Operation Swordbreaker (SP_Earthquake) is a level which is particularly hurt by this. It seems like it could be a small no. of props/assets creating this issue, so at some point I will try and fix it.

## (For map makers) Excluding SubWorlds

If you are making a map with this mod, you might want to remove whole parts of the level. To do so, see the instructions in `vu-spterrains/ext/Shared/SpLevelExcludedSubWorldList.lua`.

## Thanks

*NoFate*, *kiwidog*, *Timse*, *Imposter*, *lujara*, *Paulofonta*, *Rodney*, and everyone in the VU team, for the VU framework - it seems, Frostbite was not complicated enough for you guys to make mods after all;

again *kiwidog*, for proving this was possible and making me take one last look at bundle loading, which fixed one of the last remaining problems;

*keku645*, for... 'motivating' me... to say the least (no, he didn't harass me daily for updates on the mod, why would you think that?), and providing odd snippets of potentially useful material (especially about FriendZones, which solved one of the final issues with the mod);

*Powback*, *kiwidog*, and *Bree_Arnold* and all others who've worked on the PatchSPCOOP and other similar mods which were a great reference;

*FoolHen*, *Powback*, *3ti65*, and the *BF3: Reality Mod team*, for help with VEXT, and - of course - giving me a reason to keep working on this;

*Bree_Arnold*, for their help with VEXT;

*Janssent*, for their magical tools and help VEXT;

*reirei*, *Breaknix*, and everyone else who helped me learn Lua and VEXT between October 2020 and today.

##

If you have any further questions, or have found something I might want to fix/add, chat to me on Discord as @SassythSasqutch#9081. Thanks.
