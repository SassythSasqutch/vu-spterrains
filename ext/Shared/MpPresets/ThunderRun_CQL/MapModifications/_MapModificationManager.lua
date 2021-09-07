-- I designed the below back in January, when I hoped people would play it. That's not going to happen, so this is basically redundant, other than a good exemplar. Maybe it still exists just so I can say 'akschually it's the biggest Conquest Large map ever hahahaha'. I'm not even sure if it is anymore tho, BF2042 and all.
-- It was also designed for a different mod, so it returns many errors when it loads. You can ignore those. Vehicle spawns are broken etc., but there's no reason to fix them.

local done = false

Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Thunder Run Conquest Large
    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    print('Initialising Thunder Run CQL map modification scripts...')
    
    require '__shared/MpPresets/ThunderRun_CQL/MapModifications/CapturePointA_InitialOwnerSet'
    require '__shared/MpPresets/ThunderRun_CQL/MapModifications/FirestormCqlCreateVehicleFunc'
    require '__shared/MpPresets/ThunderRun_CQL/MapModifications/MainDeployments'
    require '__shared/MpPresets/ThunderRun_CQL/MapModifications/Objectives'
    require '__shared/MpPresets/ThunderRun_CQL/MapModifications/ObjectiveSpawns'
    require '__shared/MpPresets/ThunderRun_CQL/MapModifications/OOB'

end)

Events:Subscribe('Level:Destroy', function()

    done = false

end)