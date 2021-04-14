-- If you're making a map from a singleplayer or co-op terrain, often you will want to exclude an entire part of the level - also known as a SubWorld.
-- For this, you want to disable autoload for that SubWorld. The process is as follows, with SP_Villa/Halo_Backdrop as our example:

-- 1a. Find the main level partition in the EBX - this will be under Levels/SP_Villa/SP_Villa, for our example. 
-- 1b. I recommend using Powback's EBX viewer (http://webx.powback.com/#/Levels/SP_Villa/SP_Villa.json).

-- 2a. Open the 'Objects' list of instances, printed in teal-ish text near the bottom of the 'EBX Viewer' tab, with a grey arrow to the left of it.
-- 2b. This will show you the root from where everything in the level is loaded, including the reference to the SubWorld you want to remove.

-- 3. The reference to this SubWorld will be one of the SubWorldReferenceObjectData instances - click on all of them to expand them and see their properties.

-- 4a. The BundleName will tell you the SubWorld each instance is referencing: find the one you don't want.
-- 4b. For our example, that will be Levels/SP_Villa/Halo_Backdrop, under entry [41] in that Objects list.

-- 5a. You will need the partition GUID (long ass line of numbers/letters) and the instance GUID, taken from just above where it says the BundleName. 
-- 5b. For our example, these will start with '6B42...' and  'AAF5...'.

-- 6. With these GUIDS, we can register an InstanceLoadHandler to disable autoLoad for the SP_Villa/Halo_Backdrop subworld. See below.



ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('AAF5C58D-85BF-4D71-853A-8EDDDEEF6B11'), function(instance)
--                                                /\ CHANGE TO PARTITION GUID.........          /\ CHANGE TO INSTANCE GUID..........

    local thisInstance = SubWorldReferenceObjectData(instance) -- Tell VEXT what sort of instance we want to modify
    thisInstance:MakeWritable() -- Tell VEXT to allow us to edit this instance
    
    thisInstance.autoLoad = false -- Tell VEXT set the autoload property to false, so that the engine does not load it by default.

end)



-- 8. Put this code at the end of 'vu-spterrains/ext/Shared/SpLevelDataModify.lua'.

-- 9a. Finally, you will need to add the instance GUID to the ExcludedSubWorld list. 
-- 9b. This is so that the mod doesn't automatically re-enable autoload for your subworld.

-- 10a. Go to 'vu-spterrains/ext/Shared/SpLevelExcludedSubWorldList.lua' and paste into that list the instance GUID of the SubWorld reference we don't like. 
-- 10b. For our example, that's AAF5C58D-85BF-4D71-853A-8EDDDEEF6B11.

-- 11a. The list will look something like this, similar to the ApprovedWorldPart list:



spLevelExcludedSubWorldList = {
    'AAF5C58D-85BF-4D71-853A-8EDDDEEF6B11',
}



-- 11b. If we were also adding the instance GUID to exclude SP_Paris/RailBackdrop, it would look like this:



spLevelExcludedSubWorldList = {
    'AAF5C58D-85BF-4D71-853A-8EDDDEEF6B11',
    'A9B46825-8333-4852-BDF3-7A8C24F75FFF',
}



-- (If you did want to also exclude the SP_Paris/RailBackdrop SubWorld, of course you would need to disable autoload, like we did for SP_Villa/Halo_Backdrop)