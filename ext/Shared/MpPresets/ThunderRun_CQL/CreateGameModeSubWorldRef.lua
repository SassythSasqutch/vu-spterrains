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
    spCqlSubWorldReferenceObjectData = SubWorldReferenceObjectData(firestormCqlSubWorldReferenceObjectData:Clone(Guid('B0000000-0000-0000-0000-000000000000')))

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

-- Shit from the old, old mod. Based ??? 😳😳😳

--[[Events:Subscribe('Partition:Loaded', function(partition)

    if partition.name ~= ('levels/sp_tank/sp_tank') then
        return
    else
        print('Partitions ready for configuring Conquest Large instances.')
    end

    -- Create CQL instances from Operation Firestorm partition

    local firestormCqlInclusionSetting = ResourceManager:SearchForInstanceByGuid(Guid('B807651F-768F-11E2-BEA4-BBB97FE088CE'))
    local firestormCqlInclusionSettings = ResourceManager:SearchForInstanceByGuid(Guid('A097921C-F26F-4CDE-0878-A735D9D4D1F2'))
    local firestormCqlReferenceObjectData = ResourceManager:SearchForInstanceByGuid(Guid('8FE1F5F4-6C8F-4185-B478-2DDEA1CCA686'))
    local firestormCqlCommonSpawnsT1ReferenceObjectData = ResourceManager:SearchForInstanceByGuid(Guid('49CD8FA8-3A6C-4FE4-889C-7BB75E31BC7F'))
    local firestormCqlCommonSpawnsT2ReferenceObjectData = ResourceManager:SearchForInstanceByGuid(Guid('502A45B7-FC97-40B6-84F9-C6605B6AEB2B'))
    local firestormMpSchematicReferenceObjectData = ResourceManager:SearchForInstanceByGuid(Guid('83897915-59DC-44A3-921E-BCD1E29F0C69'))

    if firestormCqlInclusionSetting == nil or firestormCqlInclusionSettings == nil or firestormCqlReferenceObjectData == nil or firestormCqlCommonSpawnsT1ReferenceObjectData == nil or firestormCqlCommonSpawnsT2ReferenceObjectData == nil or firestormMpSchematicReferenceObjectData == nil then
        return
    else
        print('Found Operation Firestorm (Conquest Large) gamemode instances.')
    end
    
    local spTankCqlInclusionSetting = SubWorldInclusionSetting(firestormCqlInclusionSetting:Clone(Guid('AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA')))
    local spTankCqlInclusionSettings = SubWorldInclusionSettings(firestormCqlInclusionSettings:Clone(Guid('BBBBBBBB-BBBB-BBBB-BBBB-BBBBBBBBBBBB')))
    spTankCqlReferenceObjectData = SubWorldReferenceObjectData(firestormCqlReferenceObjectData:Clone(Guid('CCCCCCCC-CCCC-CCCC-CCCC-CCCCCCCCCCCC')))
    local spTankCqlCommonSpawnsT1ReferenceObjectData = WorldPartReferenceObjectData(firestormCqlCommonSpawnsT1ReferenceObjectData:Clone(Guid('DDDDDDDD-DDDD-DDDD-DDDD-DDDDDDDDDDDD')))
    local spTankCqlCommonSpawnsT2ReferenceObjectData = WorldPartReferenceObjectData(firestormCqlCommonSpawnsT2ReferenceObjectData:Clone(Guid('EEEEEEEE-EEEE-EEEE-EEEE-EEEEEEEEEEEE')))
    local spTankMpSchematicReferenceObjectData = WorldPartReferenceObjectData(firestormMpSchematicReferenceObjectData:Clone(Guid('FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF')))

    partition:AddInstance(spTankCqlInclusionSetting)
    partition:AddInstance(spTankCqlInclusionSettings)
    partition:AddInstance(spTankCqlReferenceObjectData)
    partition:AddInstance(spTankCqlCommonSpawnsT1ReferenceObjectData)
    partition:AddInstance(spTankCqlCommonSpawnsT2ReferenceObjectData)
    partition:AddInstance(spTankMpSchematicReferenceObjectData)
    print('Added Conquest Large instances to main level partition.')

    -- Configure new InclusionSettings to reference the correct InclusionSetting
    spTankCqlInclusionSettings.settings:clear()
    spTankCqlInclusionSettings.settings:add(spTankCqlInclusionSetting)
    print('CQL SubWorldInclusionSettings modified to point to correct SubWorldInclusionSetting.')
    
    -- Configure new ReferenceObjectData to reference the correct InclusionSettings
    spTankCqlReferenceObjectData.inclusionSettings = spTankCqlInclusionSettings
    print('CQL SubWorldReferenceObjectData modified to point to correct SubWorldInclusionSettings.')

    -- Add required LevelData link connections

    loadedInstances = partition.instances

    for _, instance in ipairs(loadedInstances) do

        if instance == nil then 
            break
        end

        if instance.typeInfo.name == 'LevelData' then

            local thisInstance = DataBusData(instance)
            thisInstance:MakeWritable()

            -- Main link connection
            local mainReferenceObjectDataLinkConnection = LinkConnection()
            mainReferenceObjectDataLinkConnection.source = nil
            mainReferenceObjectDataLinkConnection.target = spTankCqlReferenceObjectData
            mainReferenceObjectDataLinkConnection.sourceFieldId = 0
            mainReferenceObjectDataLinkConnection.targetFieldId = 0
            thisInstance.linkConnections:add(mainReferenceObjectDataLinkConnection)
            print('Added main link connection for LevelData to CQL SubWorldReferenceObjectData.')

            -- CommonSpawnpoints link connections

            local opFirestormLevelData = LevelData(ResourceManager:SearchForInstanceByGuid(Guid('C973BE9F-14FB-A64D-BA3F-0B07A77F7E95')))
            local opFirestormLinkConnections = opFirestormLevelData.linkConnections
            opFirestormLevelData:MakeWritable()

            for i, linkConnection in ipairs(opFirestormLinkConnections) do
                if i > 48 and i < 123 then
                    local commonSpawnLinkConnection = LinkConnection(linkConnection)
                    commonSpawnLinkConnection.source = spTankCqlReferenceObjectData
                    thisInstance.linkConnections:add(commonSpawnLinkConnection)
                end
            end

            print('Added common spawnpoints link connections.')

        end

    end

    -- Add references to LevelData objects array

    for _, instance in ipairs(loadedInstances) do

        if instance == nil then 
            break
        end

        if instance.typeInfo.name == 'LevelData' then

            local thisInstance = PrefabBlueprint(instance)
            thisInstance:MakeWritable()
            thisInstance.objects:add(spTankCqlReferenceObjectData)
            thisInstance.objects:add(spTankCqlCommonSpawnsT1ReferenceObjectData)
            thisInstance.objects:add(spTankCqlCommonSpawnsT2ReferenceObjectData)
            thisInstance.objects:add(spTankMpSchematicReferenceObjectData)
            print('Added CQL SubWorldReferenceObjectData references to LevelData \'Objects\' array.')

        end

    end

end)

-- Create a registry to house the CQL SubWorldReferenceData

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    print('Adding new registry containing CQL SubWorldReferenceData...')
    local cqlDataRegistry = RegistryContainer()
    cqlDataRegistry.referenceObjectRegistry:add(spTankCqlReferenceObjectData)
    ResourceManager:AddRegistry(cqlDataRegistry, ResourceCompartment.ResourceCompartment_Game)
    print('Added new registry containing CQL SubWorldReferenceData.')

end)]]