-------------------------
-- Objective positions --
-------------------------

-- Desert Fort (A) GUID FEA2A91C-04DB-4880-A9C2-0926F7A486C8 (Flag GUID 80606090-DFBB-44F3-AD30-51840C20C304) -----------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('FEA2A91C-04DB-4880-A9C2-0926F7A486C8'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-1056.319336, 80, 813.461914),
        Vec3(-1125.491211, 80, 811.569336),
        Vec3(-1136.620117, 80, 806.721680),
        Vec3(-1161.549805, 80, 779.658203),
        Vec3(-1174.988281, 80, 759.330078),
        Vec3(-1176.727539, 80, 746.033203),
        Vec3(-1175.792969, 80, 736.030273),
        Vec3(-1133.903320, 80, 642.691406),
        Vec3(-1121.086914, 80, 636.016602),
        Vec3(-1063.087891, 80, 632.347656),
        Vec3(-1005.078125, 80, 638.009766),
        Vec3(-979.111328, 80, 652.324219),
        Vec3(-939.528320, 80, 753.643311),
        Vec3(-982.945313, 80, 811.555664),
        Vec3(-1025.959961, 80, 813.463867)
    }
    
    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('80606090-DFBB-44F3-AD30-51840C20C304'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local flagPos = Vec3(-1063.26, 90.08, 759.29) -- x+4.12 y-0.11 z+38.63 to offset the offset
    thisInstance.blueprintTransform.trans = flagPos

end)

-- Oil Plant (B) GUID E228DBEB-2D6B-4D2B-A173-D96F6EA04F0A (Flag GUID 0559C1F9-AC16-45B4-9E98-81E01FDFD44E) -------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('E228DBEB-2D6B-4D2B-A173-D96F6EA04F0A'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-317.167999, 97, 1658.850586),
        Vec3(-308.229492, 97, 1643.792969),
        Vec3(-281.203064, 97, 1664.328247),
        Vec3(-239.878860, 97, 1669.187500),
        Vec3(-239.388672, 97, 1757.655273),
        Vec3(-342.937500, 97, 1767.124023),
        Vec3(-400.335938, 97, 1748.425781),
        Vec3(-402.444366, 97, 1704.965820),
        Vec3(-338.353516, 97, 1645.749023),
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('0559C1F9-AC16-45B4-9E98-81E01FDFD44E'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local flagPos = Vec3(-326.328125, 99.273239, 1692.379883)
    thisInstance.blueprintTransform.trans = flagPos

end)

-- Checkpoint 'Tarmac' (C) GUID 192BC78D-544D-4645-92AD-9A7348CBE50D (Flag GUID CF9C8068-1E27-43BC-A581-82F603C63C85) ---------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('192BC78D-544D-4645-92AD-9A7348CBE50D'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(363.420898, 95.363083, 796.820313),
        Vec3(297.358398, 95.260544, 813.316406),
        Vec3(327.819336, 97.064255, 920.974609),
        Vec3(399.103271, 95.445137, 911.252930),
        Vec3(394.338867, 95.379684, 893.639893),
        Vec3(418.082306, 96.496872, 876.838867),
        Vec3(430.332031, 95.096481, 841.507813),
        Vec3(414.779572, 94.452927, 774.192383)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('CF9C8068-1E27-43BC-A581-82F603C63C85'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    
    local flagPos = Vec3(351.98, 95.471481, 820.74) -- x+1.95 y+0 z-11.26
    thisInstance.blueprintTransform.trans = flagPos

end)

-- Overpass (D) GUID 6863F6D5-6E96-499B-B7A4-FAF1511C8DF3 (Flag GUID 39DC57BA-0B3F-4D1D-9A06-DAF88B3310F8) --------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('6863F6D5-6E96-499B-B7A4-FAF1511C8DF3'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(322.294891, 75, 305.320313),
        Vec3(315.044983, 75, 326.410156),
        Vec3(313.163849, 75, 372.411133),
        Vec3(307.391541, 75, 372.280273),
        Vec3(307.627869, 75, 379.854553),
        Vec3(310.595703, 75, 380.652374),
        Vec3(302.236298, 75, 398.272430),
        Vec3(300.133789, 75, 398.288086),
        Vec3(299.824158, 75, 404.663086),
        Vec3(295.355621, 75, 404.928558),
        Vec3(291.120117, 75, 386.808624),
        Vec3(291.879883, 75, 381.076172),
        Vec3(271.990112, 75, 381.147461),
        Vec3(274.680664, 75, 317.301758),
        Vec3(283.622101, 75, 316.226532),
        Vec3(296.389648, 75, 332.384766),
        Vec3(297.908203, 75, 321.577148),
        Vec3(302.658203, 75, 312.404297)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('39DC57BA-0B3F-4D1D-9A06-DAF88B3310F8'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    
    local flagPos = Vec3(271.54, 98.99, 331.73) -- x-11.65 y+1.05 z-14.04
    thisInstance.blueprintTransform.trans = flagPos

end)

-- TOW emplacement
ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F5D4C3BA-99AC-45C7-8B60-840E46070322'), function(instance)
    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprintTransform = LinearTransform(
        Vec3(0.989639, 0.000000, -0.143577),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.143577, 0.000000, 0.989639),
        Vec3(278.943298, 97.879692, 360.606445)
    )
end)

-- Construction Site (E) GUID 14E0CAFF-1BBB-42C4-BA24-2DB957928A71 (Flag GUID BC84FAAA-9D77-480B-8E0A-376C91757994) ----------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('14E0CAFF-1BBB-42C4-BA24-2DB957928A71'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    points = {
        Vec3(542.759521, 134.867966, -534.539978),
        Vec3(564.038940, 131.721481, -559.520508),
        Vec3(576.331055, 134.896713, -548.813477),
        Vec3(592.774414, 131.874863, -564.755127),
        Vec3(639.024414, 129.409271, -518.144287),
        Vec3(653.855469, 128.473434, -472.582764),
        Vec3(626.985168, 130.723434, -464.618835),
        Vec3(620.877930, 131.543793, -472.885010),
        Vec3(605.105469, 132.532028, -477.941406),
        Vec3(580.429688, 131.318161, -500.550781),
        Vec3(570.106445, 132.085739, -508.256836)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('BC84FAAA-9D77-480B-8E0A-376C91757994'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local flagPos = Vec3(594.1, 131.28, -465.78) -- x+6.15 y+0.21 z+33.91    
    thisInstance.blueprintTransform.trans = flagPos

end)
