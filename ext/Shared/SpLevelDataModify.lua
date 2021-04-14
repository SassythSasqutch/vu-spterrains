Events:Subscribe('Partition:Loaded', function(partition) -- Iterates through every single partition so, if there is an instance in one of them we want to change, we can do so.

    -- Don't read any partition not referring to the SP map being loaded
    if partition == nil or string.find(partition.name, thisMap) == nil then
        return
    end

    -- Reads all the instances in each partition
    for _, instance in pairs(partition.instances) do

        if instance == nil then 
            break
        end

        if instance.typeInfo.name == 'LevelDescriptionAsset' then

            local thisInstance = LevelDescriptionAsset(instance)
            thisInstance:MakeWritable()

            -- Enable map for MP
            print('Setting isMultiplayer in \'' .. partition.name .. '\'...')
            thisInstance.description.isCoop = false
            thisInstance.description.isMultiplayer = true
            thisInstance.description.isMenu = false

            -- Enable map for CQL
            print('Setting LevelDescriptionInclusionCategory in \'' .. partition.name .. '\'...')
            local cqlCategory = LevelDescriptionInclusionCategory()
            cqlCategory.category = 'GameMode'
            cqlCategory.mode:add('ConquestLarge0')
            thisInstance.categories:add(cqlCategory)

            -- Remove SP 'StartPoints'
            print('Removing StartPoints in \'' .. partition.name .. '\'...')
            thisInstance.startPoints:clear()

        end

        if instance.typeInfo.name == 'SubWorldReferenceObjectData' then
            
            local thisInstance = SubWorldReferenceObjectData(instance)
            thisInstance:MakeWritable()

            -- Allow all the parts of the level (SubWorlds) to be loaded simultaneously
            print('Configuring autoload for \'' .. thisInstance.bundleName .. '\'...')
            thisInstance.autoLoad = true

        end

        if instance.typeInfo.name == 'LevelData' then

            local thisInstance = LevelData(instance)
            thisInstance:MakeWritable()

            -- Disable AI System
            print('Disabling AI system...')
            thisInstance.aiSystem = nil

        end

        if instance.typeInfo.name == 'FogComponentData' then

            local thisInstance = FogComponentData(instance)
            thisInstance:MakeWritable()

            -- Disable fog which comes default on some levels, such as Comrades (SP_Paris) or Thunder Run (SP_Tank)
            print('Disabling fog in \'' .. partition.name .. '\'...')
            thisInstance.enable = false

        end

        if instance.typeInfo.name == 'CameraParamsComponentData' then

            local thisInstance = CameraParamsComponentData(instance)
            thisInstance:MakeWritable()

            -- Increase view distance, which is shortened on some levels
            thisInstance.viewDistance = 999999

        end

    end

end)