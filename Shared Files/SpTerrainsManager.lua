-- If Fear No Evil (SP_Tank_B) is allowed to load, Thunder Run (SP_Tank) can't load (strange quirk with Frostbite or something). 
-- Maybe I can find a proper fix later, but for now Fear No Evil is disabled by default, because it's a mediocre map and Thunder Run is fucken sick.
-- To re-enable it (and thus disable SP_Tank), change the below to 'true'

allowFearNoEvil = false

require '__shared/SpTerrains/SpLevelDataModify'
require '__shared/SpTerrains/SpLevelDataRemove'

-- COOP_006
require '__shared/SpTerrains/MpPresets/PanjshirValley_RM/MpDataLoad'
require '__shared/SpTerrains/MpPresets/PanjshirValley_RM/CreateGameModeSubWorldRef'

-- SP_Tank (not ready)
--require '__shared/SpTerrains/MpPresets/KavirDesert_RM/MpDataLoad'
--require '__shared/SpTerrains/MpPresets/KavirDesert_RM/CreateGameModeSubWorldRef'