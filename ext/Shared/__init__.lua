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
require '__shared/MpPresets/Default/MapModifications/SpawnPosns'

require '__shared/MpPresets/ThunderRun_CQL/MpDataLoad'
require '__shared/MpPresets/ThunderRun_CQL/CreateGameModeSubWorldRef'
require '__shared/MpPresets/ThunderRun_CQL/MapModificationManager' -- I'm offloading all the code to start the map mod script to its own file. This way, I can guarantee they only run when Thunder Run Conquest Large is loaded. You can see how this works in MapModificationsManager.lua itself.

-- Test: Create and add cloned CharacterSpawnReferenceObjectData to COOP_007 Default parition
--[[Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if levelName == nil or gameModeName == nil then return end

    -- Don't continue if the current level is not any singleplayer or coop level in TDM CQ.
    if (string.find(levelName, 'COOP_') == nil and string.find(levelName, 'SP_') == nil) or gameModeName ~= 'TeamDeathMatchC0' then
        return
    end

    for _, instance in pairs(partition.instances) do

        if instance.instanceGuid == Guid('DFD7782B-24F9-FE70-B4F0-755843D07066') then -- COOP_007 LevelData

            levelData = LevelData(instance)

        end

        if instance.instanceGuid == Guid('9A0C0F5D-9563-8EE5-A4F6-28F00B074EE6') then -- Default WorldPartData

            defaultWorldPartData = WorldPartData(instance)

        end

        if instance.instanceGuid == Guid('1B0F2A83-70A5-4C56-A449-90F0B254AF18') then -- CharacterSpawnReferenceObjectData to clone

            charSpawnRefObjData = CharacterSpawnReferenceObjectData(instance)

        end

    end

    if done == nil and levelData ~= nil and defaultWorldPartData ~= nil and charSpawnRefObjData ~= nil then
        
        print('Exe')

        newCharSpawnRefObjData = CharacterSpawnReferenceObjectData(charSpawnRefObjData:Clone(Guid('Z0000000-0000-0000-0000-00SPTERRAINS')))
        newCharSpawnRefObjData.blueprintTransform = LinearTransform(
            Vec3(1,0,0),
            Vec3(0,1,0),
            Vec3(0,0,1),
            Vec3(0,0,0)
        )
        newCharSpawnRefObjData.useAsSpawnPoint = true

        defaultWorldPartData:MakeWritable()
        defaultWorldPartData.objects:add(newCharSpawnRefObjData)

        -- Create connection to AlternateSpawn

        done = true

    end

end)

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    local newRegistry = RegistryContainer()
    newRegistry.referenceObjectRegistry:add(newCharSpawnRefObjData)
    ResourceManager:AddRegistry(newRegistry, ResourceCompartment.ResourceCompartment_Game)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('66606821-E69C-11DF-9B0E-AF9CA6E0236B'), Guid('43DCDEDF-64D3-F3B3-0E66-7C9C71699B20'), function(instance)

    local thisInstance = RegistryContainer(instance)
    thisInstance:MakeWritable()
    thisInstance.referenceObjectRegistry:add(newCharSpawnRefObjData)
    print('Sent')

end)]]