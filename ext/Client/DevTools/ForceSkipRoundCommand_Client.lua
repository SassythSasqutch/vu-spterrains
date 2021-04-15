-- Restart round send cmd

Console:Register('nextround', 'Starts next round.', function(args)

    NetEvents:Send('ReloadMap', thisPlayer)

    print('Informed server to skip this round!')

end)