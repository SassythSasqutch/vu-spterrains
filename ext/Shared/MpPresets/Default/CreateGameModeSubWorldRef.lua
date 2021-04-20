-- For multiplayer maps, different gamemodes are different subworlds, each referenced in the main level partition (e.g. Levels/MP_Subway/MP_Subway).
-- This script clones the SubWorldReferenceObjectData from the MP_Subway main level partition, and adds it to the singleplayer/co-op map being loaded.
-- These will also need a SubWorldInclusionSetting

Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't read any partition that's nil or not referring to the main level partition of the currently loading map
    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) then
        return
    end

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    print('Creating reference to Ziba Tower \'Deathmatch\' SubWorld in \'' .. partition.name .. '\'...')

    local zibaTdmSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('2DF41167-0BAB-11E1-AA4E-EFBA5D767A10'), Guid('E031587A-9C68-4A85-A05E-204F6C8122DA')))
    spTdmSubWorldReferenceObjectData = SubWorldReferenceObjectData(zibaTdmSubWorldReferenceObjectData:Clone(Guid('A0000000-0000-0000-0000-000000000000')))

    partition:AddInstance(spTdmSubWorldReferenceObjectData)

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(spTdmSubWorldReferenceObjectData)

    -- Create link connection to LevelData
    local referenceObjectDataLinkConnection = LinkConnection()
    referenceObjectDataLinkConnection.source = nil
    referenceObjectDataLinkConnection.target = spTdmSubWorldReferenceObjectData
    referenceObjectDataLinkConnection.sourceFieldId = 0
    referenceObjectDataLinkConnection.targetFieldId = 0

    spLevelData.linkConnections:add(referenceObjectDataLinkConnection)


    --[[ WHAT

    print('Creating reference to Ziba Tower Team Deathmatch CQ SubWorld in \'' .. partition.name .. '\'...')

    local zibaTdmSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('2DF41167-0BAB-11E1-AA4E-EFBA5D767A10'), Guid('')))
    spTdmSubWorldReferenceObjectData = SubWorldReferenceObjectData(zibaTdmSubWorldReferenceObjectData:Clone(Guid('A0000000-0000-0000-0000-000000000000')))

    partition:AddInstance(spTdmSubWorldReferenceObjectData)

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(spTdmSubWorldReferenceObjectData)

    -- Create link connection to LevelData
    local referenceObjectDataLinkConnection = LinkConnection()
    referenceObjectDataLinkConnection.source = nil
    referenceObjectDataLinkConnection.target = spTdmSubWorldReferenceObjectData
    referenceObjectDataLinkConnection.sourceFieldId = 0
    referenceObjectDataLinkConnection.targetFieldId = 0

    spLevelData.linkConnections:add(referenceObjectDataLinkConnection)]]

end)

-- Create a new registry containing the new SubWorldReferenceObjectData, and add it.

Events:Subscribe('Level:RegisterEntityResources' , function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    print('Adding new registry containing relevant SubWorldReferenceObjectData for multiplayer logic...')

    local newRegistry = RegistryContainer()
    newRegistry.referenceObjectRegistry:add(spTdmSubWorldReferenceObjectData)
    ResourceManager:AddRegistry(newRegistry, ResourceCompartment.ResourceCompartment_Game)

end)