-- TODO: Change spawns after placing/removing buildings in MapEditor. Currently at flag pos.

---------------------
-- Infantry Spawns --
---------------------

-- Desert Fort (A) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MP_012 US spawn roughly (-351, y, -118)
-- CQ_T1_Common_Spawnpoints members [5],[6],[7],[15],[16],[17]
-- CQ_T2_Common_Spawnpoints members [0],[17],[18],[19],[20],[21]

-- US

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('6F104E73-0373-445E-8979-1959C986E52A'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_usInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_usInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('423FBDBA-DCA4-4874-84E3-E7EA059800D7'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_usInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_usInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('16F100B4-1627-4533-BD95-5F386F96691D'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_usInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_usInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('6FB4D280-007C-4D5D-92BB-E6075AF2E24B'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_usInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_usInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('70328A39-0B58-45C6-939C-F12E2E154946'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_usInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_usInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('DB624743-2035-4F9C-A37F-1FEB97ECD2C0'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_usInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_usInfSpawn6
end)

-- MEC

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('54C5A733-6F79-42D5-910D-D562C07D21BC'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_mecInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_mecInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('9F28F096-95EA-4D1B-82B5-E2EDA6619D79'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_mecInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_mecInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('16B2FA6E-231D-4E34-ABB5-C4B2CFA85A27'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_mecInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_mecInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('EC483D0D-8F65-4F4E-B5C5-64744ABC5435'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_mecInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_mecInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('3DBD7699-1CEF-4CC5-9415-8E407BFF8F06'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_mecInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_mecInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('74382305-82EB-4873-9C2C-51E18D528F33'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local a_mecInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-1063.26, 90.08, 759.29)
    )
    thisInstance.transform = a_mecInfSpawn6
end)


-- Oil Plant (B) --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MP_012 flag at (-97, y, -116)
-- CQ_T1_Common_Spawnpoints members [3],[4],[18],[19],[20],[21]
-- CQ_T2_Common_Spawnpoints members [1],[2],[3],[22],[23],[24],[25]

-- US

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('AE8E3037-8CE6-4B44-9CC1-E834AFE2B83D'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_usInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_usInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('3E3E7422-B81C-44B7-95EC-0C86B6DFB8E7'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_usInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_usInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('2CB81EC2-51DA-4814-8CEF-1869D27DCCE7'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_usInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_usInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('BB7493D5-37C0-4D6B-9112-04432C412E53'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_usInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_usInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('8F00B5D0-2E83-4452-9DBE-8E63C56CC3AA'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_usInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_usInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('B9DCC375-AE90-4F78-8A3A-169F0CF9A78A'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_usInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_usInfSpawn6
end)

-- MEC

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('A9064854-DB26-4BCC-BCBC-66938B0C3391'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('C5C5FFFC-FC92-41EE-9DC7-450D3E263FD9'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('DFBAE437-4995-4179-B326-710098FDA275'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('FE3055A6-313E-4428-8574-487B014E9878'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('D6E99C0D-EB05-4A65-BA9F-98D617335075'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('32291AB1-C45F-4B7B-9D29-30FB5E0EAE4C'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('0DBBAEB1-0B1E-45BC-80FE-5416DE5892E1'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local b_mecInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(-326.328125, 99.273239, 1692.379883)
    )
    thisInstance.transform = b_mecInfSpawn7
end)


-- Checkpoint 'Tarmac' (C) ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MP_012 flag at (77, y, -121)
-- CQ_T1_Common_Spawnpoints members [0],[1],[2],[12],[13],[14],[22],[23],[24],[25]
-- CQ_T2_Common_Spawnpoints members [4],[5],[6],[13],[14],[15],[16],[26],[27],[28]

-- US

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('382C3B91-4DB0-4E94-8F8D-FE4448026979'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('97AF60AA-53B2-484A-B11F-41C484E343A6'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('97BDDB33-2BB1-4D4B-8389-90E6A6FBD245'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('1AC19B9B-A445-4A73-BC39-6ED87957A705'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('EEE886C4-6F1C-46A6-987C-2A0BA033D01B'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('5B2D5488-AC15-4B5F-8910-D675699139FC'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('FDD728AF-2022-4B49-B31F-9E69B199D68C'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn7
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('887BDDDC-ACFE-4A24-8C79-CA897AF11D27'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn8 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn8
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('AE44BFE9-DB22-44D7-A219-0963C7FF0F42'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn9 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn9
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('771CD207-6F8A-43E3-88A3-11ED676EA5B0'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_usInfSpawn10 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_usInfSpawn10
end)

-- MEC

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('20621743-EEDA-4EDD-8BF8-2D163E5E0CCE'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('968B4137-15E7-44D6-A60D-08157318BA79'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('E6EC6159-9170-4339-964D-A64F58CEB883'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('DA37F2F3-6ADF-436F-8E4A-5F960A8DB0DE'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('042E6238-DA86-4E45-B15D-0847085ADEE0'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('82E6EF10-804E-4B09-8E3D-E73A66CA4ADC'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('AECEBFE0-1430-4B12-BC9D-8696BE7BB335'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn7
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('3A81FE41-A95E-4156-A9CD-D2871BE32947'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn8 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn8
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('BE9BA185-C4C8-4854-BC5E-48E47331B5AE'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn9 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn9
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('59259213-02C7-4A54-A560-F27CE1C55800'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local c_mecInfSpawn10 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(351.98, 95.471481, 820.74)
    )
    thisInstance.transform = c_mecInfSpawn10
end)


-- Objective 'Alter' (D) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MP_012 US spawn roughly (-245, y, 50)
-- CQ_T1_Common_Spawnpoints members [33],[34],[35],[36],[37],[38],[39]
-- CQ_T2_Common_Spawnpoints members [36],[37],[38],[39],[40],[41],[42]

-- US

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('25AD64B1-E297-405A-AC92-EAD87CF470C5'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('AF3D7B46-AB4A-4C89-918A-80C6DB63A74F'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('88F24067-B597-46C3-A0E5-8956652A505E'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('5DDA5C97-294B-4CA8-8386-223AE7422C7B'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('B8E1C095-9D3E-4549-AC48-AE122846B48F'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('625CD4DA-3ABE-4DB3-AB09-492AF2849430'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('780A94EC-A1FF-46BC-B54C-088E37F3DCE6'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_usInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_usInfSpawn7
end)

-- MEC

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('83E4AB64-1902-476B-9FD2-937542982E53'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('208C619A-5E01-4158-8C7E-B700953E7735'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('BEC34544-ADBD-4BB9-B599-9D4CDB705924'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('5A2370F4-2EF9-4D9A-8624-5F1F2E67C50E'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('5CC44CFC-5267-46DE-8050-1B6683F7FB9B'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('856AFD64-6746-41EB-B74E-D1E6ECE7118D'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('488DCF43-9981-4B9C-8268-57B000DE4A31'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local d_mecInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(271.54, 98.99, 331.73)
    )
    thisInstance.transform = d_mecInfSpawn7
end)


-- Construction Site (E) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MP_012 US spawn roughly (89, y, 122)
-- CQ_T1_Common_Spawnpoints members [26],[27],[28],[29],[30],[31],[32]
-- CQ_T2_Common_Spawnpoints members [29],[30],[31],[32],[33],[34],[35]

-- US

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('4EADCF13-D222-47A8-BE8E-8B461CA9C256'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('14813AAC-42A7-42BD-807B-B67EB1F679A7'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('35DCAFDE-95E2-402C-9F67-413C1C583C68'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('12866E42-C666-4472-B672-74FA4CEB6C37'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('D4A6C0D1-DA50-4551-BD56-4D4955536493'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('2A648DC2-9DAE-4F84-B34A-0073CCA45331'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('6B82172C-ED37-406E-98B5-AC646EB5AF4F'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_usInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_usInfSpawn7
end)

-- MEC

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('A4334B94-9B22-4ADA-996B-0037779BA40E'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn1 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn1
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('E944BFAF-F01D-4A93-BE1D-824997F04E22'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn2 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn2
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('9476851C-B0DA-485D-B3D7-D2EE6D53B5E0'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn3 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn3
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('D5C1C2D4-CB4D-4450-9A8E-2F8257D585BF'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn4 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn4
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('E60FB306-2E5D-4ACC-83CB-3A7FF075F743'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn5 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn5
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('CA169FDF-9946-4B7C-B512-64DD4AE7E3DB'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn6 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn6
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('3700E975-4531-422A-A271-D55CF1C7B4D9'), function(instance)
    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    local e_mecInfSpawn7 = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(594.1, 131.28, -465.78)
    )
    thisInstance.transform = e_mecInfSpawn7
end)

--------------------
-- Vehicle Spawns --
--------------------

require '__shared/MpPresets/ThunderRun_CQL/MapModifications/FirestormCqlCreateVehicleFunc'

ResourceManager:RegisterInstanceLoadHandler(Guid('60106974-DD7D-11DD-A030-B04E425BA11E'), Guid('60106975-DD7D-11DD-A030-B04E425BA11E'), function(instance1)
    ResourceManager:RegisterInstanceLoadHandler(Guid('CF5166FD-6B60-11E0-8ACE-C75FA07B1C42'), Guid('E7A99B55-B5BD-C101-2384-97458D4AC23C'), function(instance2)
        ResourceManager:RegisterInstanceLoadHandler(Guid('2EA804A7-8232-11E0-823A-BD52CA6DC6B3'), Guid('D68E417F-6103-5140-3ABC-4C7505160A09'), function(instance3)
            ResourceManager:RegisterInstanceLoadHandler(Guid('1A52E780-FEF6-11DF-B32D-B2D8A97C362D'), Guid('4547A158-030C-B7B4-9043-4ADB726FAF8C'), function(instance4)
        
                local t90Bp = VehicleBlueprint(instance1)
                local growlerBp = VehicleBlueprint(instance2)
                local buggyBp = VehicleBlueprint(instance3)
                local sedanBp = VehicleBlueprint(instance4)
            
                -- Desert Fort (A) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                -- 5* T90, 2* VDV Buggy
            
                local t90Spawn1 = LinearTransform(Vec3(-0.152106, 0.032930, 0.987816), Vec3(-0.012861, 0.999294, -0.035293), Vec3(-0.988281, -0.018073, -0.151575), Vec3(-1010.712891, 88.614471, 791.417847))
                local t90Guid1 = Guid('VIC0000A-0000-0000-0000-000000000000')
                local t90Spawn2 = LinearTransform(Vec3(-0.140273, 0.037250, 0.989412), Vec3(-0.010141, 0.999186, -0.039055), Vec3(-0.990061, -0.015512, -0.139781), Vec3(-1009.880798, 88.304749, 779.738281))
                local t90Guid2 = Guid('VIC0000B-0000-0000-0000-000000000000')
                local t90Spawn3 = LinearTransform(Vec3(-0.998137, 0.009091, -0.060334), Vec3(0.008994, 0.999958, 0.001888), Vec3(0.060349, 0.001342, -0.998177), Vec3(-1095.048828, 86.875092, 794.875671))
                local t90Guid3 = Guid('VIC0000C-0000-0000-0000-000000000000')
                local t90Spawn4 = LinearTransform(Vec3(-0.131176, 0.005508, -0.991344), Vec3(0.002411, 0.999983, 0.005237), Vec3(0.991356, -0.001703, -0.131188), Vec3(-1138.451172, 87.244278, 758.978516))
                local t90Guid4 = Guid('VIC0000N-0000-0000-0000-000000000000')
                local t90Spawn5 = LinearTransform(Vec3(-0.131176, 0.005508, -0.991344), Vec3(0.002411, 0.999983, 0.005237), Vec3(0.991356, -0.001703, -0.131188), Vec3(-1140.520508, 87.230553, 748.164063))
                local t90Guid5 = Guid('VIC0000O-0000-0000-0000-000000000000')
            
                local buggySpawn1 = LinearTransform(Vec3(-0.990438, 0.007235, -0.137769), Vec3(0.004683, 0.999812, 0.018839), Vec3(0.137879, 0.018014, -0.990285), Vec3(-1123.425903, 87.082329, 779.523315))
                local buggyGuid1 = Guid('VIC0000D-0000-0000-0000-000000000000')
                local buggySpawn2 = LinearTransform(Vec3(-0.986479, 0.006036, -0.163778), Vec3(0.003370, 0.999857, 0.016552), Vec3(0.163854, 0.015776, -0.986359), Vec3(-1119.864746, 87.083076, 783.049744))
                local buggyGuid2 = Guid('VIC0000E-0000-0000-0000-000000000000')
            
                FirestormCqlCreateVehicle(t90Bp, t90Spawn1, t90Guid1, 61500, TeamId.Team2, true)
                FirestormCqlCreateVehicle(t90Bp, t90Spawn2, t90Guid2, 61501, TeamId.Team2, true)
                FirestormCqlCreateVehicle(t90Bp, t90Spawn3, t90Guid3, 61502, TeamId.Team2, true)
                FirestormCqlCreateVehicle(t90Bp, t90Spawn4, t90Guid4, 61513, TeamId.Team2, true)
                FirestormCqlCreateVehicle(t90Bp, t90Spawn5, t90Guid5, 61514, TeamId.Team2, true)
                FirestormCqlCreateVehicle(buggyBp, buggySpawn1, buggyGuid1, 61503, TeamId.TeamNeutral, false)
                FirestormCqlCreateVehicle(buggyBp, buggySpawn2, buggyGuid2, 61504, TeamId.TeamNeutral, false)
            
                -- Oil Plant (B) --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                -- 2* Civilian Car
            
                local b_sedanSpawn1 = LinearTransform(Vec3(0.551764, -0.019649, -0.833769), Vec3(0.010353, 0.999807, -0.016711), Vec3(0.833936, 0.000589, 0.551861), Vec3(-343.208252, 98.574158, 1660.414673))
                local b_sedanGuid1 = Guid('VIC0000F-0000-0000-0000-000000000000')
                local b_sedanSpawn2 = LinearTransform(Vec3(0.499813, 0.016870, -0.865969), Vec3(-0.000128, 0.999812, 0.019404), Vec3(0.866134, -0.009587, 0.499721), Vec3(-341.629456, 98.576019, 1657.838257))
                local b_sedanGuid2 = Guid('VIC0000G-0000-0000-0000-000000000000')
            
                FirestormCqlCreateVehicle(sedanBp, b_sedanSpawn1, b_sedanGuid1, 61505, TeamId.TeamNeutral, false)
                FirestormCqlCreateVehicle(sedanBp, b_sedanSpawn2, b_sedanGuid2, 61506, TeamId.TeamNeutral, false)
            
                -- Checkpoint 'Tarmac' (C) ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                -- 2* Civilian Car
            
                local c_sedanSpawn1 = LinearTransform(Vec3(-0.702310, -0.028955, -0.711282), Vec3(-0.049461, 0.998743, 0.008180), Vec3(0.710151, 0.040926, -0.702859), Vec3(348.360535, 95.193230, 843.761292))
                local c_sedanGuid1 = Guid('VIC0000H-0000-0000-0000-000000000000')
                local c_sedanSpawn2 = LinearTransform(Vec3(0.999854, -0.014587, 0.008881), Vec3(0.014527, 0.999871, 0.006860), Vec3(-0.008980, -0.006730, 0.999937), Vec3(341.504852, 95.121017, 834.597290))
                local c_sedanGuid2 = Guid('VIC0000I-0000-0000-0000-000000000000')
            
                FirestormCqlCreateVehicle(sedanBp, c_sedanSpawn1, c_sedanGuid1, 61507, TeamId.TeamNeutral, false)
                FirestormCqlCreateVehicle(sedanBp, c_sedanSpawn2, c_sedanGuid2, 61508, TeamId.TeamNeutral, false)
            
                -- Objective 'Alter' (D) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                -- 2* Growler ITV
                -- Growler ITV existing at (-211,125,49)
            
                local d_growlerSpawn1 = LinearTransform(Vec3(0.086971, 0.030058, -0.995757), Vec3(0.010412, 0.999463, 0.031079), Vec3(0.996156, -0.013071, 0.086611), Vec3(284.326569, 97.669113, 359.913696))
                local d_growlerGuid1 = Guid('VIC0000J-0000-0000-0000-000000000000')
                local d_growlerSpawn2 = LinearTransform(Vec3(0.147082, 0.018261, -0.988956), Vec3(0.012030, 0.999723, 0.020249), Vec3(0.989051, -0.014875, 0.146822), Vec3(284.044342, 97.597496, 363.171600))
                local d_growlerGuid2 = Guid('VIC0000K-0000-0000-0000-000000000000')
            
                FirestormCqlCreateVehicle(growlerBp, d_growlerSpawn1, d_growlerGuid1, 61509, TeamId.TeamNeutral, false)
                FirestormCqlCreateVehicle(growlerBp, d_growlerSpawn2, d_growlerGuid2, 61510, TeamId.TeamNeutral, false)
            
                -- Construction Site (E) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                -- 2* Civilian Car
                -- VDV Buggy existing at (196, 122, 121)
            
                local e_sedanSpawn1 = LinearTransform(Vec3(0.333944, 0.080649, 0.939137), Vec3(-0.028739, 0.996741, -0.075376), Vec3(-0.942155, -0.001819, 0.335173), Vec3(594.159180, 131.338791, -497.449127))
                local e_sedanGuid1 = Guid('VIC0000L-0000-0000-0000-000000000000')
                local e_sedanSpawn2 = LinearTransform(Vec3(0.451344, 0.063084, 0.890117), Vec3(-0.025341, 0.998002, -0.057880), Vec3(-0.891990, 0.003567, 0.452041), Vec3(595.521362, 131.673874, -493.656830))
                local e_sedanGuid2 = Guid('VIC0000M-0000-0000-0000-000000000000')
            
                FirestormCqlCreateVehicle(sedanBp, e_sedanSpawn1, e_sedanGuid1, 61511, TeamId.TeamNeutral, false)
                FirestormCqlCreateVehicle(sedanBp, e_sedanSpawn2, e_sedanGuid2, 61512, TeamId.TeamNeutral, false)            
        
            end)
        end)
    end)
end)

-- Find IndexInBlueprint indices

--[[Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil or string.find(partition.name, 'mp_012') == false then
        return
    end

    local loadedInstances = partition.instances

    for _, instance in pairs(loadedInstances) do

        if instance:Is('GameObjectData') then

            local thisInstance = GameObjectData(instance)

            if thisInstance.indexInBlueprint ~= 65535 and thisInstance.indexInBlueprint ~= 0 then
                print('IndexInBlueprint index '..thisInstance.indexInBlueprint)
            end

        end

    end

end)]]