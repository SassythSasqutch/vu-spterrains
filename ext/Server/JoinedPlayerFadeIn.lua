NetEvents:Subscribe('PlayerLoaded', function(connectedPlayer)

	print('Recognised that player \'' .. connectedPlayer.name .. '\' is loaded!')

	PlayerManager:FadeInAll(0)

end)