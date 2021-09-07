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

        if instance:Is('SpawnReferenceObjectData') and instance.instanceGuid ~= Guid('Z0000000-0000-0000-0000-00SPTERRAINS') then

            local thisInstance = SpawnReferenceObjectData(instance)
            thisInstance:MakeWritable()
            thisInstance.enabled = false

        end

        -- TODO: Spawns. Manually create CharacterSpawnReferenceObjectData (to replace disabled one), see if that re-enables UI spawns.
        -- TODO: Look at Powback's and Kiwi's mods. Try and remove logic in same way, wihtout the above WorldPart exclusion method?
        -- TODO: Kaffarov server banner
    
    end

end)

-- Clear connections not related to sound
--[[Events:Subscribe('Partition:Loaded', function(partition)

    -- Don't read any partition not referring to a SP or COOP map
    if partition == nil or (string.find(partition.name, 'coop_') == nil and string.find(partition.name, 'sp_') == nil) then
        return
    end

    for _, instance in pairs(partition.instances) do

        if instance.typeInfo.name == 'LevelData' then

            local thisInstance = LevelData(instance)
            thisInstance:MakeWritable()
            
            -- Check all event connections. If any connection does not include a connection to/from sound data, delete it.
            for i=#thisInstance.eventConnections, 1, -1 do

                local thisCxn = EventConnection(thisInstance.eventConnections[i])

                if thisCxn.source == nil or thisCxn.target == nil then break end

                if thisCxn.source:Is('SoundAreaEntityData') == false 
                and thisCxn.source:Is('SoundEntityData') == false
                and thisCxn.source:Is('MixerEntityData') == false
                and thisCxn.target:Is('SoundAreaEntityData') == false 
                and thisCxn.target:Is('SoundEntityData') == false
                and thisCxn.target:Is('MixerEntityData') == false then

                    print('Found bad event connection: erasing entry '..(i)..' from type '..thisCxn.source.typeInfo.name..' to type '..thisCxn.target.typeInfo.name)
                    thisInstance.eventConnections:erase(i)

                end

            end

            -- Check all event connections. If any connection does not include a connection to/from sound data, delete it.
            for i=#thisInstance.propertyConnections, 1, -1 do

                local thisCxn = PropertyConnection(thisInstance.propertyConnections[i])

                if thisCxn.source == nil or thisCxn.target == nil then break end

                if thisCxn.source:Is('SoundAreaEntityData') == false 
                and thisCxn.source:Is('SoundEntityData') == false
                and thisCxn.source:Is('MixerEntityData') == false
                and thisCxn.target:Is('SoundAreaEntityData') == false 
                and thisCxn.target:Is('SoundEntityData') == false
                and thisCxn.target:Is('MixerEntityData') == false then

                    print('Found bad property connection: erasing entry '..(i)..' from type '..thisCxn.source.typeInfo.name..' to type '..thisCxn.target.typeInfo.name)
                    thisInstance.propertyConnections:erase(i)

                end

            end

            -- Check all link connections. If any connection does not include a connection to/from sound data, delete it.
            for i=#thisInstance.linkConnections, 1, -1 do

                local thisCxn = LinkConnection(thisInstance.linkConnections[i])

                if thisCxn.source == nil or thisCxn.target == nil then break end

                if thisCxn.source:Is('SoundAreaEntityData') == false 
                and thisCxn.source:Is('SoundEntityData') == false
                and thisCxn.source:Is('MixerEntityData') == false
                and thisCxn.target:Is('SoundAreaEntityData') == false 
                and thisCxn.target:Is('SoundEntityData') == false
                and thisCxn.target:Is('MixerEntityData') == false then

                    print('Found bad link connection: erasing entry '..(i)..' from type '..thisCxn.source.typeInfo.name..' to type '..thisCxn.target.typeInfo.name)
                    thisInstance.linkConnections:erase(i)

                end

            end

        end

    end

end)]]

--[[ Just delete the whole ReferenceObject registry lol this is going to fucking crash

Events:Subscribe('Partition:Loaded', function(partition) -- Iterates through every single partition so, if there is an instance in one of them we want to change, we can do so.

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't read any partition that's nil or not referring to the main level partition of the currently loading map
    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) then
        return
    end

    local spLevelData = LevelData(partition.primaryInstance)

    print('lol fuck off')

    local spRegistry = RegistryContainer(spLevelData.registryContainer)
    spRegistry:MakeWritable()
    local spRefObjRegistry = spRegistry.referenceObjectRegistry:clear()

end)]]