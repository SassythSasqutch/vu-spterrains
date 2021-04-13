Events:Subscribe('Partition:Loaded', function(partition) -- Iterates through every single partition so, if there is an instance in one of them we want to change, we can do so.

    -- Don't read any partition not referring to the SP map being loaded
    if partition == nil or string.find(partition.name, thisMap) == nil then
        return
    end

    -- Reads all the instances in each partition
    for _, instance in pairs(partition.instances) do

        if instance == nil then 
            break
        end

        -- Exclude all WorldParts we don't want
        if instance.typeInfo.name == 'WorldPartReferenceObjectData' then

            local thisInstance = WorldPartReferenceObjectData(instance)

            print(thisInstance.blueprint.name)

            if string.find(thisInstance.blueprint.name, 'Default') == nil -- Keep the 'default' WorldPart, which defines the terrain
            then
            
                thisInstance:MakeWritable()

                print('Excluding WorldPartReferenceObjectData \'' .. tostring(thisInstance.blueprint.name) .. '\' in partition \'' .. partition.name .. '\'...')
                thisInstance.excluded = true
                
            end
            
        end
    
    end

end)