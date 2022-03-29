-- By default, all SubWorld instances are enabled (autoLoad = true): they contain everything you need for the sub-levels SP and COOP levels are split into.
-- This acts as a 'blacklist' for SubWorld instances. As such, the SubWorldReferenceObjectData GUIDs in this list aren't allowed to load, and all others are.

spLevelExcludedSubWorldList = {
    -- Thunder Run
    '46C9A9C5-61B2-484D-B9A1-C56D70682F06', -- HighwayOverpass_01
    '71844763-F933-4200-A03B-9B7385F94A1A', -- HighwayToTeheran_01
    'E2845049-2ADA-4E28-A4AE-26C8E4D55D2B', -- HighwayToTeheran_02
    '5151F1C7-D43D-4F0A-A2FB-680A2E41880E', -- MICLIC-HighwayToTeheran
    '6C4089A8-89D4-44E9-B186-7B91E4F68D1E', -- Backdrop
    '52722481-2181-438D-9334-A0ECB91FF805', -- DesertIntro
    'E4D145BB-8363-4476-ADAD-E777C223001A', -- HighwayOfDeath
    'D8A6501F-2F44-49F4-A4C5-6F6B25666044', -- RoadToDesert_01
    --'1F455D6F-9181-4D5B-952F-4C64113A1F10', -- HighwayOfDeath2
    '608959C0-8339-49F9-BF12-60AC8F7ABD75', -- MICLIC
    --'CE7F0083-AF66-49B5-80ED-6B687828C02C', -- MICLICArt
}