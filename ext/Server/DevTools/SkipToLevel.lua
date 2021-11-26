local levels = {
    'coop_007',
    'coop_006',
    'coop_009',
    'coop_002',
    'coop_003',
    'coop_010',
    'sp_new_york',
    'sp_earthquake',
    'sp_earthquake2',
    'sp_jet',
    'sp_bank',
    'sp_paris',
    'sp_tank',
    'sp_sniper',
    'sp_valley',
    'sp_villa',
    'sp_finale'
}

for i, level in pairs(levels) do

    NetEvents:Subscribe(level, function()

        local levelIndex = tostring(i-1) -- Thanks to Bree_Arnold for the tostring() thing

        print('Skipping to level '..level..' at index '..levelIndex..' in MapList.')
    
        RCON:SendCommand('mapList.setNextMapIndex', {levelIndex})
        RCON:SendCommand('mapList.runNextRound')
    
    end)

end