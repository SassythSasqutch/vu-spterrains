-- Courtesy of keku645

-- Remove doors, invisible walls --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('43213EF7-7041-47AD-826B-A548739EF950'), function(instance)
    --print('invisible wall excluded...')
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('B065B4D8-35FF-4BE4-9661-2FB851218075'), function(instance)
    --print('DoorLuxury_01_door224 excluded...')
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('32130D4C-F959-45D9-B36D-94F8946BCB17'), function(instance)
    --print('DoorLuxury_01_door224 excluded...')
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('7C8FB73D-CCA9-491B-A337-5B21298046C0'), function(instance)
    --print('DoorLuxury_01_door224 excluded...')
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('45C1E978-3755-46ED-BCAC-3D9C82579CAA'), Guid('E20C1C9B-0C46-4E2A-87D0-AF011520801F'), function(instance)
    --print('Door_01 excluded...')
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

-- Allow the Basement_Logic WorldPartData to be loaded ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Exclude AlternateSpawnEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('7C3994B3-B0CC-E091-E3E9-2ECDF5900494'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('5AC74FC0-C476-6846-4B02-4BCFB4334189'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('1D7D7F57-25BC-EFBA-69C9-738DA6FE8364'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('260FDC11-8298-C025-3DF8-C1BF5EE26341'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('7A3231BF-0023-8040-8A1F-8640390B08B1'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('AD70ADDE-63DD-15E7-F6BB-42E14E8DF407'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('09394EB1-F0BB-C09C-8CA1-F9EB20FAB7DE'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4F52702F-B288-F428-ABA0-5FEAA326C3F8'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('61EB50B3-1FEB-EB84-3020-0B7CB069DA2B'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('9394B77A-FC9C-8F39-E0F3-8FE4F8C9A332'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E95246F2-35B2-9A5F-3918-B7FEFCBCE647'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('56699DFC-1D97-870A-AF24-A395765A00A4'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('494ADDDB-2B71-AE03-DDC8-BBECE1B475A5'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('3F1F5EB9-8F00-87BD-F116-98A5516CE378'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E8E26CAF-079B-4092-1D1A-BCBE938AACFC'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('3B080619-0D8A-6EE9-5D42-F78FF906B708'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('80401A8A-6C85-9D3A-D755-78CBF6B9455B'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('B83B6F4A-9403-3850-4E7C-D663B2A5038D'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('490231A1-34D6-F339-E818-68635D8A1E7A'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('437F9C17-BEE2-1F57-D732-E7F3963EAB71'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('01371076-A935-CDC0-8024-9FDA8822756D'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('EA615285-86D5-F285-CB23-CB3139530D39'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('70DA012F-6056-B2AA-B06D-2FF7C4DD397E'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('48D4006F-9C70-C65F-FEAF-C9AB6368D384'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('F1E15012-33A6-FD33-FE67-768309D93E72'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4030BED7-BBEB-834D-95E3-10F91B57C5AD'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('0EC2631A-C71B-B6BC-23C7-CD21E88F0247'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4E1699CF-F1C6-CFFA-D605-AF8E01FE08F7'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('8FDA94FC-7334-5210-2745-627E0E9B6D04'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('C4BEA05E-C462-2887-F8B3-2DD2051251FC'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('AlternateSpawnEntityData excluded...')

end)

----------------------
-- Exclude CharacterSpawnReferenceObjectData --
----------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E8B76A44-A203-45A4-9C41-6884D296519E'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('A6AF3D8F-0C00-43A3-8BFD-C0B77C716A11'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('A859081B-F7E3-43CB-BACA-EC710542ABE9'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('66198EC3-DEAE-4F51-A840-DE90B61B581E'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('6ADEE321-3E98-436B-8AD7-3DA67B05500D'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('FD33B646-8DBF-468A-9B22-C6728967B2C7'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('FCFFFAD1-D684-4810-A5CA-AFF2D416618F'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('D2DE630C-5FD3-44F5-9576-DB9234F01675'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('EDEA4A59-BF02-499D-9462-C2D8A2900459'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('98F38670-9FD4-49DE-8896-E7C52E29DADB'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('F84A7852-9162-4213-B644-339B5260D1BE'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('52A26AC8-72CC-4F16-B531-A04993D06906'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('87832633-D3C9-411D-8F4F-1B9BF394DA92'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('AD5296F9-53AD-4937-B9FF-0A2EDDD43B6D'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E25E37D5-E9AC-41CF-B4E4-24B88FDA77D6'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('5983710B-0E63-4568-BECE-A5C360C69B03'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('EDB72BFE-054F-4643-880C-85EC4E146901'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('13067A57-3F3A-4BBD-A5E3-8BCF770FA49B'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('0E0CD819-14DC-4173-95CA-AFA03BF1D3AF'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E1C9C0F3-FD69-4067-9D35-FAF9EC9F7244'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('3136CF91-BACF-4B2B-AF49-5C618D5308A1'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('13DA2798-3E0E-44F0-8A01-251E36CAE26A'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('8A470189-0969-45B4-8D09-94057E796429'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('85820ACF-4731-4868-AFD6-EE20F3CAF671'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('BAF5987B-2A73-4825-AC02-816B0547BD85'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('5953D8C3-4864-45EA-A31B-021E5DD17420'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('77416E1C-A716-4D2E-9196-CF26E74678D4'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('3C7DED4E-8B84-4D1E-BE18-DEF5569836E1'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('FC78A4F5-6887-4D03-86E6-46A0D8BC15E8'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('41DB69B3-1A48-4A11-8DC2-8BAEDF80F79F'), function(instance)

    local thisInstance = CharacterSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('AlternateSpawnEntityData excluded...')

end)

-- Exclude LookAtEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('04651953-0934-4CEB-95FF-2E3240B15A53'), function(instance)

    local thisInstance = LookAtEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('LookAtEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('68FE81AA-55FE-4480-BA5A-71FBBCD5FBEC'), function(instance)

    local thisInstance = LookAtEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('LookAtEntityData excluded...')

end)

-- Exclude LookAtTriggerEntityData


ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('2B21313C-B0D4-4412-A1CF-32767C49C7FC'), function(instance)

    local thisInstance = LookAtTriggerEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('LookAtTriggerEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('76F3AD19-6E23-4B6D-94D2-AD31B58867C4'), function(instance)

    local thisInstance = LookAtTriggerEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('LookAtTriggerEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('F23CB0E9-5486-4F6C-8957-65C0F2707402'), function(instance)

    local thisInstance = LookAtTriggerEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('LookAtTriggerEntityData excluded...')

end)

-- Exclude VolumeVectorShapeData

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('C22F0AE5-D5CC-42DB-AD28-FD19AEB93724'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	--print('VolumeVectorShapeData excluded...')

end)

-- Exclude WaypointsShapeData 

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('48B479B6-7038-4A82-AFFF-263CA3259FF1'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('126537C0-9427-489F-AC7A-7E1DD4E5D40B'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('CB79574A-4644-4B24-8FC0-09B0E3DB39F6'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('1BE15BCD-3858-49AF-8E92-AD485D945B2F'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('B4B1E1E1-41EA-430B-B625-6A3C34B90B7D'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('7725DC53-D284-4F5F-83F0-0B22BA659A2E'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('86FB5971-5B71-4BED-AE5D-FD9445D1444B'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('7D561D7F-9928-41E9-A697-47E36F859FB9'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('6D703787-A05F-4032-AA51-BA133C70B02E'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('2DD4507C-5B7F-47F0-B9F5-9D4F5DAE02D3'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('BB6C8729-C6B5-4E99-BE20-D44128641CF4'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('DE773CB9-4125-4854-8F14-651FC529F4E6'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4022D46C-3582-44B8-85F3-005D0D26CFE3'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('9E5187B5-2669-48F5-9A46-654251B5085E'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4C9CD8E6-646C-4D00-BD95-5FA1F48869C9'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E5CFAFFD-E53C-4F13-92BA-71A222D46217'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('65DAD002-4931-424D-A0BD-56A06F6E3D70'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E4BC96DD-EDA0-4FCE-AFD3-A2BDB7244268'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('8A85BB35-36AC-4341-BD54-0B1A006A8CF9'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('03A2E242-586F-47A8-B2F6-5B21D4F37FF6'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('E2474B09-F61C-4807-813F-712B5C06CE06'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('105975FF-C1EF-4C5C-B136-94E91EEF68BA'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('04E1F657-8D6C-4707-B075-8A6FCAB9D9C0'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('5DDD0CC7-F689-4307-B1CF-1C965002BA01'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('2FC84A59-2B04-49D2-B6EA-2E11BD26F2A0'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('B5E09D48-90F0-47B0-975C-B8776DD3AD62'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('9A466229-DAA8-4EE6-9DF4-D66FB3A8A52B'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('249ECCE7-940B-42C5-88E2-9032738E6A82'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('DAB67824-9E2E-4343-9EDE-FF28AF81DE81'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4842B31E-0FBB-41E1-B39B-935234B7012E'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('5CCB4242-3A12-49A1-88BF-8C8081F0DAA9'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('274C965B-1B51-4F4B-8252-D6C90CF81970'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('0B52B100-B658-4B42-B790-FD4683C830BF'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('2776D6C7-2569-4D16-8590-A13343768D2F'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('090D35EF-ADCF-4496-A838-63891F00A252'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('04A34793-4856-47C6-936C-BDF05ED4EB63'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('C363FE21-F724-4A74-9CDC-41DF76639137'), function(instance)

    local thisInstance = WaypointsShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()
	thisInstance.waypoints:clear()
	--print('WaypointsShapeData excluded...')

end)

-- Exclude OOBData

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('824755DF-0C08-4566-BA98-C918098DDF27'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb1 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb1
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('FB266F14-0EF1-4E61-80D2-DC7407533A90'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb2 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb2
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('5AC5DBB5-86E5-492C-8B0D-D14D71410BB6'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb3 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb3
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('6F3F5064-6615-4BE7-B013-79BA7A738C13'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb4 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb4
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('6C7DDEE8-BE1C-4616-9A3E-6388F94FA1DB'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb5 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb5
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('CFA901AD-FEEC-416A-9F25-2905332CC685'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb6 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb6
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('3540BF52-A31B-43AA-9CF6-36F270AF4F30'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb7 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb7
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('A8E76E41-C41A-4B38-82D1-8A79353AB2F5'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb8 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb8
	--print('OBBData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('A643F437-65B5-42F6-9EDB-87F2939B1D9F'), function(instance)

    local thisInstance = OBBData(instance)
    thisInstance:MakeWritable()
        local obb9 = LinearTransform(
        Vec3(0, 0, 0),
        Vec3(0, 1, 0),
        Vec3(0, 0, 0),
        Vec3(0, 0, 0)
    )
	thisInstance.transform = obb9
	--print('OBBData excluded...')

end)

-- Exclude WeaponUnlockPickupEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('16ED2145-2ACA-46D6-AF52-FCFD501A0B6E'), function(instance)

    local thisInstance = WeaponUnlockPickupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('WeaponUnlockPickupEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('16C96FE8-5C68-42F1-A7D0-E04AE332F849'), function(instance)

    local thisInstance = WeaponUnlockPickupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('WeaponUnlockPickupEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('21354054-1276-4365-BA84-78E8C011061A'), function(instance)

    local thisInstance = WeaponUnlockPickupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('WeaponUnlockPickupEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('4681468B-8505-43CF-B061-A5A59D69E03C'), function(instance)

    local thisInstance = WeaponUnlockPickupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('WeaponUnlockPickupEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C3D78770-B4E0-4FE2-83F5-AD3FDABDF375'), Guid('03FA3A00-A522-4258-A307-5DEE7B313856'), function(instance)

    local thisInstance = WeaponUnlockPickupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('WeaponUnlockPickupEntityData excluded...')

end)

-- Exclude DeathAreaTriggerEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('0B1172E9-AC08-4202-BD54-BC5A73700411'), function(instance)

    local thisInstance = DeathAreaTriggerEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('DeathAreaTriggerEntityData excluded...')

end)

-- Exclude EventAndGateEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('9EF42071-5A5F-4FAB-A729-D387A3C2D050'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('2C394279-E5A2-4625-A35A-6AFC27EA23D8'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('F0CBF64F-345C-4F02-A810-BDA6CA3ED0A2'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('10DFDA4E-73F1-4611-969D-7E9B445E9653'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('551170C7-42D8-4514-93E3-2B582BD2B639'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('8AC68D88-432E-4E59-A0FA-140889C4AC14'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('5DFFD1BB-4A0E-40CF-BB31-63408D3CD174'), function(instance)

    local thisInstance = EventAndGateEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.eventCount = 0
	--print('EventAndGateEntityData excluded...')

end)

-- Exclude LogicReferenceObjectData

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('1233A5FC-A70B-432E-93C9-45987728EEF8'), function(instance)

    local thisInstance = LogicReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('LogicReferenceObjectData excluded...')

end)

-- Exclude MessageEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('D9C953F1-D4CE-4A54-A8E8-4EA49A41ED94'), function(instance)

    local thisInstance = MessageEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('MessageEntityData excluded...')

end)

-- Exclude PatrolOrderEntityData

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('A71C8C62-630A-446F-8CBA-66FAA36FBDF6'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('A3D2D534-F62D-4832-926A-7CD5A61753B1'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('13945D2C-B5FA-4A7E-9B7B-44402BEE42EF'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('85E57E32-043C-4E04-967B-86A9D9373208'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('DCAED72C-B917-401F-9A40-1943D0DA8116'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('D885092F-59DF-48BD-B0C5-BC30EE14EB6A'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('F79243D3-CCA5-49AD-B540-42971DCD0F18'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('4D62A5B7-98C7-46B1-8297-86131DC35351'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('51A8A459-B1A9-4381-86BD-6F8B8B915060'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('FBD4ED94-A673-4181-B2B0-20BC5D017E17'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('1FE8A88E-3651-4D48-8AC2-3EE558578FE2'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('151629E6-3DC4-4451-B277-94D88632DEF9'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('444A7D71-23FD-4F54-8ACF-59584A90C654'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('965B48B4-4917-4247-B1CA-1CD96492D32D'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('008BA78A-EE43-4BFB-AE49-2DC4F0B85A59'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('14462B91-1CE1-4FB1-9ECF-AD9BA82EC7CD'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('DD376692-2A48-4CC0-93FA-E076F824ED92'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('51C4B06E-FF1D-41B7-AB62-C98C91F2825B'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('FE1CDEB4-4C2C-40E8-BAF4-6D9AB83F2541'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('A566B6B3-679B-4367-9988-560F8FA58403'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('492E1652-1EC2-49DC-B1D8-EBA55E95C89C'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('6FAE75B7-2B40-4882-A651-A94C0A778AFA'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('4E5E8044-E74D-4034-AFC0-65F86ADEB39C'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('8B67E5F4-659B-4E40-A1D1-CAB55363BA93'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('E1DA4F52-748E-4E0D-A1C1-7E4D79969594'), Guid('D03A4F65-9EBA-4145-A6B2-15468CDF5EB8'), function(instance)

    local thisInstance = PatrolOrderEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
	--print('PatrolOrderEntityData excluded...')

end)

-- Exclude ReferenceObjectData

ResourceManager:RegisterInstanceLoadHandler(Guid('45C1E978-3755-46ED-BCAC-3D9C82579CAA'), Guid('E20C1C9B-0C46-4E2A-87D0-AF011520801F'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('Door_01...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('45C1E978-3755-46ED-BCAC-3D9C82579CAA'), Guid('A66B7576-9842-4650-977A-163844C64687'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('LadderStep_01...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('7AE09D22-86FD-43C3-ABCE-660B784EDB1E'), Guid('355AD093-EC8E-4764-9005-28EB5724F9A3'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('DoorLuxury_01_door224...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('7AE09D22-86FD-43C3-ABCE-660B784EDB1E'), Guid('A84C7078-940D-47C3-A236-C05A0725800C'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('DoorLuxury_01_door224...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1D8D8B71-9303-44ED-A04D-1609BACE3E1B'), Guid('43A9C8E5-3FAD-4D23-B26D-4E3368EFAB2F'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('GateHouseGateOpenClose...')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1D8D8B71-9303-44ED-A04D-1609BACE3E1B'), Guid('B53A0D78-76F0-4381-852B-8F9F0DB7DBB4'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
	--print('DoorLuxury_01_door224...')

end)

-- Improve the visual environment -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('1DF4DCD7-880C-4C5A-B3E7-6411337F4572'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('290F76F3-F04B-4C12-90E0-A025AE53E7D4'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('2FEE3596-90FE-4C77-84E1-F587AC760B2F'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('D225E8DD-2BEF-4101-B974-C05B41B39443'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('6B4A55AE-AE08-456B-9A02-4491A11EDC00'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('68D18DAE-4E69-492A-A992-802F68F74857'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('DA77DADD-D867-473A-BCA4-1EEDA22940AB'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('7B81AFB6-6E56-4BBE-B803-8545185EC729'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('37D30DF9-7F1E-416D-A7EB-F1A8E1ADA281'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6B420080-18CB-11E0-B456-BF5782883243'), Guid('BC792517-E150-4DC0-96F4-1BBF4271B5D9'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('2259EFB0-DBF5-11E0-8D74-C56D7052CE5F'), Guid('A980E6CF-0F80-4058-8B4B-3F81B3AD8CF1'))) -- VisualEnvironmentBlueprint from the SP_Villa/Lighting/SP_010_Poolhouse_Cutscene_01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SKYBOX REPLACED YOOOOOOOOOOOOOO.')

end)