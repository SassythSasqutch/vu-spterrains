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