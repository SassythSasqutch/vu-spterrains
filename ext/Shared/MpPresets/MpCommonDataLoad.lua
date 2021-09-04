Events:Subscribe('Level:LoadResources', function()

    print('Mounting MP superbundle...')
    ResourceManager:MountSuperBundle('mpchunks')
    print('Mounting UI superbundle...')
    ResourceManager:MountSuperBundle('ui')

end)