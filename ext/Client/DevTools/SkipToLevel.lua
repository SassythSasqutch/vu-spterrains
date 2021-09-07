Console:Register('skipto', 'Skip to a SP or COOP level (if it is in MapList, in order prescribed in Server/DevTools/SkipToLevel.lua).', function(args)

    if #args ~= 1 then
        print('Usage: vu-spterrains.skipto <sp_level>')
        return
    end

    NetEvents:Send(args[1])

end)