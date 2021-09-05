-- If Fear No Evil (SP_Tank_B) is allowed to load, Thunder Run (SP_Tank) can't load (strange quirk with Frostbite or something). 
-- Maybe I can find a proper fix later, but for now Fear No Evil is disabled by default, because it's a mediocre map and Thunder Run is fucken sick.
-- To re-enable it (and thus disable SP_Tank), change the below to 'true'

allowFearNoEvil = false

require '__shared/SpLevelDataModify'
require '__shared/SpLevelDataRemove'
--require '__shared/SpLevelVisualEnvironmentSet'

-- Multiplayer presets
require '__shared/MpPresets/MpCommonDataLoad'
require '__shared/MpPresets/AddVoiceOverLogic'

require '__shared/MpPresets/Default/MpDataLoad'
require '__shared/MpPresets/Default/CreateGameModeSubWorldRef'
require '__shared/MpPresets/Default/SetWorldSize'
require '__shared/MpPresets/Default/MapModifications/SpawnPosns'

require '__shared/MpPresets/ThunderRun_CQL/MpDataLoad'
require '__shared/MpPresets/ThunderRun_CQL/CreateGameModeSubWorldRef'
require '__shared/MpPresets/ThunderRun_CQL/MapModificationManager' -- I'm offloading all the code to start the map mod script to its own file. This way, I can guarantee they only run when Thunder Run Conquest Large is loaded. You can see how this works in MapModificationsManager.lua itself.