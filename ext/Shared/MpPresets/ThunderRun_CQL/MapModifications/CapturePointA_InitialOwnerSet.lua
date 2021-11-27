-- (-0.758622, 0.000000, 0.651531) (0.000000, 1.000000, 0.000000) (-0.651531, 0.000000, -0.758622) (-1061.174805, 93.240036, 736.613281)

-- Change CapturePointPrefab blueprint

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('80606090-DFBB-44F3-AD30-51840C20C304'), function(instance)

    --print('Changing CapturePointPrefab for Desert Fort...')
    local thisInstance = ReferenceObjectData(instance)

    ResourceManager:RegisterInstanceLoadHandler(Guid('4768E276-9799-4E73-A172-32080E8D826E'), Guid('411D87B8-4A6B-49F6-A2C9-0081F5113C33'), function(instance)
    
        local capturePointStartInTopBp = SpatialPrefabBlueprint(instance)
        thisInstance:MakeWritable()
        thisInstance.blueprint = capturePointStartInTopBp
    
    end)

end)

Events:Subscribe('Level:RegisterEntityResources', function(levelData) -- Add capture point blueprint to registry

    local capturePointStartInTopBp = SpatialPrefabBlueprint(ResourceManager:FindInstanceByGuid(Guid('4768E276-9799-4E73-A172-32080E8D826E'), Guid('411D87B8-4A6B-49F6-A2C9-0081F5113C33')))
    --print('Creating and adding registry for new capture point prefab...')
    local cpRegistry = RegistryContainer()
    cpRegistry.entityRegistry:add(capturePointStartInTopBp)
    ResourceManager:AddRegistry(cpRegistry, ResourceCompartment.ResourceCompartment_Game)

end)

-- Create and add Team2 DataField for InterfaceDescriptorData

ResourceManager:RegisterInstanceLoadHandler(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('74D4E354-7D4C-BBE9-007B-6F1ABD2B98C4'), function(instance) -- On loading Firestorm CQL InterfaceDescriptorData

    --print('Creating and adding Team2 DataField...')

    local thisInstance = InterfaceDescriptorData(instance)

    local newDataField = DataField()
    newDataField.value = 'TeamId Team2'
    newDataField.valueRef = nil
    newDataField.id = -1449776139
    newDataField.accessType = FieldAccessType.FieldAccessType_Target

    thisInstance:MakeWritable()
    thisInstance.fields:add(newDataField)

end)

-- Add PropertyConnection from InterfaceDescriptorData DataField to capture point ReferenceObjectData, -1449776139 to -1475588377

ResourceManager:RegisterInstanceLoadHandler(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('252D6BEC-B56C-488F-85AB-5FD3E14EC949'), function(instance)

    --print('Adding connection from Team2 data field to Desert Fort capture point...')

    local thisInstance = SubWorldData(instance)

    local interfaceDescriptorData = ResourceManager:FindInstanceByGuid(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('74D4E354-7D4C-BBE9-007B-6F1ABD2B98C4'))
    local capturePointReferenceObjectData = ResourceManager:FindInstanceByGuid(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('80606090-DFBB-44F3-AD30-51840C20C304'))

    local newPropertyConnection = PropertyConnection()
    newPropertyConnection.source = interfaceDescriptorData
    newPropertyConnection.target = capturePointReferenceObjectData
    newPropertyConnection.sourceFieldId = -1449776139
    newPropertyConnection.targetFieldId = -1475588377

    thisInstance:MakeWritable()
    thisInstance.propertyConnections:add(newPropertyConnection)

end)