---------
-- OOB --
---------

-- For US (GUID 107682E8-2D5E-4EF4-987C-587FECA9B546) -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('061ABAC4-7D42-423F-B8E1-A4789AB79016'), Guid('107682E8-2D5E-4EF4-987C-587FECA9B546'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-2069.911865, 90.388512, -999.320435),
        Vec3(-2693.773682, 74.798660, -402.875671),
        Vec3(-941.410156, 96.688324, 1943.033203),
        Vec3(-131.768555, 105.278122, 2228.753906), -- Common (N)
        Vec3(221.783737, 116.967110, 1704.198486), -- Common (N)
        Vec3(443.151093, 103.864059, 1726.559570), -- Common (N)
        Vec3(930.909912, 103.558380, 1211.969727), -- Common (N)
        Vec3(1065.031982, 134.299637, -289.988281), -- Common (N)
        Vec3(690.580078, 118.728317, -837.725586),
        Vec3(-186.247955, 122.662560, -179.989075), -- Common (MOUNTAINS)
        Vec3(-71.912071, 116.878433, -2.030560), -- Common (MOUNTAINS)
        Vec3(-17.760878, 109.547195, 368.242279), -- Common (MOUNTAINS)
        Vec3(146.945328, 95.944176, 586.379883), -- Common (MOUNTAINS)
        Vec3(-493.620392, 90.103004, 915.332092), -- Common (MOUNTAINS)
        Vec3(-840.219666, 104.079849, 868.670044), -- Common (MOUNTAINS)
        Vec3(-628.591187, 112.227951, 417.284882),
        Vec3(-1119.941528, 110.083817, -431.093750)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

-- For MEC (GUID 28BDA22D-1212-4A41-A643-E0215D834F42) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('061ABAC4-7D42-423F-B8E1-A4789AB79016'), Guid('28BDA22D-1212-4A41-A643-E0215D834F42'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-988.837585, 126.224678, -1390.169312),
        Vec3(264.420746, 112.333000, -1443.980713),
        Vec3(1065.031982, 134.299637, -289.988281), -- Common (N)
        Vec3(930.909912, 103.558380, 1211.969727), -- Common (N)
        Vec3(443.151093, 103.864059, 1726.559570), -- Common (N)
        Vec3(221.783737, 116.967110, 1704.198486), -- Common (N)
        Vec3(-131.768555, 105.278122, 2228.753906), -- Common (N)
        Vec3(-1487.871948, 75.086723, 757.384644),
        Vec3(-1066.978394, 90.812767, 223.874817),
        Vec3(-890.487976, 83.735275, 485.128113),
        Vec3(-875.391296, 90.376869, 751.975220),
        Vec3(-840.219666, 104.079849, 868.670044), -- Common (MOUNTAINS)
        Vec3(-493.620392, 90.103004, 915.332092), -- Common (MOUNTAINS)
        Vec3(146.945328, 95.944176, 586.379883), -- Common (MOUNTAINS)
        Vec3(-17.760878, 109.547195, 368.242279), -- Common (MOUNTAINS)
        Vec3(-71.912071, 116.878433, -2.030560), -- Common (MOUNTAINS)
        Vec3(-186.247955, 122.662560, -179.989075), -- Common (MOUNTAINS)
        Vec3(-50.178631, 116.822327, -386.094299)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)