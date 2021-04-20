Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't read any partition that's nil or not referring to the main level partition of the currently loading map
    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) then
        return
    end

    -- Don't continue if the level is not Drop 'Em Like Liquid Rush
    if string.find(levelName, 'COOP_003') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    print('Creating reference to Seine Crossing Rush SubWorld in \'' .. partition.name .. '\'...')

    local seineRushSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('28C6D036-DC2A-11DF-BF53-8B1F263C3963'), Guid('EB7DE42F-1337-4CB2-9CCA-90A6036E667B')))
    spRushSubWorldReferenceObjectData = SubWorldReferenceObjectData(seineRushSubWorldReferenceObjectData:Clone(Guid('A0000000-0000-0000-0000-000000000000')))

    partition:AddInstance(spRushSubWorldReferenceObjectData)

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(spRushSubWorldReferenceObjectData)

    -- Create link connection to LevelData
    local referenceObjectDataLinkConnection = LinkConnection()
    referenceObjectDataLinkConnection.source = nil
    referenceObjectDataLinkConnection.target = spRushSubWorldReferenceObjectData
    referenceObjectDataLinkConnection.sourceFieldId = 0
    referenceObjectDataLinkConnection.targetFieldId = 0

    spLevelData.linkConnections:add(referenceObjectDataLinkConnection)

end)

-- Create a new registry containing the new SubWorldReferenceObjectData, and add it.

Events:Subscribe('Level:RegisterEntityResources' , function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Drop 'Em Like Liquid Rush
    if string.find(levelName, 'COOP_003') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    print('Adding new registry containing relevant SubWorldReferenceObjectData for multiplayer logic...')

    local newRegistry = RegistryContainer()
    newRegistry.referenceObjectRegistry:add(spRushSubWorldReferenceObjectData)
    ResourceManager:AddRegistry(newRegistry, ResourceCompartment.ResourceCompartment_Game)

end)