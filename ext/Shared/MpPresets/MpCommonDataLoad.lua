Events:Subscribe('Level:LoadResources', function()

    print('Mounting common superbundles for singleplayer and coop levels...')

    ResourceManager:MountSuperBundle('mpchunks')
    ResourceManager:MountSuperBundle('ui')

end)