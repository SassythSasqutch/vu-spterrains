-- This script moves all the Ziba Tower TDM CQ spawns from several different points on the Ziba Tower map, to a single point for each SP or COOP level.

-- First we will compile a list of all the spawns we want to set.
-- If you're wondering what this is, look up Lua tables.
local spawnPosns = {

    ['COOP_002'] = LinearTransform(
        Vec3(0.999543, 0.000000, -0.030243), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.030243, 0.000000, 0.999543), 
        Vec3(-48.945313, 9.849414, -64.342773)
    ),

    ['COOP_003'] = LinearTransform(
        Vec3(-0.999994, 0.000000, -0.003506), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.003506, 0.000000, -0.999994), 
        Vec3(-14.012695, 73.988083, -45.356445)
    ),

    ['COOP_006'] = LinearTransform(
        Vec3(0.575544, 0.000000, 0.817771), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.817771, 0.000000, 0.575544), 
        Vec3(-642.994141, 386.038910, -310.077148)
    ),

    ['COOP_007'] = LinearTransform(
        Vec3(0.999987, 0.000000, -0.005192), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.005192, 0.000000, 0.999987), 
        Vec3(49.988281, 64.235176, 37.814453)
    ),

    ['COOP_009'] = LinearTransform(
        Vec3(0.009207, 0.000000, 0.999958), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.999958, 0.000000, 0.009207),
        Vec3(-86.617188, 71.740036, 828.671875)
    ),

    ['COOP_010'] = LinearTransform(
        Vec3(-0.409867, 0.000000, 0.912145), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.912145, 0.000000, -0.409867),
        Vec3(-83.893555, 66.397263, -422.454102)
    ),

    ['SP_Bank'] = LinearTransform(
        Vec3(0.843499, 0.000000, -0.537131), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.537131, 0.000000, 0.843499), 
        Vec3(-1229.481445, 182.361130, -457.342773)
    ),

    ['SP_Earthquake'] = LinearTransform(
        Vec3(0.999996, 0.000000, 0.002901), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.002901, 0.000000, 0.999996), 
        Vec3(-303.462891, 71.298630, -2052.060547)
    ),

    ['SP_Earthquake2'] = LinearTransform(
        Vec3(0.449386, 0.000000, -0.893338), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.893338, 0.000000, 0.449386), 
        Vec3(-226.657227, 62.516411, -131.425781)
    ),

    ['SP_Finale'] = LinearTransform(
        Vec3(0.969962, 0.000000, 0.243256), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.243256, 0.000000, 0.969962), 
        Vec3(-97.094727, 53.421684, 1099.279297)
    ),

    ['SP_Jet'] = LinearTransform(
        Vec3(-0.999995, 0.000000, -0.003193), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.003193, 0.000000, -0.999995), 
        Vec3(-1167.708008, 478.191223, 1045.528320)
    ),

    ['SP_New_York'] = LinearTransform(
        Vec3(0.999998, 0.000000, -0.001892), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.001892, 0.000000, 0.999998), 
        Vec3(-1906.362305, 66.884567, -1345.299805)
    ),

    ['SP_Paris'] = LinearTransform(
        Vec3(0.999997, 0.000000, 0.002311), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.002311, 0.000000, 0.999997), 
        Vec3(-427.747070, -0.362483, -761.567383)
    ),

    ['SP_Sniper'] = LinearTransform(
        Vec3(-0.999997, 0.000000, 0.002417), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.002417, 0.000000, -0.999997), 
        Vec3(-167.955078, 104.961723, 188.761719)
    ),

    ['SP_Tank/'] = LinearTransform(
        Vec3(0.056126, 0.000000, 0.998424), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.998424, 0.000000, 0.056126), 
        Vec3(-1060.274414, 90.188293, 719.691406)
    ),

    ['SP_Tank_b'] = LinearTransform(
        Vec3(0.001511, 0.000000, 0.999999), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.999999, 0.000000, 0.001511), 
        Vec3(-83.804688, 113.314255, -1687.422852)
    ),

    ['SP_Valley'] = LinearTransform(
        Vec3(0.474308, 0.000000, 0.880359), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.880359, 0.000000, 0.474308), 
        Vec3(1360.721680, 93.252731, -1498.043945)
    ),

    ['SP_Villa'] = LinearTransform(
        Vec3(-1.000000, 0.000000, 0.000960), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.000960, 0.000000, -1.000000), 
        Vec3(-266.905273, 275.563354, -141.084961)
    )

}

-- All we need to do now is find where Ziba Tower keeps all its spawn logic (known as AlternateSpawnEntityData) so we can change their coordinates to the above.
-- I know that these are all contained in the Levels/XP2_Skybar/Spawners WorldData, so I can register and instance load handler for that.
-- A good tip is to search for AlternateSpawnEntityData under your MP level to see where they're all stored.
ResourceManager:RegisterInstanceLoadHandler(Guid('5B274606-C861-411A-B60A-F23B6277F92A'), Guid('07C67E13-BE16-4E1C-AB6E-D7FE834BF2D5'), function(instance)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the current level is not any singleplayer or coop level in TDM CQ.
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    -- Cast our WorldPartData instance to the correct type.
    local thisInstance = WorldPartData(instance)

    -- Look at each object in the 'Objects' list of our WorldPartData.
    for _, object in pairs(thisInstance.objects) do

        -- If the object is of the 'AlternateSpawnEntityData' type, then we modify it.
        if object.typeInfo.name == 'AlternateSpawnEntityData' then

            -- Cast our AlternateSpawnEntityData instance to the correct type and make it writable.
            local thisObject = AlternateSpawnEntityData(object)
            thisObject:MakeWritable()

            -- Now we need to change the coordinates of this spawn to the one we want. 
            -- This is different for each map, so we need to make sure we're in the right map before we change it.
            -- I will do this for every SP/COOP map, because I'm changing the spawns for all of them.
            -- You'll only need to do it for the SP level you're concerned about.

            for level, spawnPos in pairs(spawnPosns) do

                -- Check if the current level name matches one of the levels in the list.
                if string.find(levelName, level) then

                    thisObject.transform = spawnPos

                end

            end

        end

    end

end)

-- You're done. Don't forget to add this to ext/Shared/__init__.lua

--[[

Vec3(0.999987, 0.000000, -0.005192), 
Vec3(0.000000, 1.000000, 0.000000), 
Vec3(0.005192, 0.000000, 0.999987), 
Vec3(49.988281, 64.235176, 37.814453)

]]