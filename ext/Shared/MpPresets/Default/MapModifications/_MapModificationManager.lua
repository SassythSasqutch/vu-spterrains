-- Only run the map modification scripts if the level is a SP or COOP map in TDM CQ. When the level is destroyed, reset this script.

local done = false

Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not singleplayer or co-op in Team Deathmatch CQ
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    print('Initialising default map modification scripts...')

    require '__shared/MpPresets/Default/MapModifications/FriendZoneSet'
    require '__shared/MpPresets/Default/MapModifications/SpawnPosns'

end)

Events:Subscribe('Level:Destroy', function()

    done = false

end)