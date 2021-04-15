# vu-spterrains
Modification for Battlefield 3 (using the Venice Unleashed framework) allowing singleplayer and co-op maps to be played in multiplayer with a universal solution.

In your server MapList, load the level like any other with any gamemode. The options are below:

```
coop_002         -    Hit and Run
coop_003         -    Drop 'Em Like Liquid
coop_006         -    Fire from the Sky
coop_007         -    Operation Exodus
coop_009         -    Exfiltration
coop_010         -    The Eleventh Hour
sp_bank          -    Operation Guillotine
sp_earthquake    -    Operation Swordbreaker
sp_earthquake2   -    Uprising
sp_finale        -    The Great Destroyer
sp_jet           -    Going Hunting
sp_new_york      -    Semper Fidelis
sp_paris         -    Comrades
sp_sniper        -    Night Shift
sp_tank          -    Thunder Run
sp_tank_b        -    Fear No Evil
sp_valley        -    Rock and a Hard Place
sp_villa         -    Kaffarov
```

**NOTE**: Some quirk of Frostbite or something means that this mod can't load Thunder Run (sp_tank) if Fear No Evil (sp_tank_b) is allowed to load in MP - the server loads Fear No Evil every time you put 'sp_tank' in the server MapList. A dirty fix has been implemented: *if you wish to play Fear No Evil, change line 8 in `vu-spterrains/ext/Shared/\__init__.lua` to 'true'*.

By default with Conquest Large, the spawns are set to high above the map, allowing you to parachute down and explore/find coordinates, etc. Multiplayer layouts have been made for Thunder Run (SP_Tank) in Conquest Large, and more maps to come. **(NOT YET IMPLEMENTED!)** 

By default, loading any gamemode other than Conquest Large will not load multiplayer logic - you can only use a freecam. This is not true for maps with a custom multiplayer preset.

Many SP levels have issues with certain parts of the map (WorldPart instances, in particular), causing the server to crash. For this reason, these have been excluded. The list of approved WorldParts - including ones which should be approved, but are excluded for their problems - can be seen and edited at `vu-spterrains/ext/Shared/SpLevelApprovedWorldPartList.lua`. Operation Swordbreaker (SP_Earthquake) is a level which is particularly hurt by this. It seems like it could be a small no. of props/assets creating this issue, so at some point I will try and fix it.

If you are making a map with this mod, you might want to remove whole parts of the level. To do so, see the instructions in `vu-spterrains/ext/Shared/Examples/SpLevelExcludeSubWorldExample.lua`.

If you have any further questions, or have found something I might want to fix/add, chat to me on Discord as @SassythSasqutch#9081. Thanks.