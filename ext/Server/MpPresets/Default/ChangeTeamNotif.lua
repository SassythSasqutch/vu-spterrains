-- On some maps, you have to change team to be able to spawn in the Default preset. This might be because US and RU spawns are not separated.
-- This just warns any confused players about this.

Events:Subscribe('Player:Update', function(connectedPlayer)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ.
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    ChatManager:SendMessage('If you are unable to spawn, change teams or use the console cmd \'vu-spterrains.spawn\' to spawn above the map and parachute down.')

end)