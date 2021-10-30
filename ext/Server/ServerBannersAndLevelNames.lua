Events:Subscribe('Level:LoadResources', function()

    -- Most of these are AI upscaled from 480p or something, and so look questionable. 
    -- Only Thunder Run has a custom image. 
    -- Feel free to take your own and replace the image. If you're willing, I'd appreciate it hugely if you could send your custom image to me to put it into the mod.

    -- Hit and Run COOP_002 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_002/COOP_002' then

        -- Set custom map name
        ServerUtils:SetCustomMapName('Hit and Run')

        -- Set server banner
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/zv33mTZ.jpg'})

        goto cont

    end

    -- Drop 'Em Like Liquid COOP_003 ------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_003/COOP_003' then

        ServerUtils:SetCustomMapName('Drop \'Em Like Liquid')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/aev015H.jpg'})

        goto cont

    end

    -- Fire from the Sky COOP_006 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_006/COOP_006' then

        ServerUtils:SetCustomMapName('Fire from the Sky')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/4x5sdl4.jpg'})

        goto cont

    end

    -- Operation Exodus COOP_007 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_007/COOP_007' then

        ServerUtils:SetCustomMapName('Operation Exodus')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/OHTswJF.jpg'})

        goto cont

    end

    -- Exfiltration COOP_009 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_009/COOP_009' then

        ServerUtils:SetCustomMapName('Exfiltration')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/Tf5j63i.jpg'})

        goto cont

    end

    -- The Eleventh Hour COOP_010 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_010/COOP_010' then

        ServerUtils:SetCustomMapName('The Eleventh Hour')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/9E8IBc3.jpg'})

        goto cont

    end

    -- Operation Guillotine SP_Bank -------------------------------------------------------------------------------------------------------------------------------------------------------------------


    if SharedUtils:GetLevelName() == 'Levels/SP_Bank/SP_Bank' then

        ServerUtils:SetCustomMapName('Operation Guillotine')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/4hvwq7U.jpg'})

        goto cont

    end

    -- Operation Swordbreaker SP_Earthquake -----------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Earthquake/SP_Earthquake' then

        ServerUtils:SetCustomMapName('Operation Swordbreaker')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/i1GW3vx.jpg'})

        goto cont

    end

    -- Uprising SP_Earthquake2 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Earthquake2/SP_Earthquake2' then

        ServerUtils:SetCustomMapName('Uprising')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/RYPsLuZ.jpg'})

        goto cont

    end

    -- The Great Destroyer SP_Finale ------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Finale/SP_Finale' then

        ServerUtils:SetCustomMapName('The Great Destroyer')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/8nrcHLT.jpg'})

        goto cont

    end

    -- Going Hunting SP_Jet ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Jet/SP_Jet' then

        ServerUtils:SetCustomMapName('Going Hunting')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/GzPgiX9.jpg'})

        goto cont

    end

    -- Semper Fidelis SP_New_York ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_New_York/SP_New_York' then

        ServerUtils:SetCustomMapName('Semper Fidelis')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/qz9xETm.jpg'})

        goto cont

    end

    -- Comrades SP_Paris ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Paris/SP_Paris' then

        ServerUtils:SetCustomMapName('Comrades')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/mTlnWg9.jpg'})

        goto cont

    end

    -- Night Shift SP_Sniper --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Sniper/SP_Sniper' then

        ServerUtils:SetCustomMapName('Night Shift')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/WSjk0So.jpg'})

        goto cont

    end

    -- Thunder Run SP_Tank ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Tank/SP_Tank' then

        ServerUtils:SetCustomMapName('Thunder Run')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/eiDLOtJ.jpg'})

        goto cont

    end

    -- Fear No Evil SP_Tank_B -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Tank_b/SP_Tank_b' then

        ServerUtils:SetCustomMapName('Fear No Evil')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/mV3guKq.jpg'})

        goto cont

    end

    -- Rock and a Hard Place SP_Valley ----------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Valley/SP_Valley' then

        ServerUtils:SetCustomMapName('Rock and Hard Place')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/GPZAhT0.jpg'})

        goto cont

    end

    -- Kaffarov's Villa SP_Villa ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Villa/SP_Villa' then

        ServerUtils:SetCustomMapName('Kaffarov\'s Villa')
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/VS4sq6j.jpg'})

        goto cont

    end

    ServerUtils:ClearCustomMapName()
    RCON:SendCommand('vu.ServerBanner', {''})

    ::cont::

end)