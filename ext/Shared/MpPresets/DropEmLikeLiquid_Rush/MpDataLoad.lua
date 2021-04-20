-- Mount superbundles

Events:Subscribe('Level:LoadResources', function()

    ResourceManager:MountSuperBundle('chunks0')
    ResourceManager:MountSuperBundle('chunks1')
    ResourceManager:MountSuperBundle('chunks2')

    print('Mounting MP superbundle...')
    ResourceManager:MountSuperBundle('mpchunks')
    print('Mounting Seine Crossing superbundle for MP logic...')
    ResourceManager:MountSuperBundle('levels/mp_011/mp_011')

end)

-- Inject bundles

Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if levelName == nil or gameModeName == nil then
        print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> RACE CONDITION ERROR, RESTART SERVER!!!')
        return
    end

    -- Don't continue if the level is not Drop 'Em Like Liquid Rush
    if string.find(levelName, 'COOP_003') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    if #bundles == 1 and bundles[1] == levelName then

        print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading Drop \'Em Like Liquid Rush multiplayer preset...')

        print('Injecting MP bundles...')
        bundles = {
            'levels/mp_011/mp_011',
            'levels/mp_011/rush',
            bundles[1],
        }

        hook:Pass(bundles, compartment)

    end

end)

-- Add resources to registry

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Drop 'Em Like Liquid Rush
    if string.find(levelName, 'COOP_003') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    print('Adding Seine Crossing registry...')
    local firestormRegistry = ResourceManager:FindInstanceByGuid(Guid('28C6D036-DC2A-11DF-BF53-8B1F263C3963'), Guid('D62726FF-B0E2-3619-E95F-57CC5F00D58B'))
    ResourceManager:AddRegistry(firestormRegistry, ResourceCompartment.ResourceCompartment_Game)

    print('Adding Seine Crossing Rush registry...')
    local firestormCqsRegistry = ResourceManager:FindInstanceByGuid(Guid('393DDAE5-D818-4C6F-BC69-F225858AD8D2'), Guid('3302BEE7-4F8B-F9AF-D63D-F62E237E5994'))
    ResourceManager:AddRegistry(firestormCqsRegistry, ResourceCompartment.ResourceCompartment_Game)

end)