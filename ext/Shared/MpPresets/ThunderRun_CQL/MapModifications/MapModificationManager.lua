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