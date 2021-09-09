Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) then
        return
    end

    if string.find(levelName, 'COOP_006') == nil or gameModeName ~= 'ConquestLarge0' then
        return
    end

    local damavandCqlSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('8683F4BB-CD57-11DF-A251-CAB801F86363'), Guid('3EB89F77-C414-4007-AEC0-6E83641924A2')))

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(damavandCqlSubWorldReferenceObjectData)

end)