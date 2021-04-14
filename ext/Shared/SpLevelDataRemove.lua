require '__shared/SpLevelApprovedWorldPartList'

Events:Subscribe('Partition:Loaded', function(partition) -- Iterates through every single partition so, if there is an instance in one of them we want to change, we can do so.

    -- Don't read any partition not referring to the SP map being loaded
    if partition == nil or string.find(partition.name, thisMap) == nil then
        return
    end

    -- Reads all the instances in each partition
    for _, instance in pairs(partition.instances) do

        -- Exclude all WorldParts we don't want - these are often associated with logic
        if instance.typeInfo.name == 'WorldPartReferenceObjectData' then

            local thisInstance = WorldPartReferenceObjectData(instance)

            print('Intercepting WorldPart :' .. thisInstance.blueprint.name)

            -- If this is not an approved WorldPart from the list, do not continue
            for i, v in pairs(approvedWorldPartRefGuids) do
                if thisInstance.instanceGuid == Guid(approvedWorldPartRefGuids[i]) then
                    print('WorldPart approved.')
                    goto cont
                end
            end
            
            thisInstance:MakeWritable()

            print('Excluding WorldPartReferenceObjectData \'' .. tostring(thisInstance.blueprint.name) .. '\' in partition \'' .. partition.name .. '\'...')
            thisInstance.excluded = true

            ::cont::
            
        end
    
    end

end)