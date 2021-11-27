--------------------------------------------------------------------------
-- US/MEC bases (US at Thunder Run start, MEC in South Kashan garrison) --
--------------------------------------------------------------------------

require '__shared/MpPresets/ThunderRun_CQL/MapModifications/FirestormCqlCreateVehicleFunc'

-- United States -1857, 73, -271 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Marker or something?

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('6AA1D505-D1FD-49AF-866B-F833C35E1933'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    usHqPos = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-2092.192383, 74.311325, -507.323242)
    )
    thisInstance.blueprintTransform = usHqPos

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('9962704A-11F6-4AB3-BA85-6FD9CAEE43D9'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn1 = LinearTransform(
        Vec3(0.844317, 0.000000, -0.535844),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.535844, 0.000000, 0.844317),
        Vec3(-2113.918945, 74.435349, -513.787109)
    )

    thisInstance.transform = infSpawn1

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('F41073AD-1E09-4E87-BA52-C80ACBBC04E7'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn2 = LinearTransform(
        Vec3(0.437573, 0.000000, -0.899183),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.899183, 0.000000, 0.437573),
        Vec3(-2128.546631, 75.234177, -463.525391)
    )

    thisInstance.transform = infSpawn2

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('CBC50A2F-5AFD-4239-AA50-1C0ECA77F3C1'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn3 = LinearTransform(
        Vec3(0.892605, 0.000000, -0.450840),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.450840, 0.000000, 0.892605),
        Vec3(-2097.262695, 74.039841, -526.291016)
    )

    thisInstance.transform = infSpawn3

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('679CBAE8-DCB3-4CF5-A055-FFD000750A9D'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn4 = LinearTransform(
        Vec3(0.999393, 0.000000, -0.034843),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.034843, 0.000000, 0.999393),
        Vec3(-2083.657959, 74.451958, -495.224609)
    )

    thisInstance.transform = infSpawn4

end)

-- UH-1Y Spawn (generated new)

ResourceManager:RegisterInstanceLoadHandler(Guid('97945D87-011D-11E0-B97C-FC495C335A52'), Guid('0E09B2D0-BA4A-1509-E1D2-949FB0C04DBE'), function(instance)
    
    local venomBp = VehicleBlueprint(instance)
    local newVenomGuid = Guid('VIC0000U-0000-0000-0000-000000000000')
    local venomSpawn1 = LinearTransform(
        Vec3(0.747369, -0.042789, -0.663029),
        Vec3(0.024834, 0.999026, -0.036480),
        Vec3(0.663945, 0.010798, 0.747704),
        Vec3(-2116.036377, 75.144028, -498.519623)
    )
    FirestormCqlCreateVehicle(venomBp, venomSpawn1, newVenomGuid, 61518, TeamId.TeamNeutral, false)    

end)

-- HMMWV Spawn (replacing M1A1)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('5DF090F3-3918-443B-A16C-3940EFC71266'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local humveeSpawn1 = LinearTransform(
        Vec3(0.766051, -0.019242, -0.642492),
        Vec3(0.026191, 0.999656, 0.001290),
        Vec3(0.642246, -0.017816, 0.766291),
        Vec3(-2104.677734, 74.447067, -509.314453)
    )

    thisInstance.blueprintTransform = humveeSpawn1

    ResourceManager:RegisterInstanceLoadHandler(Guid('7A9B2F60-BEFD-DF43-A0E5-0A097C6C973B'), Guid('E4069B76-79A8-2AD2-D845-E079DB62A92F'), function(instance)
    
        local humveeBp = VehicleBlueprint(instance)
        thisInstance.blueprint = humveeBp    
    
    end)

end)

-- HMMWV Spawn (replacing Growler)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('00445605-384F-4C46-ADE8-E808F8096597'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local humveeSpawn2 = LinearTransform(
        Vec3(0.766051, -0.019242, -0.642492),
        Vec3(0.026191, 0.999656, 0.001290),
        Vec3(0.642246, -0.017816, 0.766291),
        Vec3(-2091.087891, 74.083771, -519.974731)
    )

    thisInstance.blueprintTransform = humveeSpawn2

    ResourceManager:RegisterInstanceLoadHandler(Guid('7A9B2F60-BEFD-DF43-A0E5-0A097C6C973B'), Guid('E4069B76-79A8-2AD2-D845-E079DB62A92F'), function(instance)
    
        local humveeBp = VehicleBlueprint(instance)
        thisInstance.blueprint = humveeBp    
    
    end)
    

end)

-- HMMWV Spawn (replacing AH-1Z) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('14F2A306-D1C2-4C03-83EA-DA2C8F762B46'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local humveeSpawn3 = LinearTransform(
        Vec3(0.766051, -0.019242, -0.642492),
        Vec3(0.026191, 0.999656, 0.001290),
        Vec3(0.642246, -0.017816, 0.766291),
        Vec3(-2078.953125, 73.774353, -528.875000)
    )

    thisInstance.blueprintTransform = humveeSpawn3

    ResourceManager:RegisterInstanceLoadHandler(Guid('7A9B2F60-BEFD-DF43-A0E5-0A097C6C973B'), Guid('E4069B76-79A8-2AD2-D845-E079DB62A92F'), function(instance)
    
        local humveeBp = VehicleBlueprint(instance)
        thisInstance.blueprint = humveeBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('C325A713-51C2-EAAD-074E-6F39A7E57E78'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local humveeSpawn3 = LinearTransform(
        Vec3(0.766051, -0.019242, -0.642492),
        Vec3(0.026191, 0.999656, 0.001290),
        Vec3(0.642246, -0.017816, 0.766291),
        Vec3(-2078.953125, 73.774353, -528.875000)
    )

    thisInstance.transform = humveeSpawn3

end)

-- Spawn new HMMWV

ResourceManager:RegisterInstanceLoadHandler(Guid('7A9B2F60-BEFD-DF43-A0E5-0A097C6C973B'), Guid('E4069B76-79A8-2AD2-D845-E079DB62A92F'), function(instance)

    local humveeBp = VehicleBlueprint(instance)
    local newHumveeGuid = Guid('VIC0000W-0000-0000-0000-000000000000')
    local humveeSpawn4 = LinearTransform(
        Vec3(0.766051, -0.019242, -0.642492),
        Vec3(0.026191, 0.999656, 0.001290),
        Vec3(0.642246, -0.017816, 0.766291),
        Vec3(-2066.81, 73.77, -537.79)
    )
    FirestormCqlCreateVehicle(humveeBp, humveeSpawn4, newHumveeGuid, 61515, TeamId.TeamNeutral, false)    

end)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('8DFF5C86-ECA6-46E9-AB96-0A61809D97BF'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn1 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2103.350586, 75.885071, -482.474304)
    )

    thisInstance.blueprintTransform = abramsSpawn1

    ResourceManager:RegisterInstanceLoadHandler(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC'), function(instance)
    
        local abramsBp = VehicleBlueprint(instance)
        thisInstance.blueprint = abramsBp    
    
    end)

end)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('3E3CE71B-53B5-4370-AD35-6672CEC8C82B'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn2 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2091.01, 75.885071, -492.95)
    )

    thisInstance.blueprintTransform = abramsSpawn2

    ResourceManager:RegisterInstanceLoadHandler(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC'), function(instance)
    
        local abramsBp = VehicleBlueprint(instance)
        thisInstance.blueprint = abramsBp    
    
    end)

end)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('4517F944-7996-4D98-8623-6233274C317F'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn3 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2078.67, 75.885071, -503.43)
    )

    thisInstance.blueprintTransform = abramsSpawn3

    ResourceManager:RegisterInstanceLoadHandler(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC'), function(instance)
    
        local abramsBp = VehicleBlueprint(instance)
        thisInstance.blueprint = abramsBp    
    
    end)

end)

-- M1A2 Spawn (replacing LAV-AD) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('947F6871-B6C2-4E6D-B203-A670BF00FA28'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn4 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2066.33, 75.885071, -513.91)
    )

    thisInstance.blueprintTransform = abramsSpawn4

    ResourceManager:RegisterInstanceLoadHandler(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC'), function(instance)
    
        local abramsBp = VehicleBlueprint(instance)
        thisInstance.blueprint = abramsBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('A01DA490-69F4-31A1-2478-EF39612857D5'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn4 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2066.33, 75.885071, -513.91)
    )

    thisInstance.transform = abramsSpawn4

end)

-- Spawn new M1A2 Abrams

ResourceManager:RegisterInstanceLoadHandler(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC'), function(instance)

    local abramsBp = VehicleBlueprint(instance)
    local abramsNewGuid = Guid('VIC0000X-0000-0000-0000-000000000000')
    local abramsSpawn5 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2053.99, 75.885071, -524.39)
    )

    FirestormCqlCreateVehicle(abramsBp, abramsSpawn5, abramsNewGuid, 61516, TeamId.TeamNeutral, false)    

end)

-- Disable original UH-1Y

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F9AEEE45-9C28-4517-8AF9-79EC23DE322C'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)

-- Disable F/A-18

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('1FF0C503-EDD0-4228-8E6D-0379BBC16DDC'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)

-- Disable F/A-18

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('E01A2B80-C865-4685-90D2-CD30349D801A'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)

-- Middle Eastern Coalition 164, 77, -1047 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('E78C2DC8-9CA8-4458-B54F-57DCA1B559E4'), function(instance) -- Move spawn (does nothing?)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    mecHqPos = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(164, 90, -1047)
    )
    thisInstance.blueprintTransform = mecHqPos

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('BF89DAC5-4776-4C3A-8AE2-6787AE281038'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn1 = LinearTransform(
        Vec3(-0.449183, 0.000000, 0.893440),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.893440, 0.000000, -0.449183),
        Vec3(186.487335, 77.493950, -1014.149414)
    )

    thisInstance.transform = infSpawn1

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('E385987F-4C69-4E00-BA70-9FDFE13590D1'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn2 = LinearTransform(
        Vec3(0.934772, 0.000000, 0.355249),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.355249, 0.000000, 0.934772),
        Vec3(174.442123, 77.141403, -1053.746094)
    )

    thisInstance.transform = infSpawn2

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('07856D7B-5F45-4BD8-9B6B-62332A175A0E'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn3 = LinearTransform(
        Vec3(0.678623, 0.000000, -0.734486),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.734486, 0.000000, 0.678623),
        Vec3(144.278091, 73.568176, -1018.641602)
    )

    thisInstance.transform = infSpawn3

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('EA36EA9B-3ED9-4529-A97F-1BDD88FB2814'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn4 = LinearTransform(
        Vec3(-0.960981, 0.000000, 0.276614),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.276614, 0.000000, -0.960981),
        Vec3(161.785172, 75.178543, -987.756104)
    )

    thisInstance.transform = infSpawn4

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('717CB4B6-CFB5-4F8F-8730-7DEB66799C21'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn5 = LinearTransform(
        Vec3(0.413601, 0.000000, 0.910458),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.910458, 0.000000, 0.413601),
        Vec3(159.899155, 74.898239, -1011.871094)
    )

    thisInstance.transform = infSpawn5

end)

-- Ka-60 Spawn (generating new)

ResourceManager:RegisterInstanceLoadHandler(Guid('2C5892FC-37CB-4A4E-92E2-2DD7BAF08A5C'), Guid('B9BAE0F8-72B9-4E1C-B5AD-F9353727C990'), function(instance)

    local ka60Bp = VehicleBlueprint(instance)
    local newka60Guid = Guid('VIC0000V-0000-0000-0000-000000000000')
    local kasatkaSpawn1 = LinearTransform(
        Vec3(0.946353, 0.015726, 0.322752),
        Vec3(0.011479, 0.996549, -0.082215),
        Vec3(-0.322931, 0.081509, 0.942906),
        Vec3(182.035660, 78.225952, -1043.902954)
    )
    FirestormCqlCreateVehicle(ka60Bp, kasatkaSpawn1, newka60Guid, 61519, TeamId.TeamNeutral, false)    

end)

-- Disable misbehaving buggy (one of the two, maybe)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F46D3999-EB85-4549-8445-F32F2516F4F9'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('9C4FEA95-4F4C-419F-9040-2A5A0DAF83C5'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false

end)

-- Spawn new buggy

ResourceManager:RegisterInstanceLoadHandler(Guid('2EA804A7-8232-11E0-823A-BD52CA6DC6B3'), Guid('D68E417F-6103-5140-3ABC-4C7505160A09'), function(instance)

    local buggyBp = VehicleBlueprint(instance)
    local newBuggyGuid = Guid('VIC0000Y-0000-0000-0000-000000000000')
    local buggySpawn1 = LinearTransform(
        Vec3(0.451043, -0.047482, 0.891238),
        Vec3(0.028082, 0.998844, 0.039003),
        Vec3(-0.892060, 0.007436, 0.451855),
        Vec3(162.82, 75.854240, -996.94)
    )
    FirestormCqlCreateVehicle(buggyBp, buggySpawn1, newBuggyGuid, 61517, TeamId.TeamNeutral, false)    

end)

-- Buggy spawn (replacing Tunguska) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('4E64BAAF-791C-439C-AC8B-AC18C4361C67'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local buggySpawn2 = LinearTransform(        -- Replacing Tunguska
        Vec3(0.451043, -0.047482, 0.891238),
        Vec3(0.028082, 0.998844, 0.039003),
        Vec3(-0.892060, 0.007436, 0.451855),
        Vec3(165.357803, 75.397087, -1003.388672)
    )

    thisInstance.blueprintTransform = buggySpawn2

    ResourceManager:RegisterInstanceLoadHandler(Guid('2EA804A7-8232-11E0-823A-BD52CA6DC6B3'), Guid('D68E417F-6103-5140-3ABC-4C7505160A09'), function(instance)
    
        local buggyBp = VehicleBlueprint(instance)
        thisInstance.blueprint = buggyBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F5B6D067-BDAA-BA95-D104-4915D73C5B03'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local buggySpawn2 = LinearTransform(        -- Replacing Tunguska
        Vec3(0.451043, -0.047482, 0.891238),
        Vec3(0.028082, 0.998844, 0.039003),
        Vec3(-0.892060, 0.007436, 0.451855),
        Vec3(165.357803, 75.397087, -1003.388672)
    )

    thisInstance.transform = buggySpawn2

end)

-- Buggy spawn (replacing Mi28) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('CD1B555E-4259-4BDE-A1D2-71E71155618F'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local buggySpawn3 = LinearTransform(        -- Replacing Mi28
        Vec3(0.307687, -0.058750, 0.949672),
        Vec3(0.020327, 0.998270, 0.055171),
        Vec3(-0.951270, 0.002329, 0.308349),
        Vec3(167.897430, 75.634918, -1009.844971)
    )

    thisInstance.blueprintTransform = buggySpawn3

    ResourceManager:RegisterInstanceLoadHandler(Guid('2EA804A7-8232-11E0-823A-BD52CA6DC6B3'), Guid('D68E417F-6103-5140-3ABC-4C7505160A09'), function(instance)
    
        local buggyBp = VehicleBlueprint(instance)
        thisInstance.blueprint = buggyBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('30862E96-5B4A-C793-BDCE-F9365F719DC0'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local buggySpawn3 = LinearTransform(        -- Replacing Mi28
        Vec3(0.307687, -0.058750, 0.949672),
        Vec3(0.020327, 0.998270, 0.055171),
        Vec3(-0.951270, 0.002329, 0.308349),
        Vec3(167.897430, 75.634918, -1009.844971)
    )

    thisInstance.transform = buggySpawn3

end)

-- BTR-90 spawn (replacing T90) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('83F4C88D-5B69-42A7-AF17-9B0AD1C2E733'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn1 = LinearTransform(          -- Replacing T90
        Vec3(0.962276, 0.079472, 0.260211),
        Vec3(-0.079412, 0.996784, -0.010764),
        Vec3(-0.260230, -0.010306, 0.965492),
        Vec3(148.814331, 74.038338, -998.737305)
    )

    thisInstance.blueprintTransform = bmpSpawn1

    ResourceManager:RegisterInstanceLoadHandler(Guid('22CFC313-4DD1-49E6-B45F-A8B1194105C5'), Guid('F998F5E4-220D-463A-A437-1C18D5C3A19E'), function(instance)
    
        local btrBp = VehicleBlueprint(instance)
        thisInstance.blueprint = btrBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('45F52283-3E33-DEA7-5D38-5490C7FBB351'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn1 = LinearTransform(          -- Replacing T90
        Vec3(0.962276, 0.079472, 0.260211),
        Vec3(-0.079412, 0.996784, -0.010764),
        Vec3(-0.260230, -0.010306, 0.965492),
        Vec3(148.814331, 74.038338, -998.737305)
    )

    thisInstance.transform = bmpSpawn1

end)

-- BTR-90 spawn (replacing T90) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('17403BC6-5CE5-48F0-9046-F78744F31C54'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn2 = LinearTransform(          -- Replacing T90
        Vec3(0.937299, 0.079860, 0.339252),
        Vec3(-0.086699, 0.996222, 0.005026),
        Vec3(-0.337569, -0.034124, 0.940682),
        Vec3(154.569214, 74.490265, -1017.790039)
    )
    
    thisInstance.blueprintTransform = bmpSpawn2

    ResourceManager:RegisterInstanceLoadHandler(Guid('22CFC313-4DD1-49E6-B45F-A8B1194105C5'), Guid('F998F5E4-220D-463A-A437-1C18D5C3A19E'), function(instance)
    
        local btrBp = VehicleBlueprint(instance)
        thisInstance.blueprint = btrBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F3F4FBDE-B925-0187-04DE-1D590F05FB82'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn2 = LinearTransform(          -- Replacing T90
        Vec3(0.937299, 0.079860, 0.339252),
        Vec3(-0.086699, 0.996222, 0.005026),
        Vec3(-0.337569, -0.034124, 0.940682),
        Vec3(154.569214, 74.490265, -1017.790039)
    )

    thisInstance.transform = bmpSpawn2

end)

-- BTR-90 spawn (replacing T90) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('D6E3674D-F84C-4AA8-980F-A5BAF9E85BB1'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn3 = LinearTransform(          -- Replacing T90
        Vec3(0.947007, 0.086301, 0.309403),
        Vec3(-0.096337, 0.995199, 0.017275),
        Vec3(-0.306426, -0.046167, 0.950774),
        Vec3(160.214493, 75.214806, -1034.991211)
    )

    thisInstance.blueprintTransform = bmpSpawn3

    ResourceManager:RegisterInstanceLoadHandler(Guid('22CFC313-4DD1-49E6-B45F-A8B1194105C5'), Guid('F998F5E4-220D-463A-A437-1C18D5C3A19E'), function(instance)
    
        local btrBp = VehicleBlueprint(instance)
        thisInstance.blueprint = btrBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('09E80734-4FD7-F2F5-892B-6953153B7300'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn3 = LinearTransform(          -- Replacing T90
        Vec3(0.947007, 0.086301, 0.309403),
        Vec3(-0.096337, 0.995199, 0.017275),
        Vec3(-0.306426, -0.046167, 0.950774),
        Vec3(160.214493, 75.214806, -1034.991211)
    )

    thisInstance.transform = bmpSpawn3

end)

-- BTR-90 spawn (replacing T90) - note we have to modify two instances here (DICE plz)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('AD8361C9-B82B-4559-8462-7BEDEB595805'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn4 = LinearTransform(          -- Replacing T90
        Vec3(0.947774, 0.085688, 0.307216),
        Vec3(-0.099626, 0.994574, 0.029947),
        Vec3(-0.302983, -0.058990, 0.951169),
        Vec3(165.420807, 76.175674, -1051.467773)
    )

    thisInstance.blueprintTransform = bmpSpawn4

    ResourceManager:RegisterInstanceLoadHandler(Guid('22CFC313-4DD1-49E6-B45F-A8B1194105C5'), Guid('F998F5E4-220D-463A-A437-1C18D5C3A19E'), function(instance)
    
        local btrBp = VehicleBlueprint(instance)
        thisInstance.blueprint = btrBp    
    
    end)

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('12A3217E-ED5A-4C21-C926-FD5D91359F46'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn4 = LinearTransform(          -- Replacing T90
        Vec3(0.947774, 0.085688, 0.307216),
        Vec3(-0.099626, 0.994574, 0.029947),
        Vec3(-0.302983, -0.058990, 0.951169),
        Vec3(165.420807, 76.175674, -1051.467773)
    )

    thisInstance.transform = bmpSpawn4

end)

-- Disable original Ka-60

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('94F815AE-BED7-4DFA-BA90-225DA2DDBFF7'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)

-- Disable Su-35

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('C8AD95A2-C1CA-4E36-B695-DBDD4EF0D1B2'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)

-- Disable Su-35

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F08EF9FE-4D7A-46DA-A8D4-71A2A17BA840'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)