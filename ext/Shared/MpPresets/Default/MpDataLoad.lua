-- Mount superbundles

Events:Subscribe('Level:LoadResources', function()

    ResourceManager:MountSuperBundle('chunks0')
    ResourceManager:MountSuperBundle('chunks1')
    ResourceManager:MountSuperBundle('chunks2')

    print('Mounting MP superbundle...')
    ResourceManager:MountSuperBundle('mpchunks')
    print('Mounting XP2 superbundle...')
    ResourceManager:MountSuperBundle('xp2chunks')
    print('Mounting Ziba Tower superbundle for MP logic...')
    ResourceManager:MountSuperBundle('levels/xp2_skybar/xp2_skybar')

end)

-- Inject bundles

Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the levelName or gameModeName is nil (the mod will not be able to determine what MP preset it should load)
    if levelName == nil or gameModeName == nil then
        return
    end

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    if #bundles == 1 and bundles[1] == levelName then

        print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading default multiplayer preset...')

        print('Injecting MP bundles...')
        bundles = {
            'levels/xp2_skybar/xp2_skybar',
            'levels/xp2_skybar/deathmatch',
            'levels/xp2_skybar/teamdm',
            bundles[1],
        }

        hook:Pass(bundles, compartment)

    end

end)

-- Add resources to registry

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'ConquestSmall0' then
        return
    end

    print('Adding Ziba Tower registry...')
    local zibaRegistry = ResourceManager:FindInstanceByGuid(Guid('2DF41167-0BAB-11E1-AA4E-EFBA5D767A10'), Guid('96EF016C-4246-27BF-E65F-D93E823EA96C'))
    ResourceManager:AddRegistry(zibaRegistry, ResourceCompartment.ResourceCompartment_Game)

    print('Adding Ziba Tower TDM CQ registry...')
    local zibaTdmRegistry = ResourceManager:FindInstanceByGuid(Guid('9C2135CC-2330-4FBA-9ED7-E08620FE4093'), Guid('400F1AEF-770E-8D67-1CC4-DA11D85AE58E'))
    ResourceManager:AddRegistry(zibaTdmRegistry, ResourceCompartment.ResourceCompartment_Game)
end)