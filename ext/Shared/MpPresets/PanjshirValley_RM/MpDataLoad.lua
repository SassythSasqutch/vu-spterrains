-- Mount superbundles
Events:Subscribe('Level:LoadResources', function()

    print('Mounting Damavand Peak superbundle for MP logic...')
    ResourceManager:MountSuperBundle('levels/mp_013/mp_013')
    -- RM
    ResourceManager:MountSuperBundle('levels/sp_tank/sp_tank')
    ResourceManager:MountSuperBundle('levels/coop_009/coop_009')
    ResourceManager:MountSuperBundle('levels/sp_bank/sp_bank')

end)

-- Inject bundles
Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if levelName == nil or gameModeName == nil then
        return
    end

    -- Don't continue if the level is not Fire From The Sky Conquest Large
    if string.find(levelName, 'COOP_006') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    if #bundles == 1 and bundles[1] == levelName then

        print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading Panjshir Valley (RM) multiplayer preset...')

        print('Injecting MP bundles, with Reality Mod bundles...')

        -- NOTE: Also injecting Reality Mod bundles
        bundles = {
            'ui/flow/bundle/loadingbundlemp',
            'levels/mp_013/mp_013',
            'levels/mp_013/conquestlarge',
            -- RM
            'Levels/SP_Tank/SP_Tank',
            'Levels/SP_Tank/DesertFort',
            'Levels/Coop_009/Coop_009',
			'Levels/SP_Bank/SP_Bank',
			'Levels/SP_Bank/Ride_SUB',
            bundles[1],
        }

        hook:Pass(bundles, compartment)

    end
    
    for i, bundle in pairs(bundles) do
        if bundle == levelName..'_UiPlaying' then
            bundles = {
                'ui/flow/bundle/ingamebundlemp',
                'levels/mp_013/mp_013_uiplaying'
            }
            hook:Pass(bundles,compartment)
        end
    end

end)

-- Add resources to registry

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Fire From The Sky Conquest Large
    if string.find(levelName, 'COOP_006') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    print('Adding Damavand Peak registry...')
    local damavandRegistry = ResourceManager:FindInstanceByGuid(Guid('8683F4BB-CD57-11DF-A251-CAB801F86363'), Guid('7C37A538-6C37-4BCF-4FF5-31E534B5C053'))
    ResourceManager:AddRegistry(damavandRegistry, ResourceCompartment.ResourceCompartment_Game)

    print('Adding Damavand Peak Conquest Large registry...')
    local damavandCqlRegistry = ResourceManager:FindInstanceByGuid(Guid('1CEC6C7E-1629-4631-B326-1A134BC6EF27'), Guid('6196137B-50D6-4607-98AE-900BACF47065'))
    ResourceManager:AddRegistry(damavandCqlRegistry, ResourceCompartment.ResourceCompartment_Game)

end)