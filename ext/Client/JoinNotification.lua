local thisPlayer = PlayerManager:GetLocalPlayer()

Events:Subscribe('Soldier:Spawn', function(levelName, gameMode)

    NetEvents:Send('PlayerLoaded', thisPlayer)
    
    print('Informed server that you are loaded!')

end)