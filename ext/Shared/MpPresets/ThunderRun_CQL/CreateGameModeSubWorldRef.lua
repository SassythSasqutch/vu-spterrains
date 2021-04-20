Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't read any partition that's nil or not referring to the main level partition of the currently loading map
    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) then
        return
    end

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    print('Creating reference to MP Conquest Large SubWorld in \'' .. partition.name .. '\'...')

    local firestormCqlSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('8FE1F5F4-6C8F-4185-B478-2DDEA1CCA686')))
    spCqlSubWorldReferenceObjectData = SubWorldReferenceObjectData(firestormCqlSubWorldReferenceObjectData:Clone(Guid('A0000000-0000-0000-0000-000000000000')))

    partition:AddInstance(spCqlSubWorldReferenceObjectData)

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(spCqlSubWorldReferenceObjectData)

    -- Create link connection to LevelData
    local referenceObjectDataLinkConnection = LinkConnection()
    referenceObjectDataLinkConnection.source = nil
    referenceObjectDataLinkConnection.target = spCqlSubWorldReferenceObjectData
    referenceObjectDataLinkConnection.sourceFieldId = 0
    referenceObjectDataLinkConnection.targetFieldId = 0

    spLevelData.linkConnections:add(referenceObjectDataLinkConnection)

end)

-- Create a new registry containing the new SubWorldReferenceObjectData, and add it.

Events:Subscribe('Level:RegisterEntityResources' , function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    print('Adding new registry containing relevant SubWorldReferenceObjectData for multiplayer logic...')

    local newRegistry = RegistryContainer()
    newRegistry.referenceObjectRegistry:add(spCqsSubWorldReferenceObjectData)
    ResourceManager:AddRegistry(newRegistry, ResourceCompartment.ResourceCompartment_Game)

end)