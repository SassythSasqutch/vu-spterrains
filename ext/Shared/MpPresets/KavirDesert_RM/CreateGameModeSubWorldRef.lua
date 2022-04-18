ResourceManager:RegisterInstanceLoadHandler(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('0DAA59A2-B0F3-6AC5-F203-AC58481919CE'), function(p_SpTankLevelData)

    function getMpSubWorldRef()
        local firestormCqlSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('8FE1F5F4-6C8F-4185-B478-2DDEA1CCA686')))
        return firestormCqlSubWorldReferenceObjectData
    end

    if not pcall(getMpSubWorldRef) then
        error('WARNING: Multiplayer logic could not be found. This is catastrophic. Ensure that you haven\'t modified bundle orders.')
        return
    end

    -- Add to LevelData 'Objects' array
    local p_SpTankLevelData = LevelData(p_SpTankLevelData)
    p_SpTankLevelData:MakeWritable()
    p_SpTankLevelData.objects:add(getMpSubWorldRef())

end)