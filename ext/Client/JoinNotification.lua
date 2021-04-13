local thisPlayer = PlayerManager:GetLocalPlayer()

Events:Subscribe('Level:Loaded', function(levelName, gameMode)

    NetEvents:Send('PlayerLoaded', thisPlayer)
    
    print('Informed server that you are loaded!')

    --thisPlayer:EnableInput(12, true)

end)