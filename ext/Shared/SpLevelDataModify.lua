require '__shared/SpLevelExcludedSubWorldList'

-- TODO: SP loading screens

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

            -- Enable map for MP
            print('Setting isMultiplayer in \'' .. partition.name .. '\'...')
            thisInstance.description.isCoop = false
            thisInstance.description.isMultiplayer = true
            thisInstance.description.isMenu = false

            -- Enable map for CQL
            print('Setting LevelDescriptionInclusionCategory in \'' .. partition.name .. '\'...')
            -- Temp
            local catToClear
            -- Temp
            local cqlCategory = LevelDescriptionInclusionCategory()
            cqlCategory.category = 'GameMode'
            cqlCategory.mode:add('ConquestLarge0')
            cqlCategory.mode:add('ConquestSmall0')
            cqlCategory.mode:add('ConquestAssaultLarge0')
            cqlCategory.mode:add('ConquestAssaultSmall0')
            cqlCategory.mode:add('RushLarge0')
            cqlCategory.mode:add('SquadRush0')
            cqlCategory.mode:add('SquadDeathMatch0')
            cqlCategory.mode:add('TeamDeathMatch0')
            cqlCategory.mode:add('TeamDeathMatchC0')
            cqlCategory.mode:add('Domination0')
            cqlCategory.mode:add('GunMaster0')
            cqlCategory.mode:add('TankSuperiority0')
            cqlCategory.mode:add('Scavenger0')
            cqlCategory.mode:add('CaptureTheFlag0')
            cqlCategory.mode:add('AirSuperiority0')
            thisInstance.categories:add(cqlCategory)

            -- Remove SP 'StartPoints'
            print('Removing StartPoints in \'' .. partition.name .. '\'...')
            thisInstance.startPoints:clear()

        end

        if instance.typeInfo.name == 'SubWorldReferenceObjectData' then
            
            local thisInstance = SubWorldReferenceObjectData(instance)

            for i, v in pairs(spLevelExcludedSubWorldList) do
                if thisInstance.instanceGuid == Guid(spLevelExcludedSubWorldList[i]) then
                    print('Found SubWorld to exclude, disabling autoload for \'' .. thisInstance.bundleName .. '\'...')
                    thisInstance:MakeWritable()
                    thisInstance.autoLoad = false
                    goto cont
                end
            end

            thisInstance:MakeWritable()

            -- Allow all the parts of the level (SubWorlds) to be loaded simultaneously
            print('Configuring autoload for \'' .. thisInstance.bundleName .. '\'...')
            thisInstance.autoLoad = true

            ::cont::

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


-- For testing with Ziba Tower
ResourceManager:RegisterInstanceLoadHandler(Guid('3008B866-A95F-12E7-3E2A-C53B33F10695'), Guid('3008B866-A95F-12E7-3E2A-C53B33F10695'), function(instance)

    local thisInstance = LevelDescriptionAsset(instance)
    thisInstance:MakeWritable()

    LevelDescriptionInclusionCategory(thisInstance.categories[1]).mode:add('ConquestLarge0')

end)

-- Put any InstanceLoadHandlers to exclude SubWorlds down here.