Console:Register('spawn', 'ready', function(args)

    NetEvents:Send('PlayerReady', thisPlayer)

    print('Informed server that you are ready to spawn!')

end)