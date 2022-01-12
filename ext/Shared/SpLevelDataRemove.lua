require '__shared/SpLevelApprovedWorldPartList'

Events:Subscribe('Partition:Loaded', function(partition) -- Iterates through every single partition so, if there is an instance in one of them we want to change, we can do so.

    -- Don't read any partition not referring to a SP or COOP map
    if partition == nil or (string.find(partition.name, 'coop_') == nil and string.find(partition.name, 'sp_') == nil) then
        return
    end

    -- Reads all the instances in each partition
    for _, instance in pairs(partition.instances) do

        -- Exclude all WorldParts we don't want - these are often associated with logic
        if instance.typeInfo.name == 'WorldPartReferenceObjectData' then

            local thisInstance = WorldPartReferenceObjectData(instance)

            --print('Intercepting WorldPart: ' .. thisInstance.blueprint.name)

            -- If this is an approved WorldPart from the list, skip past the code to exclude the WorldPart
            for i, v in pairs(approvedWorldPartRefGuids) do
                if thisInstance.instanceGuid == Guid(approvedWorldPartRefGuids[i]) then
                    if thisInstance.blueprint.name == '' then
                        print('WorldPart (unknown) approved.')
                    else
                        print('WorldPart \'' .. thisInstance.blueprint.name .. '\' approved.')
                    end
                    goto cont
                end
            end
            
            thisInstance:MakeWritable()

            -- Exclude
            --print('Excluding WorldPartReferenceObjectData \'' .. tostring(thisInstance.blueprint.name) .. '\' in partition \'' .. partition.name .. '\'...')
            thisInstance.excluded = true

            ::cont::
            
        end

        -- Sanitise any remaining logic

        if instance.typeInfo.name == 'AlternateSpawnEntityData' then

            local thisInstance = AlternateSpawnEntityData(instance)
            thisInstance:MakeWritable()
            thisInstance.enabled = false

        end

        if instance:Is('SpawnReferenceObjectData') then

            local thisInstance = SpawnReferenceObjectData(instance)
            thisInstance:MakeWritable()
            thisInstance.enabled = false

        end
    
    end

end)