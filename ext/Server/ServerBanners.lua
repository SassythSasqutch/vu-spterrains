Events:Subscribe('Level:LoadResources', function()

    -- Most of these are AI upscaled from 480p or something, and so look questionable. 
    -- Only Thunder Run has a custom image. 
    -- Feel free to take your own and replace the image. If you're willing, I'd appreciate it hugely if you could send your custom image to me to put it into the mod.

    -- Hit and Run COOP_002 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_002/COOP_002' then

        -- Set server banner
        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/zv33mTZ.jpg'})

    end

    -- Drop 'Em Like Liquid COOP_003 ------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_003/COOP_003' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/aev015H.jpg'})

    end

    -- Fire from the Sky COOP_006 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_006/COOP_006' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/4x5sdl4.jpg'})

    end

    -- Operation Exodus COOP_007 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_007/COOP_007' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/OHTswJF.jpg'})

    end

    -- Exfiltration COOP_009 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_009/COOP_009' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/Tf5j63i.jpg'})

    end

    -- The Eleventh Hour COOP_010 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/COOP_010/COOP_010' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/9E8IBc3.jpg'})

    end

    -- Operation Guillotine SP_Bank -------------------------------------------------------------------------------------------------------------------------------------------------------------------


    if SharedUtils:GetLevelName() == 'Levels/SP_Bank/SP_Bank' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/4hvwq7U.jpg'})

    end

    -- Operation Swordbreaker SP_Earthquake -----------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Earthquake/SP_Earthquake' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/i1GW3vx.jpg'})

    end

    -- Uprising SP_Earthquake2 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Earthquake2/SP_Earthquake2' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/RYPsLuZ.jpg'})

    end

    -- The Great Destroyer SP_Finale ------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Finale/SP_Finale' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/8nrcHLT.jpg'})

    end

    -- Going Hunting SP_Jet ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Jet/SP_Jet' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/GzPgiX9.jpg'})

    end

    -- Semper Fidelis SP_New_York ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_New_York/SP_New_York' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/qz9xETm.jpg'})

    end

    -- Comrades SP_Paris ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Paris/SP_Paris' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/mTlnWg9.jpg'})

    end

    -- Night Shift SP_Sniper --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Sniper/SP_Sniper' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/WSjk0So.jpg'})

    end

    -- Thunder Run SP_Tank ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Tank/SP_Tank' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/eiDLOtJ.jpg'})

    end

    -- Fear No Evil SP_Tank_B -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Tank_b/SP_Tank_b' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/mV3guKq.jpg'})

    end

    -- Rock and a Hard Place SP_Valley ----------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Valley/SP_Valley' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/GPZAhT0.jpg'})

    end

    -- Kaffarov's Villa SP_Villa ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

    if SharedUtils:GetLevelName() == 'Levels/SP_Villa/SP_Villa' then

        RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/VS4sq6j.jpg'})

    end

end)