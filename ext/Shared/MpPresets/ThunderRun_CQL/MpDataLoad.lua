-- Mount superbundles

Events:Subscribe('Level:LoadResources', function()

    ResourceManager:MountSuperBundle('chunks0')
    ResourceManager:MountSuperBundle('chunks1')
    ResourceManager:MountSuperBundle('chunks2')

    print('Mounting MP superbundle...')
    ResourceManager:MountSuperBundle('mpchunks')
    print('Mounting Operation Firestorm superbundle for MP logic...')
    ResourceManager:MountSuperBundle('levels/mp_012/mp_012')

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

        print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading Thunder Run CQL multiplayer preset...')

        print('Injecting MP bundles...')
        bundles = {
            'levels/mp_012/mp_012',
            'levels/mp_012/conquest_large',
            bundles[1],
        }

        hook:Pass(bundles, compartment)

    end

end)

-- Add resources to registry

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

end)