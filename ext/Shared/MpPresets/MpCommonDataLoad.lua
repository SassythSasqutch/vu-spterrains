Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the levelName or gameModeName is nil (the mod will not be able to determine what MP preset it should load). Leave this.
    if levelName == nil or gameModeName == nil then
        return
    end

    -- Don't continue if the level is not any singleplayer or coop level.
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) then
        return
    end

    print('Mounting common superbundles for singleplayer and coop levels...')

    ResourceManager:MountSuperBundle('mpchunks')
    ResourceManager:MountSuperBundle('ui')

end)