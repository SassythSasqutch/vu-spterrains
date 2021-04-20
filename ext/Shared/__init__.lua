require '__shared/SpLevelDataModify'
require '__shared/SpLevelDataRemove'

-- If Fear No Evil (SP_Tank_B) is allowed to load, Thunder Run (SP_Tank) can't load (strange quirk with Frostbite or something). 
-- Maybe I can find a proper fix later, but for now Fear No Evil is disabled by default, because it's a bad map and Thunder Run is fucken sick.
-- To re-enable it (and thus disable SP_Tank), change the below to 'true'

allowFearNoEvil = false

-- Multiplayer presets
require '__shared/MpPresets/AddVoiceOverLogic'

require '__shared/MpPresets/Default/MpDataLoad'
require '__shared/MpPresets/Default/CreateGameModeSubWorldRef'

require '__shared/MpPresets/ThunderRun_CQL/MpDataLoad'
require '__shared/MpPresets/ThunderRun_CQL/CreateGameModeSubWorldRef'

require '__shared/MpPresets/DropEmLikeLiquid_Rush/MpDataLoad'
require '__shared/MpPresets/DropEmLikeLiquid_Rush/CreateGameModeSubWorldRef'

--[[ View interesting partitions being loaded
Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil then return end

    if string.find(partition.name, 'xp2') 
    or string.find(partition.name, 'coop_003')
    or string.find(partition.name, 'weapon') 
    or string.find(partition.name, 'props') 
    or string.find(partition.name, 'objects')
    or string.find(partition.name, 'architecture') 
    or string.find(partition.name, 'sound')
    or string.find(partition.name, 'fx') 
    or string.find(partition.name, 'character') 
    or string.find(partition.name, 'persistence') 
    or string.find(partition.name, 'mp_subway')
    or string.find(partition.name, 'textures') 
    or string.find(partition.name, 'levels') 
    or string.find(partition.name, 'decals') 
    or string.find(partition.name, 'xp_raw') 
    or string.find(partition.name, 'lodgroups') 
    or string.find(partition.name, 'animations') then return end

    print(partition.name)

end)]]

-- View bundles being loaded
--[[Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    for i, v in pairs(bundles) do 
        print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> '..tostring(bundles[i]))
    end

end)]]