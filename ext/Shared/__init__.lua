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

require '__shared/MpPresets/ThunderRun_CQL/MpDataLoad'
require '__shared/MpPresets/ThunderRun_CQL/CreateGameModeSubWorldRef'
-- I designed the below back in January, when I hoped people would play it. That's not going to happen, so this is basically redundant, other than a good exemplar. Maybe it still exists just so I can say 'akschually it's the biggest Conquest Large map ever hahahaha'. I'm not even sure if it is anymore tho, BF2042 and all.
-- It was also designed for a different mod, so it returns many errors when it loads. You can ignore those. Vehicle spawns are broken etc., but there's no reason to fix them.
require '__shared/MpPresets/ThunderRun_CQL/MapModifications/CapturePointA_InitialOwnerSet'
require '__shared/MpPresets/ThunderRun_CQL/MapModifications/MainDeployments'
require '__shared/MpPresets/ThunderRun_CQL/MapModifications/Objectives'
require '__shared/MpPresets/ThunderRun_CQL/MapModifications/ObjectiveSpawns'
require '__shared/MpPresets/ThunderRun_CQL/MapModifications/OOB'