Events:Subscribe('Level:LoadResources', function()

    if SharedUtils:GetLevelName() == 'Levels/SP_Tank/SP_Tank' then

        -- Set custom map name
        ServerUtils:SetCustomMapName('Thunder Run') -- CHANGE

        -- Set server banner
        local banner = RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/eiDLOtJ.jpg'}) -- CHANGE

    end

end)

require 'JoinedPlayerFadeIn'
require 'DevTools/DebugSpSoldierSpawn'
require 'DevTools/ForceSkipRoundCommand_Server'