Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) then
        return
    end

    if string.find(levelName, 'SP_Tank') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    function getMpSubWorldRef()
        local firestormCqlSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('8FE1F5F4-6C8F-4185-B478-2DDEA1CCA686')))
    end

    if not pcall(getMpSubWorldRef) then
        error('WARNING: Multiplayer logic could not be found. This is catastrophic. Ensure that you haven\'t modified bundle orders.')
    end

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(firestormCqlSubWorldReferenceObjectData)

end)