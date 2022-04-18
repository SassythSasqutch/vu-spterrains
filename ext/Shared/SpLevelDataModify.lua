require '__shared/SpLevelExcludedSubWorldList'

Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil or (string.find(partition.name, 'coop_') == nil and string.find(partition.name, 'sp_') == nil) then
        return
    end

    if allowFearNoEvil == false and string.find(partition.name, 'sp_tank_b') then
        return
    end

    for _, instance in pairs(partition.instances) do

        if instance == nil then 
            return
        end

        if instance.typeInfo.name == 'LevelDescriptionAsset' then

            local thisInstance = LevelDescriptionAsset(instance)
            thisInstance:MakeWritable()

            -- Enable map for MP in LevelDescriptionAsset
            thisInstance.description.isCoop = false
            thisInstance.description.isMultiplayer = true
            thisInstance.description.isMenu = false

            -- Enable map for all MP gamemodes
            local mpCategory = LevelDescriptionInclusionCategory()
            mpCategory.category = 'GameMode'
            mpCategory.mode:add('ConquestLarge0')
            thisInstance.categories:add(mpCategory)

            -- Remove SP/COOP 'StartPoints'
            thisInstance.startPoints:clear()

        end

        if instance.typeInfo.name == 'SubWorldReferenceObjectData' then
            
            local thisInstance = SubWorldReferenceObjectData(instance)

            for _, badSubWorldGuid in pairs(spLevelExcludedSubWorldList) do
                if thisInstance.instanceGuid == Guid(badSubWorldGuid) then
                    thisInstance:MakeWritable()
                    thisInstance.autoLoad = false
                    goto cont
                end
            end

            thisInstance:MakeWritable()

            -- Allow all the parts of the level (SubWorlds) to be loaded simultaneously
            thisInstance.autoLoad = true

            ::cont::

        end

        if instance.typeInfo.name == 'LevelData' then

            local thisInstance = LevelData(instance)
            thisInstance:MakeWritable()

            -- Enable map for MP in LevelData
            thisInstance.levelDescription.isCoop = false
            thisInstance.levelDescription.isMultiplayer = true
            thisInstance.levelDescription.isMenu = false

        end

        if instance.typeInfo.name == 'CameraParamsComponentData' then

            local thisInstance = CameraParamsComponentData(instance)
            thisInstance:MakeWritable()

            -- Increase view distance, which is shortened on some levels
            thisInstance.viewDistance = 999999

        end

    end

end)