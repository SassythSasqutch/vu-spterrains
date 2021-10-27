-- NOTE: Most data loading is performed by the Reality Mod Dynamic Bundle Loader

-- Hook the SP/COOP UI and replace it with MP UI (not perfomed by RM)
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

-- Add resources to registry (not performed by RM)
Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Fire From The Sky Conquest Large
    if string.find(levelName, 'COOP_006') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    local damavandRegistry = ResourceManager:FindInstanceByGuid(Guid('8683F4BB-CD57-11DF-A251-CAB801F86363'), Guid('7C37A538-6C37-4BCF-4FF5-31E534B5C053'))
    ResourceManager:AddRegistry(damavandRegistry, ResourceCompartment.ResourceCompartment_Game)

    local damavandCqlRegistry = ResourceManager:FindInstanceByGuid(Guid('1CEC6C7E-1629-4631-B326-1A134BC6EF27'), Guid('6196137B-50D6-4607-98AE-900BACF47065'))
    ResourceManager:AddRegistry(damavandCqlRegistry, ResourceCompartment.ResourceCompartment_Game)

end)