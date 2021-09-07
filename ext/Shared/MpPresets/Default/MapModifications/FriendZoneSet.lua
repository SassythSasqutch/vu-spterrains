-- Move the Ziba Tower friendzones to encompass the whole map.
-- Friendzones are defined by VolumeVectorShapeData, so we will find all of those that are used by Ziba Tower (other than the three used for Domination capture zones).
-- Because I'm lazy, I'm not going to distinguish between Friendzones and the volumes used for out-of-bounds. This also allows us to kill two birds with one stone (even though you could allow desertion as a server option anyway).

-- These are the corners we will use for the friend zones, so they comfortably encompass any of our SP or COOP maps.
local pointCoords = {
    Vec3(10000,-10000,10000),
    Vec3(10000,-10000,-10000),
    Vec3(-10000,-10000,-10000),
    Vec3(-10000,-10000,10000)
}

Events:Subscribe('Partition:Loaded', function(partition)

    -- We don't need to check if it's a SP or COOP map loading, because we've already done it in MapModificationManager.lua, from where this script is required.

    -- Do not continue if the partition is non-existent.
    if partition == nil then return end

    -- Do not continue if the partition is not from Ziba Tower (remember, we're modifying Ziba Tower data here, not data from our SP or COOP level).
    if string.find(partition.name, 'xp2_skybar') == nil then return end

    -- Check every instance of this partition.
    for _, instance in pairs(partition.instances) do

        -- If the instance is a VolumeVectorShapeData, we will modify it.
        if instance.typeInfo.name == 'VolumeVectorShapeData' then

            -- Cast our VolumeVectorShapeData to the correct type and make it writable.
            local thisInstance = VolumeVectorShapeData(instance)
            thisInstance:MakeWritable()

            -- Change the height to something that's going to be no concern to us.
            thisInstance.height = 20000

            -- Modify each of the corners of the volume.
            for i, newPoint in pairs(pointCoords) do

                -- Change the linear transform of each point to the corresponding one in the pointCoords list
                thisInstance.points[i] = newPoint

            end

        end

    end

end)