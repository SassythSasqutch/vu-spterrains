-- On some maps, you have to change team to be able to spawn in the Default preset. This might be because US and RU spawns are not separated.

Events:Subscribe('Player:Update', function(connectedPlayer)

    ChatManager:SendMessage('If you are unable to spawn, change teams or use the console cmd \'vu-spterrains.spawn\' to spawn very high up.')

end)