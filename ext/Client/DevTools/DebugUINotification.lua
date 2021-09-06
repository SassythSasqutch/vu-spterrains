Hooks:Install('UI:PushScreen', 100, function(hook, screen, priority, parentGraph, stateNodeGuid)

    local asset = UIScreenAsset(screen)

    print('UI pushing ' .. asset.name)

end)