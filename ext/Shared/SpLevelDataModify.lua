require '__shared/SpLevelExcludedSubWorldList'

-- Set SP loading screens (COOP are already OK - seem to be already designed for MP) - CURRENTLY DYSFUNCTIONAL, MAY NOT BE EASILY POSSIBLE

--[[Events:Subscribe('Extension:Loaded', function()

    local spUILevelDescriptionComponentGuids = {
        '48FCF68E-9643-9EDE-C162-DBDC7C5A60DE', -- Operation Guillotine SP_Bank
        '56C9CB41-3AA6-AB66-FCE9-4AE293ACC7F8', -- Operation Swordbreaker SP_Earthquake
        '4BD8BF47-4ACD-4EA7-C04D-F3F17C9F3635', -- Uprising SP_Earthquake2
        '18E70353-5B15-5E05-579D-44A3562D71B6', -- The Great Destroyer SP_Finale
        '3B9CD74A-844C-ABCC-369B-E02F7FF9BECB', -- Going Hunting SP_Jet
        '4D019FE2-07A8-5D69-7902-06461C370531', -- Semper Fidelis SP_New_York
        'D954439B-DDA3-99FD-46A8-DD22D8C22B5F', -- Comrades SP_Paris
        '8368F7BF-C156-EB46-FCCE-82CC7E92E2AD', -- Night Shift SP_Sniper
        '6D701F2A-DCB4-3351-FEC5-6334F96688FB', -- Thunder Run SP_Tank
        'FD7D2AC3-19DC-4B82-1598-34DD7AC5BA47', -- Fear No Evil SP_Tank_B
        '480B7A3D-E517-62B4-75FF-A91393B8EB89', -- Rock And A Hard Place SP_Valley
        '4166F3A8-DAF2-7338-EA99-B1E05948E8F9'  -- Kaffarov SP_Villa
    }

    for _, spUILevelDescriptionComponentGuid in pairs(spUILevelDescriptionComponentGuids) do

        local thisUILevelDescriptionComponent_Uncasted = ResourceManager:SearchForInstanceByGuid(Guid(spUILevelDescriptionComponentGuid))

        if thisUILevelDescriptionComponent_Uncasted ~= nil then
            local thisUILevelDescriptionComponent = UILevelDescriptionComponent(thisUILevelDescriptionComponent_Uncasted)
            thisUILevelDescriptionComponent:MakeWritable()
            thisUILevelDescriptionComponent.mpLoadingAssetPath = 'UI/Assets/LoadingScreen'
            thisUILevelDescriptionComponent.spLoadingAssetPath = ''
        end

    end

end)]]

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
                    print('Found SubWorld to exclude, disabling autoload for \'' .. thisInstance.bundleName .. '\'...')
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

    end

end)