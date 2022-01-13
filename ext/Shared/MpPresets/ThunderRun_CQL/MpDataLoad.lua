require '__shared/SpBundleTable'

-- Mount superbundles
Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if levelName == nil or gameModeName == nil then
        return
    end

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading Thunder Run CQL multiplayer preset...')

    ResourceManager:MountSuperBundle('levels/mp_012/mp_012')
    ResourceManager:MountSuperBundle('xp1chunks')
    ResourceManager:MountSuperBundle('levels/xp1_002/xp1_002')

end)

-- Inject bundles
Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if levelName == nil or gameModeName == nil then
        return
    end

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    if #bundles == 1 and bundles[1] == levelName then

        print('Injecting MP bundles...')
        bundles = {
            'ui/flow/bundle/loadingbundlemp',
            'levels/mp_012/mp_012',
            'levels/mp_012/conquest_large',
            'levels/xp1_002/xp1_002', -- Gulf of Oman only for BTR and a couple map-making assets
            'levels/xp1_002/cq_s', -- Gulf of Oman Conquest Small
        }

        for _, spBundle in pairs(SpBundleTable[levelName]) do
            table.insert(bundles, spBundle)
        end

        hook:Pass(bundles, compartment)

    end
    
    for i, bundle in pairs(bundles) do
        if bundle == levelName..'_UiPlaying' then
            bundles = {
                'ui/flow/bundle/ingamebundlemp',
                'levels/mp_012/mp_012_uiplaying'
            }
            hook:Pass(bundles,compartment)
        end
    end

end)

-- Add registries for vehicles

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    print('Adding Operation Firestorm registry...')
    local firestormRegistry = ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('84238275-9EEE-D74E-7D3B-6FDD6A46594A'))
    ResourceManager:AddRegistry(firestormRegistry, ResourceCompartment.ResourceCompartment_Game)

    print('Adding Operation Firestorm Conquest Large registry...')
    local firestormCqsRegistry = ResourceManager:FindInstanceByGuid(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('320240BC-173A-5E32-CA75-51E15AC01313'))
    ResourceManager:AddRegistry(firestormCqsRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Gulf of Oman Conquest Small (for BTR, map-making assets)
    print('Adding Gulf of Oman CQS registry...')
    local gulfRegistry = ResourceManager:FindInstanceByGuid(Guid('BA57F26B-896D-4745-80EC-2148AA4FABED'), Guid('4CA67086-4270-BDEC-C570-A5A709959189'))
    ResourceManager:AddRegistry(gulfRegistry, ResourceCompartment.ResourceCompartment_Game)

end)