-- For multiplayer maps, different gamemodes are different subworlds, each referenced in the main level partition (e.g. Levels/MP_Subway/MP_Subway).
-- This script clones the SubWorldReferenceObjectData from the MP_Subway main level partition, and adds it to the singleplayer/co-op map being loaded.
-- These will also need a SubWorldInclusionSetting? Maybe? Doesn't seem to make a difference.

Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't read any partition that's nil or not referring to the main level partition of the currently loading map
    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) or partition.primaryInstance.typeInfo.name ~= 'LevelData' then
        return
    end

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    -- Deathmatch --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    print('Creating reference to Ziba Tower \'Deathmatch\' SubWorld in \'' .. partition.name .. '\'...')

    local zibaDeathmatchSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('2DF41167-0BAB-11E1-AA4E-EFBA5D767A10'), Guid('E031587A-9C68-4A85-A05E-204F6C8122DA')))
    --spDeathmatchSubWorldReferenceObjectData = SubWorldReferenceObjectData(zibaDeathmatchSubWorldReferenceObjectData:Clone(Guid('A0000000-0000-0000-0000-00SPTERRAINS')))

    --partition:AddInstance(spDeathmatchSubWorldReferenceObjectData)

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(zibaDeathmatchSubWorldReferenceObjectData)

    print(tostring(MathUtils:FNVHash('EnterScreen0')))

    -- Add link connection to LevelData
    --[[local spDeathmatchLinkConnection = LinkConnection()
    spDeathmatchLinkConnection.source = nil
    spDeathmatchLinkConnection.target = zibaDeathmatchSubWorldReferenceObjectData
    spDeathmatchLinkConnection.sourceFieldId = 0
    spDeathmatchLinkConnection.targetFieldId = 0
    spLevelData.linkConnections:add(spDeathmatchLinkConnection)

    -- Create SubWorldInclusionSetting (by cloning the 'Deathmatch' one from Ziba Tower)
    local zibaDeathmatchSubWorldInclusionSetting = SubWorldInclusionSetting(ResourceManager:FindInstanceByGuid(Guid('2DF41167-0BAB-11E1-AA4E-EFBA5D767A10'), Guid('7AC21CB2-7692-11E2-BEA4-BBB97FE088CE')))
    local spDeathmatchSubWorldInclusionSetting = SubWorldInclusionSetting(zibaDeathmatchSubWorldInclusionSetting:Clone(Guid('C0000000-0000-0000-0000-00SPTERRAINS')))
    partition:AddInstance(spDeathmatchSubWorldInclusionSetting)

    -- Create SubWorldInclusionSettings (new)
    local spDeathmatchSubWorldInclusionSettings = SubWorldInclusionSettings(Guid('D0000000-0000-0000-0000-00SPTERRAINS'))
    spDeathmatchSubWorldInclusionSettings.settings:add(spDeathmatchSubWorldInclusionSetting)
    partition:AddInstance(spDeathmatchSubWorldInclusionSettings)

    -- Point new 'Deathmatch' SubWorldReference to new SubWorldInclusionSettings
    spDeathmatchSubWorldReferenceObjectData.inclusionSettings = spDeathmatchSubWorldInclusionSettings]]

    -- TeamDM ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --[[print('Creating reference to Ziba Tower TDM SubWorld in \'' .. partition.name .. '\'...')

    local zibaTdmSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('F2B8C98F-F166-48CA-A63C-E7235DBF243F'), Guid('251192C0-9292-401D-B292-0757AFCFFDB3')))
    spTdmSubWorldReferenceObjectData = SubWorldReferenceObjectData(zibaTdmSubWorldReferenceObjectData:Clone(Guid('B0000000-0000-0000-0000-00SPTERRAINS')))

    partition:AddInstance(spTdmSubWorldReferenceObjectData)

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(spTdmSubWorldReferenceObjectData)

    -- Add link connection to nil
    local spTdmLinkConnection = LinkConnection()
    spTdmLinkConnection.source = nil
    spTdmLinkConnection.target = spTdmSubWorldReferenceObjectData
    spTdmLinkConnection.sourceFieldId = 0
    spTdmLinkConnection.targetFieldId = 0
    spLevelData.linkConnections:add(spTdmLinkConnection)

    -- Add required Field ID to level InterfaceDescriptorData
    local spInterfaceDescriptorData = InterfaceDescriptorData(spLevelData.descriptor)
    spInterfaceDescriptorData:MakeWritable()
    local newDataField = DataField() -- Clone of what you'll find in XP2_Skybar and, seemingly, other levels as well. Possibly required for operation below.
    newDataField.value = 'Float32 12'
    newDataField.valueRef = nil
    newDataField.id = -1843677269
    newDataField.accessType = 1 -- FieldAccessType_Target
    spInterfaceDescriptorData.fields:add(newDataField)

    -- Add link connection to level InterfaceDescriptorData
    local spTdmLinkConnection2 = LinkConnection()
    spTdmLinkConnection2.source = spInterfaceDescriptorData
    spTdmLinkConnection2.target = spTdmSubWorldReferenceObjectData
    spTdmLinkConnection2.sourceFieldId = -1843677269
    spTdmLinkConnection2.targetFieldId = -1843677269
    spLevelData.linkConnections:add(spTdmLinkConnection2)

    -- Create SubWorldInclusionSetting (this tells the game what SubWorld to load when the server wants the TeamDeathMatchC0 gamemode)
    local spTdmSubWorldInclusionSetting = SubWorldInclusionSetting(Guid('E0000000-0000-0000-0000-00SPTERRAINS'))
    spTdmSubWorldInclusionSetting.criterion = SubWorldInclusionCriterion(ResourceManager:SearchForInstanceByGuid(Guid('8B89E816-F442-4194-A093-1F82487CF732'))) -- This seems to be what everything uses. No idea what it is, where it's from, or what it does.
    spTdmSubWorldInclusionSetting.enabledOptions:add('TeamDeathMatchC0')
    partition:AddInstance(spTdmSubWorldInclusionSetting)

    -- Create SubWorldInclusionSettings and add above SubWorldInclusionSetting
    local spTdmSubWorldInclusionSettings = SubWorldInclusionSettings(Guid('F0000000-0000-0000-0000-00SPTERRAINS'))
    spTdmSubWorldInclusionSettings.settings:add(spTdmSubWorldInclusionSetting)
    partition:AddInstance(spTdmSubWorldInclusionSettings)

    -- Create reference to new SubWorldInclusionSettings to SubWorldReferenceObjectData
    spTdmSubWorldReferenceObjectData.inclusionSettings = spTdmSubWorldInclusionSettings]]

end)

-- Create a new registry containing the new SubWorldReferenceObjectData, and add it. Are ReferenceObjectData registries even required? Idk I'm not fucking with this shit.

--[[Events:Subscribe('Level:RegisterEntityResources' , function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    print('Adding new registry containing relevant SubWorldReferenceObjectData for multiplayer logic...')

    local newRegistry = RegistryContainer()
    newRegistry.referenceObjectRegistry:add(spDeathmatchSubWorldReferenceObjectData)
    --newRegistry.referenceObjectRegistry:add(spTdmSubWorldReferenceObjectData)
    ResourceManager:AddRegistry(newRegistry, ResourceCompartment.ResourceCompartment_Game)

end)]]