require '__shared/SpTerrains/SpLevelExcludedSubWorldList'

Events:Subscribe('Partition:Loaded', function(partition) -- Iterates through every single partition so, if there is an instance in one of them we want to change, we can do so.

    -- Don't read any partition not referring to a SP or COOP map
    if partition == nil or (string.find(partition.name, 'coop_') == nil and string.find(partition.name, 'sp_') == nil) then
        return
    end

    if allowFearNoEvil == false and string.find(partition.name, 'sp_tank_b') then
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

            -- Enable map for MP in LevelDescriptionAsset
            thisInstance.description.isCoop = false
            thisInstance.description.isMultiplayer = true
            thisInstance.description.isMenu = false

            -- Enable map for all MP gamemodes
            local mpCategory = LevelDescriptionInclusionCategory()
            mpCategory.category = 'GameMode'
            mpCategory.mode:add('ConquestLarge0')
            mpCategory.mode:add('ConquestSmall0')
            mpCategory.mode:add('ConquestAssaultLarge0')
            mpCategory.mode:add('ConquestAssaultSmall0')
            mpCategory.mode:add('RushLarge0')
            mpCategory.mode:add('SquadRush0')
            mpCategory.mode:add('SquadDeathMatch0')
            mpCategory.mode:add('TeamDeathMatch0')
            mpCategory.mode:add('TeamDeathMatchC0')
            mpCategory.mode:add('Domination0')
            mpCategory.mode:add('GunMaster0')
            mpCategory.mode:add('TankSuperiority0')
            mpCategory.mode:add('Scavenger0')
            mpCategory.mode:add('CaptureTheFlag0')
            mpCategory.mode:add('AirSuperiority0')
            thisInstance.categories:add(mpCategory)

            -- Remove SP/COOP 'StartPoints'
            thisInstance.startPoints:clear()

        end

        if instance.typeInfo.name == 'SubWorldReferenceObjectData' then
            
            local thisInstance = SubWorldReferenceObjectData(instance)

            for _, badSubWorldGuid in pairs(spLevelExcludedSubWorldList) do
                if thisInstance.instanceGuid == Guid(badSubWorldGuid) then
                    --print('Found SubWorld to exclude, disabling autoload for \'' .. thisInstance.bundleName .. '\'...')
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

            -- Thanks to Bree_Arnold for giving me a hand with the below
            local thisInstance = LevelData(instance)
            thisInstance:MakeWritable()

            -- Set as MP in LevelData
            thisInstance.levelDescription.isCoop = false
            thisInstance.levelDescription.isMultiplayer = true
            thisInstance.levelDescription.isMenu = false

        end

        if instance.typeInfo.name == 'FogComponentData' then

            local thisInstance = FogComponentData(instance)
            thisInstance:MakeWritable()

            -- Disable fog which comes default on some levels, such as Comrades (SP_Paris) or Thunder Run (SP_Tank)
            thisInstance.enable = false

        end

        if instance.typeInfo.name == 'CameraParamsComponentData' then

            local thisInstance = CameraParamsComponentData(instance)
            thisInstance:MakeWritable()

            -- Increase view distance, which is shortened on some levels
            thisInstance.viewDistance = 999999

        end

        -- TODO: VisualEnvironment stuff

    end

end)