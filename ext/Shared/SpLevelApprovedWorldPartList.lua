-- By default, all WorldPart instances are excluded: with singleplayer and coop maps, they are often bad news for logic etc.
-- This acts as a 'whitelist' for WorldPart instances. As such, the WorldPartReferenceObjectData GUIDs in this list are allowed to load, and all others aren't.

approvedWorldPartRefGuids = {
    -- CustomLevelLoader ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '93842B6D-0185-483D-9EF5-AD2B47BDABDE',
    -- Thunder Run SP_Tank ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'A242FC6A-B0B9-1FB1-3B64-C69DDFD8DEF7', -- Default (terrain)
    'BF8CCF82-B3D6-4B02-B635-8D410D6E5464', -- Effects
    '35DA1DE8-4FC3-4A98-A3A7-F3D33BDD72AF', -- Lighting
    '0FCED9F8-76B5-4DCD-BFC5-D5981775E52C', -- Sound_Areas
    'FE2FC061-7C2C-442D-8654-ADB0E8B92287', -- Sound_Areas_Schematic
    'CAB07955-FCE9-4113-9203-13FEA788483E', -- Backdrop_LevelArt
    '7BBC29BE-3008-4B7C-B073-1798258A5258', -- DesertCombat_01_LevelArt
    'A1463978-15F0-4137-9770-7DAA7FE668C6', -- DesertFort_DesignerArt
    '4ADD8067-FF73-47A5-81EE-E0AB462BB3AD', -- DesertFort_Sound
    'A42F098A-05C1-4F86-952D-492A40FF83F0', -- DesertFortPCOnly_Layer
    --'AEDCBA47-3B7B-408A-B27E-F8814EC7CA50', -- DesertFortSmallObjects_01_LevelArtSubstream --------------- PROBLEMATIC: server CTD on sending spawn messages
    '2DADBEA7-CE53-4DCC-918E-92D599601D4D', -- DesertIntro_LevelArt
    'DC8300C9-3853-4B31-9B50-3BFA65C3B55D', -- DesertIntro_Sound
    'DFF9F0E4-CC66-4C84-B032-FC3B2E122EF0', -- HighwayOfDeath_01_LevelArt
    '29760AE0-859D-4478-9174-6D81D60ECB7F', -- HighwayOfDeath_Sound
    '03DB12FA-9131-43D8-BFAA-92CED1A7E6C4', -- HighwayOfDeath2_LevelArt
    'A4548DC1-882E-49B0-92A3-EEA4FD2A6A9A', -- HighwayOfDetah2_Sound [sic]
    'B04E3558-79CD-496D-85D0-25B521EF185C', -- HighwayOverpass_01_LevelArt
    --'FF1E141A-D019-4A7D-ABC5-0E229B2859F3', -- HighwayToTeheran_01_LevelArt ------------------------------ PROBLEMATIC: server CTD on sending spawn messages
    'C21F4205-887C-43CC-8DA6-2118D88576C0', -- HighwayToTeheran_01_Propsketching
    'EC0855CD-6993-4B0F-A1F0-7D67499B0ED3', -- HighwayToTeheran_01_Sound
    '8B2DDC6C-FF27-4D4F-9124-97A5108E023F', -- Highway1_Sound
    '46CEA362-BF22-4B7E-A2EA-5A23F77D7677', -- HighwayToTeheran_02_LevelArt
    '8ED85E48-1AED-44B9-86F6-59082D14F6FD', -- HighwayToTeheran_02_Sound
    'FCCDE338-8476-4C49-8F5D-C846E321E87F', -- MICLIC-HighwayToTeheran_LevelArt
    '09F62E34-E9E8-4057-A474-0DD12B0B9F33', -- MICLIC_Sound
    'E67A6BD5-2375-4649-87FA-FF74BABDCC51', -- MICLIC_soun 
    '8A5F933D-25B4-4AE0-81AF-8DEB5A224082', -- MICLIC_LevelArt
    'D5B9A86F-24BD-4FC4-AA19-CB48B24F1A90', -- MICLIC_Propsketching
    '44AAC126-318B-426B-96FD-3CA6C8BE5D82', -- RoadToDesert_01_LevelArt

}