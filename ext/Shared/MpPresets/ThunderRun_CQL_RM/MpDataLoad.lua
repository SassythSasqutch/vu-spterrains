-- Mount superbundles
Events:Subscribe('Level:LoadResources', function()

    print('Mounting Operation Firestorm superbundle for MP logic...')
    ResourceManager:MountSuperBundle('levels/mp_012/mp_012')
    -- RM
    ResourceManager:MountSuperBundle('levels/coop_006/coop_006')
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

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    if #bundles == 1 and bundles[1] == levelName then

        print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading Thunder Run CQL multiplayer preset...')

        print('Injecting MP bundles, with Reality Mod bundles...')

        -- NOTE: Also injecting Reality Mod bundles
        bundles = {
            'ui/flow/bundle/loadingbundlemp',
            'levels/mp_012/mp_012',
            'levels/mp_012/conquest_large',
            -- RM
            'Levels/COOP_006/COOP_006',
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
                'levels/mp_012/mp_012_uiplaying'
            }
            hook:Pass(bundles,compartment)
        end
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

    -- RM

    print('Adding RM registries...')

    local s_Coop9Registry = ResourceManager:FindInstanceByGuid(Guid('F94C5091-E69C-11DF-9B0E-AF9CA6E0236B'), Guid('F05798B2-31EC-210D-CC1D-0F7535BECA30'))
	local s_SpBankRideSubRegistry = ResourceManager:FindInstanceByGuid(Guid('8148A1BB-8F21-4E40-8A8F-2126000ABCD4'), Guid('9F9CABAF-21C2-EF4A-B35D-4358AEBA7565'))

    s_Coop9Registry = RegistryContainer(s_Coop9Registry)
	ResourceManager:AddRegistry(s_Coop9Registry, ResourceCompartment.ResourceCompartment_Game)

	s_SpBankRideSubRegistry = RegistryContainer(s_SpBankRideSubRegistry)
	ResourceManager:AddRegistry(s_SpBankRideSubRegistry, ResourceCompartment.ResourceCompartment_Game)

end)