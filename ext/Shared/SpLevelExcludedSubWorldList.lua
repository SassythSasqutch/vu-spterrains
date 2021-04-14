-- By default, all SubWorld instances are enabled (autoLoad = true): they contain everything you need for the sub-levels SP and COOP levels are split into.
-- This acts as a 'blacklist' for SubWorld instances. As such, the SubWorldReferenceObjectData GUIDs in this list aren't allowed to load, and all others are.

-- You might also need to manually disable autoLoad for that SubWorld. See 'vu-spterrains/ext/Shared/SpLevelExcludeSubWorldExample.lua' for an example.

spLevelExcludedSubWorldList = {
    '',
}