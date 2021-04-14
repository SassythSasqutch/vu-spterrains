-- Reload cmd

NetEvents:Subscribe('ReloadMap', function(connectedPlayer)

	print('Force skipping round...')

	RCON:SendCommand('mapList.runNextRound')

end)