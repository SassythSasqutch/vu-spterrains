-- NOTE: Most data loading is performed by the Reality Mod Dynamic Bundle Loader

-- Hook the SP/COOP UI and replace it with MP UI (not perfomed by RM)
Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if levelName == nil or gameModeName == nil then
        return
    end

    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
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

-- Add resources to registry (not performed by RM)
Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    local firestormRegistry = ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('84238275-9EEE-D74E-7D3B-6FDD6A46594A'))
    ResourceManager:AddRegistry(firestormRegistry, ResourceCompartment.ResourceCompartment_Game)

    local firestormCqsRegistry = ResourceManager:FindInstanceByGuid(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('320240BC-173A-5E32-CA75-51E15AC01313'))
    ResourceManager:AddRegistry(firestormCqsRegistry, ResourceCompartment.ResourceCompartment_Game)

end)