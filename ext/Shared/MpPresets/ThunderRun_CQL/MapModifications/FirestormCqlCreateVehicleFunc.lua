function FirestormCqlCreateVehicle(blueprint, pos, newGuid, indexInBlueprint, teamId, lockedToTeam)

    ResourceManager:RegisterInstanceLoadHandler(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('252D6BEC-B56C-488F-85AB-5FD3E14EC949'), function(instance)
    
        -- Create vehicle
        local vehicleRefData = VehicleSpawnReferenceObjectData(newGuid)
        vehicleRefData.isEventConnectionTarget = 2
        vehicleRefData.isPropertyConnectionTarget = 3
        vehicleRefData.indexInBlueprint = indexInBlueprint
        vehicleRefData.blueprintTransform = pos
        vehicleRefData.blueprint = blueprint
        vehicleRefData.objectVariation = nil
        vehicleRefData.streamRealm = StreamRealm.StreamRealm_None
        vehicleRefData.castSunShadowEnable = true
        vehicleRefData.excluded = false
        vehicleRefData.enabled = true
        vehicleRefData.team = teamId
        vehicleRefData.lockedTeam = lockedToTeam
        vehicleRefData.initialAutoSpawn = true
        vehicleRefData.autoSpawn = true
        vehicleRefData.useAsSpawnPoint = true
        vehicleRefData.initialSpawnDelay = 0.0
        vehicleRefData.spawnDelay = 25.0
        vehicleRefData.maxCount = 0
        vehicleRefData.maxCountSimultaneously = 1
        vehicleRefData.totalCountSimultaneouslyOfType = 0
        vehicleRefData.spawnAreaRadius = 2.5
        vehicleRefData.spawnProtectionRadius = 0.0
        vehicleRefData.spawnProtectionCheckAllTeams = true
        vehicleRefData.spawnProtectionFriendlyKilledCount = 0
        vehicleRefData.spawnProtectionFriendlyKilledTime = 30.0
        vehicleRefData.clearBangersOnSpawn = true
        vehicleRefData.onlySendEventForHumanPlayers = true
        vehicleRefData.sendWeaponEvents = false
        vehicleRefData.tryToSpawnOutOfSight = false
        vehicleRefData.takeControlEntryIndex = 0
        vehicleRefData.takeControlOnTransformChange = true
        vehicleRefData.returnControlOnIdle = true
        vehicleRefData.rotationYaw = 0.0
        vehicleRefData.rotationPitch = 0.0
        vehicleRefData.rotationRoll = 0.0
        vehicleRefData.throttle = 0.0
        vehicleRefData.overwriteThrottle = false
        vehicleRefData.initialVelocity = 0.0
        vehicleRefData.controllableTransform = LinearTransform(Vec3(1,0,0),Vec3(0,1,0),Vec3(0,0,1),Vec3(0,0,0))
        vehicleRefData.controllableInput = LinearTransform(Vec3(1,0,0),Vec3(0,1,0),Vec3(0,0,1),Vec3(0,0,0))
        vehicleRefData.isDynamicSpawn = false
        vehicleRefData.airdropTransform = LinearTransform(Vec3(1,0,0),Vec3(0,1,0),Vec3(0,0,1),Vec3(0,0,0))
        vehicleRefData.wreckDuration = 0.0
        vehicleRefData.setTeamOnSpawn = lockedToTeam
        vehicleRefData.affectedByImpulse = true
        vehicleRefData.enterRestriction = EntryEnterRestriction.EntryEnterRestriction_NoRestriction
        vehicleRefData.botBailWhenHealthBelow = 0.0
        vehicleRefData.botBailOutDelay = 0.5
        vehicleRefData.applyDamageToAbandonedVehicles = true
        vehicleRefData.respawnRange = 15.0
        vehicleRefData.timeUntilAbandoned = 10.0
        vehicleRefData.timeUntilAbandonedIsDestroyed = 10.0
        vehicleRefData.keepAliveRadius = 20.0
        vehicleRefData.activeStanceEntryIndex = 0
        vehicleRefData.activeStance = 0
        vehicleRefData.vehicleIsNearDistance = 20.0
        vehicleRefData.enableAvailableSeatOutput = false
        vehicleRefData.disregardSpawnAllowedSetting = true
        vehicleRefData.airDropCarrierTransform = LinearTransform(Vec3(1,0,0),Vec3(0,1,0),Vec3(0,0,1),Vec3(0,0,0))

        local firestormCqlSubWorldData = SubWorldData(instance)
        firestormCqlSubWorldData:MakeWritable()
        firestormCqlSubWorldData.objects:add(vehicleRefData)

        local firestormCqlLogicPartition = ResourceManager:FindDatabasePartition(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'))
        firestormCqlLogicPartition:AddInstance(vehicleRefData)

        -- Add to registry

        Events:Subscribe('Level:RegisterEntityResources', function(levelData)
            local newVehicleRegistry = RegistryContainer()
            newVehicleRegistry.referenceObjectRegistry:add(vehicleRefData)
            ResourceManager:AddRegistry(newVehicleRegistry, ResourceCompartment.ResourceCompartment_Game)
            --print('Created and added registry for new vehicle '..blueprint.name)
        end)

        --print('Generated vehicle from '..blueprint.name)    
    
    end)

end