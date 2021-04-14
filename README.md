# vu-spterrains
Modification for Battlefield 3 (using the Venice Unleashed framework) allowing singleplayer and co-op maps to be played in multiplayer using a universal solution.

By default, the spawns are set to high above the map, allowing you to parachute down and explore/find coordinates, etc. Conquest Large layouts have been made for Thunder Run (SP_Tank).

Many SP levels have issues with certain parts of the map, causing the server to crash. For this reason, these have been excluded. The list of approved WorldParts - including ones which should be approved, but are excluded for their problems - can be seen and edited at `vu-spterrains/ext/Shared/SpLevelApprovedWorldPartList.lua`. Operation Swordbreaker (SP_Earthquake) is a level which is particularly hurt by this. It seems like it could be a small no. of props/assets creating this issue, so at some point I will try and fix it.
