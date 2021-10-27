-- If Fear No Evil (SP_Tank_B) is allowed to load, Thunder Run (SP_Tank) can't load (strange quirk with Frostbite or something). 
-- Maybe I can find a proper fix later, but for now Fear No Evil is disabled by default, because it's a mediocre map and Thunder Run is fucken sick.
-- To re-enable it (and thus disable SP_Tank), change the below to 'true'

allowFearNoEvil = false

require '__shared/SpLevelDataModify'
require '__shared/SpLevelDataRemove'

-- COOP_006
require '__shared/MpPresets/PanjshirValley_RM/MpDataLoad'
require '__shared/MpPresets/PanjshirValley_RM/CreateGameModeSubWorldRef'

-- SP_Tank (not ready)
--require '__shared/MpPresets/KavirDesert_RM/MpDataLoad'
--require '__shared/MpPresets/KavirDesert_RM/CreateGameModeSubWorldRef'

-- RM branch warning
Events:Subscribe('Level:LoadingInfo', function(screenInfo)

    if screenInfo == 'Creating level' then

        print('------------------------------------------------------------> NOTE! This is the RM branch of this modification.')
        print('------------------------------------------------------------> It supports a different set of maps and gamemodes, and is designed only for use with Battlefield 3 Reality Mod.')
        print('------------------------------------------------------------> If you experience any unexpected issues, this could be why. Unless you intend to use the RM branch, use the \'main\' branch instead.')

    end

end)