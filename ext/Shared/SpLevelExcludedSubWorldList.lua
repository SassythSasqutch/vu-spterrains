-- By default, all SubWorld instances are enabled (autoLoad = true): they contain everything you need for the sub-levels SP and COOP levels are split into.
-- This acts as a 'blacklist' for SubWorld instances. As such, the SubWorldReferenceObjectData GUIDs in this list aren't allowed to load, and all others are.

spLevelExcludedSubWorldList = {
    -- Thunder Run
    '46C9A9C5-61B2-484D-B9A1-C56D70682F06', -- HighwayOverpass_01
    '71844763-F933-4200-A03B-9B7385F94A1A', -- HighwayToTeheran_01
    'E2845049-2ADA-4E28-A4AE-26C8E4D55D2B', -- HighwayToTeheran_02
    '5151F1C7-D43D-4F0A-A2FB-680A2E41880E', -- MICLIC-HighwayToTeheran
    '6C4089A8-89D4-44E9-B186-7B91E4F68D1E', -- Backdrop
}