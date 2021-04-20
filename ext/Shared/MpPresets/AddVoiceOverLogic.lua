-- This is the same for every multiplayer preset

Events:Subscribe('Partiton:Loaded', function(partition)

    -- Don't read any partition not referring to a SP or COOP map
    if partition == nil or (string.find(partition.name, 'COOP_') == nil and string.find(partition.name, 'SP_') == nil and string.find(partition.name, 'xp2_skybar') == nil) then
        return
    end

    -- Reads all the instances in each partition
    for _, instance in pairs(partition.instances) do

        if instance == nil then 
            break
        end

        if instance.typeInfo.name == 'LevelData' then

            thisInstance = LevelData(instance)
            thisInstance:MakeWritable()

            -- Clear SP VoiceOverLogic
            print('Clearing voice over logic...')
            thisInstance.voiceOverLogic:clear()

            -- Add MP VoiceOverLogic
            print('Adding MP voice over logic...')
            
            local autoTriggersVoLogic = VoiceOverLogicAsset(ResourceManager:SearchForInstanceByGuid(Guid('7814D619-FF54-4E6C-8E30-E850A4D55959')))
            local comroseVoLogic = VoiceOverLogicAsset(ResourceManager:SearchForInstanceByGuid(Guid('CA084EB9-BE72-B3BA-0D73-AAEC80C1CB91')))
            local genericVoLogic = VoiceOverLogicAsset(ResourceManager:SearchForInstanceByGuid(Guid('B1E8B696-9572-5354-1BB8-67052E5DD38B')))
            local conquestVoLogic = VoiceOverLogicAsset(ResourceManager:SearchForInstanceByGuid(Guid('10A283B4-BD8F-F308-6C0F-65D2FAB93BD5')))
            -- TODO: Add all of these for all gamemodes

            thisInstance.voiceOverLogic:add(autoTriggersVoLogic)
            thisInstance.voiceOverLogic:add(comroseVoLogic)
            thisInstance.voiceOverLogic:add(genericVoLogic)
            thisInstance.voiceOverLogic:add(conquestVoLogic)

        end

    end

end)