-- By default, all WorldPart instances are excluded: with singleplayer and coop maps, they are often bad news for logic etc.
-- This acts as a 'whitelist' for WorldPart instances. As such, the WorldPartReferenceObjectData GUIDs in this list are allowed to load, and all others aren't.

-- The method for compiling this list was simple - use Powback's EBX viewer to look through the 'Objects' list of the LevelData in question 
-- and see which WorldPartReferenceObjectData instances sounded important to the MP experience (e.g. props, buildings, etc.). 
-- Often, there were more WorldPartReferenceObjectData contained in SubWorlds (for coop, called something like AB01_Art_Parent; for SP, something like Bank_SUB, but usually named after the SubWorld).
-- I may have missed some out, or some may be unimportant or undesired for what you're doing, so feel free to remove them from this list.

-- TODO: Look into global sound, sound schematics, etc. causing client CTD

approvedWorldPartRefGuids = {
    -- CustomLevelLoader ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '93842B6D-0185-483D-9EF5-AD2B47BDABDE',
    -- Hit and Run COOP_002 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '88312BCE-30C2-0B8B-4E77-40FBF3524B15', -- Default (terrain)
    '928D0DAD-A194-4180-91D2-FD8FEE865FB3', -- Sound
    '9ABE0646-ED84-477E-BAD1-B80B56106C1F', -- Sound_Schematic
    '40DBA69B-4266-47BE-8227-B9BCB829ABF7', -- AB01_Sound
    '6A1C944F-3E21-4841-A649-B9A3F7B6828F', -- AB01_Sound_Schematic
    '344E873B-FBDE-4D0A-9C77-F5F1737BA71F', -- AB01_Art_FloorStructure
    'E3938BC9-59B3-4C3A-8288-B5DA76C5962C', -- AB01_Art_Objects
    '04767542-F7DE-48E7-9964-352ABA396CE1', -- AB01_Art_Fx
    '35ADC061-7BD9-4104-92D0-4EDB8BE25B3A', -- AB01_Art_Light
    '2247E703-0D9E-4E9A-81D7-959A368935A9', -- AB01_Art_Shell
    '49ACAB5F-AA62-441F-A983-5628C905EA74', -- AB01_Art_Backdrop
    '11C489D9-3FAD-4932-9E99-89A0F59F7F24', -- AB02_Sound
    'F6B4C2C2-66AC-46F5-979B-AD15DC1B53C7', -- AB02_Sound_Schematic
    '309AA544-42D6-4069-8CE2-156678941C4A', -- AB02_Art_FloorStructure
    '9A260E1C-45A1-468E-9515-A17AC2F222C1', -- AB02_Art_Objects
    '8514CFCA-3E2D-4CA1-8ED5-DDED0E604048', -- AB02_Art_Fx
    'D5F0F02C-331C-4022-A07A-BF30E1447345', -- AB02_Art_Light
    'B6584282-2652-43D6-A635-7B9F62ECE00D', -- AB02_Art_Shell
    '07A46CAE-E16C-42A0-A120-C0DAC99B0FCE', -- AB03_Sound
    'DADE826E-3F37-454F-AC7E-BA19DDA27F8C', -- AB03_Sound_Schematic
    'DE056525-A452-4CD5-8C3A-BC855DEBC7FD', -- AB03_Art_FloorStructure
    '295E3AA3-ED74-4463-B411-307DE1D3B908', -- AB03_Art_Objects
    '86BBD1A5-8A3C-4CD7-8615-34F71D16CBD2', -- AB03_Art_Light
    'FF537C55-B4BD-48E0-AD13-2276C9C72A6F', -- AB03_Art_Fx
    '0128A326-FCC4-40E5-ADC8-9C3FF2A4C151', -- AB03_Art_Shell
    '85484594-95D5-4BA0-80DD-3CE13BD1D7C5', -- AB03_Art_Cars_Spotlight
    '26CD4532-8EF4-46D6-803E-583D8DFA5825', -- AB04_Art_Objects

    -- Drop 'Em Like Liquid COOP_003 ------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '3F90F5EF-774C-4B82-96B5-7DEBBD323B86', -- Default (terrain)
    '546FB037-F783-481D-9D21-D9C09B8F89DA', -- SoundAreas
    'A43492E7-527A-49AA-AC5C-103C2FBB2EB1', -- SoundAreas_Schematic
    '1873E3A0-5DE4-4239-AD68-CA24094090DE', -- Art_Backdrop
    'F756F79C-E9D9-4A76-8134-4C3BBE9D6A49', -- Art_AlwaysStreamedIn
    'C76D7D1D-94E1-4A41-9BEB-60DF7158A579', -- AB00_Sound
    '03F82D8F-9897-4E04-BDF7-12C5E94861CF', -- AB00_Sound_Schematic
    'E4FB7EC5-8406-4DE0-8C8D-C58832CEFDF4', -- AB00_Art_Buildings
    'D8301716-3438-4422-A3F6-547A9EE387F2', -- AB00_Art_Objects
    'B11D5F1E-52D7-4DAB-955B-B4453B722264', -- AB00_Art_Roads
    '16DB8F4C-D4F7-4195-A1A2-52EF3BA50C7A', -- AB00_Art_Vegetation
    'C46A629C-1694-45A2-8292-FFC3C96C53AA', -- AB00_Art_Light
    '1D11EFF7-225C-406A-9190-59646D248D2C', -- AB00_Art_Backdrop
    'B4699025-42C7-4BFF-AE6A-66A55600447A', -- AB00_Art_Sewer_Objects
    '8D290A3E-C277-45E8-9147-62F9BEFB4929', -- AB00_Art_Sewer_Buildings
    'C158E83E-7697-405B-82F3-18CC3095237C', -- AB00_Art_Sewer
    '70A38B60-3D15-4AA9-B6A5-68249610F135', -- AB00_Art_Sewer_Light
    'DBC2E892-5C4B-4C91-B0B5-422DACBFB916', -- AB00_Sewer_Sound
    '5B7439DB-F52A-400F-8749-620C950EDEA8', -- AB00_Sewer_Sound_Schematic
    '29FA1B87-EEB3-4E5B-8069-2B0932970A3D', -- AB01_Sound
    'D469FD10-847B-4B5B-A0BE-68BF5B8BFE45', -- AB01_Sound_Schematic
    '19F3469D-9DF9-4E92-B621-87AEA0E8E382', -- AB01_Art_Buildings
    'BC0C33ED-A236-4E1A-8DE8-D13FFAA12CBA', -- AB01_Art_Objects
    'B449CCD0-ABA5-404A-863F-8E95DBA9916F', -- AB01_Art_Light
    'AFEE1A02-4949-423B-B228-3B4B8EC7949D', -- AB01_Art_Roads
    '2D7793A0-D457-4531-B1E1-023593F14A11', -- AB01_Art_Vegetation
    '98D31052-A786-4432-9488-999CC2B7AACF', -- AB02_Sound
    '03FCDD1D-3F1E-44D5-A233-631B0F75D6B1', -- AB02_Sound_Schematic
    '026E2B12-88C1-4889-A34F-8AB01BA7ACF7', -- AB02_Art_Buildings
    'E3795D54-058C-4A86-A67D-47EE16D40AFF', -- AB02_Art_Objects
    'DA95E3DF-52F0-4CCB-A53E-A9942C4EFB43', -- AB02_Art_Vegetation
    'F0D90169-801F-4832-8494-40F5EDAF677F', -- AB02_Art_Light
    '9DACB866-E9A7-49B6-A3F4-B0C3BDCD606C', -- AB02_Art_Roads
    '370E16E8-448A-49D3-8CFF-DC84D30ED143', -- AB02_Art_FX
    '5CA21EA9-AD80-46B8-9D9A-C8BF6ECC1D31', -- AB03_Sound
    '2F239FD9-6CB3-4ADE-A8E6-CA8DE52FCF4A', -- AB03_Sound_Schematic

    -- Fire From The Sky COOP_006 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'ED5F6729-5372-6697-C5B5-308A151ACE69', -- Default (terrain)
    'D519FCA8-8CB7-4C7E-8587-D325C1646E1F', -- Sound
    '98EEB045-17D4-4AA0-BDD2-81AB5F05BC10', -- Sound_Schematic
    '919944D1-0088-4F60-8C22-DE059D0FA6F3', -- Objects
    '22158E73-7B10-4130-B5EF-A5A09978507F', -- Splines (rivers, roads, terrain features)
    'E9F15CB5-0B82-48A0-ADBC-35AF068407A0', -- Vegetation
    'E522FFAB-0D7C-4C15-A6D7-FC483002BE0B', -- Rocks
    '984F78B2-C978-494D-9F52-043F0D120C97', -- Houses
    '568B5424-A2BF-439A-9067-063A33E845E3', -- Bridges
    'DD5DA24E-AD06-4A7F-A29D-6B9C815724F0', -- General_FX
    '249A9EB7-28AC-41CC-853B-79166F73FBF7', -- AB01_Sound
    '7A7563D4-4C4F-415B-919D-867478AAA0E0', -- AB01_Sound_Schematic

    -- Operation Exodus COOP_007 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'DED8F258-5034-A6D3-2306-0963095E387D', -- Default (terrain)
    'ACF8E4E9-F1D0-4A14-B7C9-49C3A8991897', -- Sound
    '88823EFD-A850-4F30-9CB6-BC041B52A7B4', -- Sound_Schematic
    'B3B9330E-8CE3-4A72-988E-EADED506CE40', -- ART_Buildings
    'E96E91B5-69F4-4B18-9C54-E64CD9088EE5', -- ART_Objects
    'E7E52A17-3DCF-4995-B7B9-59AC27B618B9', -- ART_Background
    'AD1375B6-983C-4333-BFE9-41DAAF13AE23', -- ART_Roads
    '490572AC-0186-493D-AF21-64F9E0288C57', -- ART_Objects_VIC
    '2B01E481-2DBC-4DD6-B502-78542DAD4637', -- AB00_Sound
    'D4B98D77-814F-4CC3-B783-09B2A8B058C3', -- AB00_Sound_Schematic
    '1C176ECF-E032-4DC3-ADD6-E3BB900B1649', -- AB01_Sound
    'AD72A0D6-0A8C-4EC7-8458-CE13C596EEDB', -- AB01_Sound_Schematic
    '58D3248F-F2AD-414E-8A9D-87AECE1D165B', -- AB02_Sound
    '18BAECC1-EBCB-416E-8354-6333B221AE99', -- AB02_Sound_Schematic
    'E52D3D17-81C2-4CFF-BDEF-021AC9E3671E', -- AB04_Sound
    'A2FD10DD-E9C4-4F64-BD55-BAE165BD5D1E', -- AB04_Sound_Schematic
    '6411094F-449D-4D8D-823C-69B2D97C6D8E', -- AB05_Sound
    'F86B0FD4-0871-4D6D-A121-826BAA3B6A7E', -- AB05_Sound_Schematic

    -- Exfiltration COOP_009 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'D3254EE8-16BF-17C1-E749-B8160F5F506A', -- Default (terrain)
    'F1CD0E12-0F2F-421F-B4DB-70AC3E8ACDAA', -- General_SoundAreas
    '949943C8-4B5D-406F-A1AF-E9645C4C4047', -- General_SoundAreas_Schematic
    '1DD5E71D-6F39-46AE-B1AA-1F40ABEDE6F6', -- Sound
    '57884436-95C5-4AE6-AEFD-6CCCA4BA30CF', -- Sound_Schematic
    '42DEFE6B-FE76-4D2A-8A15-0A221FBA80E5', -- ART_Backdrop_01
    '5736CC85-22FD-47A2-8143-49773CE70220', -- ART_AlwaysStreamedIn
    '84092486-69B0-475A-BB7B-88FE93DC9746', -- AB00_Sound
    'CCC0E72C-10A8-4F3C-A5B8-73D22CE47542', -- AB00_Sound_Schematic
    '217C43B4-ED26-41D0-80DA-E49EF546336C', -- AB00_Art_Buildings
    '2EA88B49-D594-4D1C-A666-CF674E2835B7', -- AB00_Art_Objects
    '08484843-1987-43BA-90FF-59EB19260DDD', -- AB00_Art_Light
    'A05D6D13-6D46-4635-81B2-B3E927FA8F5D', -- AB00_Art_Street
    'BE1A2CED-2F24-4B3B-820E-9A6B49C37A86', -- AB01_Sound
    '0902B1CF-2852-49B2-94BB-2FEB0F15542D', -- AB01_Sound_Schematic
    'BD9AE754-387A-4FCA-B9D0-4DF4DD99918D', -- AB01_Art_Buildings
    '977E3F4C-C796-421B-8C79-9B4339DAAFA5', -- AB01_Art_Objects
    '58D7E83D-4D7C-4BF4-8AA8-8D5BEB0936DC', -- AB01_Art_Light
    'ADADEA9B-C0CB-453C-A4CE-62A8EAD2E787', -- AB02_Sound
    '5A2B4AE8-FCFD-48A6-BAFC-B99E7A3A2A14', -- AB02_Sound_Schematic
    'D2B9A818-D7AD-453E-B625-9D0E8D19E225', -- AB02_Art_Buildings
    '08C132F5-91C8-45DC-B2EF-C9B927A27EF0', -- AB02_Art_Objects
    '4ADD6CB3-D85D-47F9-B3B1-36914419323F', -- AB02_Art_Light
    '10F5A0E5-E8C7-4301-9D07-CC0561505D40', -- AB03_Sound
    'E59AD7C4-56F2-4E3E-ACE4-6E2E720957AC', -- AB03_Sound_Schematic
    'D6B05F69-56E5-4E54-97D1-7215B894FEFB', -- AB03_Art_Buildings
    '96557421-0314-47AC-8901-D5F69FF8D92E', -- AB03_Art_Objects
    'AB9D1382-E9D6-4514-A26E-049DD9DBD3B8', -- AB03_Art_Light

    -- The Eleventh Hour COOP_010 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'EDABC9CD-A01F-3FF1-D4BC-AD76F46F33F7', -- Default (terrain)
    'AD4295D3-0098-4C48-8050-0EE8FB6A2046', -- Sound
    '7486B4E9-5646-4D77-A6EB-C93D2A8D6656', -- Sound_Schematic
    '45C85EC2-E9EF-4B21-8EC2-6EE9BEE504F8', -- AB00_Sound
    'ABC500D7-3293-4490-AAF4-AF34CC28980D', -- AB00_Sound_Schematic
    '4435D103-8359-4B22-9960-C9DE6D1A6F74', -- AB00_Subway_Entrance
    '021606F0-30EA-43CA-9784-E3F4C335F4EB', -- AB00_FX_Gas
    '25AB534E-4750-4114-B03B-73F561F70640', -- AB01_Sound
    'F322B861-DE5D-473E-ADA7-E1ABC6F979B2', -- AB01_Sound_Schematic
    'BFF5599C-A829-48E7-B762-1B5C451EEB58', -- AB01_AB03_Buffer_Parent_Art
    '340A6555-CB0E-4B0B-9727-A6ACB678DBCF', -- AB01_Subway_Mid
    '1C97CF44-63F6-479E-A09C-DB79130E953B', -- AB01_Subway_Exit_Floor
    'B56CEFE2-910E-45FA-97A2-ADC456DE83BF', -- AB03_Sound
    'E354ACF8-4DDB-4EF9-927D-AA8B9145C1D3', -- AB03_Sound_Schematic
    '8C52AA98-BD43-4938-B14E-0E4D13EA8B22', -- AB03_AB04_Buffer_Art
    '410E9B4F-44B5-4743-91E9-4569915EE8AF', -- AB03_Art
    '0E7DF455-D1FF-4490-9505-377AC052525A', -- AB04_Sound
    'D3E629F1-38B4-449C-8BD4-BE80CBAB4FCE', -- AB04_Sound_Schematic
    '2230A040-D150-4089-9F22-8FF86864F8EF', -- AB04_Art_exchange_hall
    '512C1505-55E8-40BB-9B59-FD30FDD24C35', -- AB05_Sound
    'BD3F9CED-4C35-450E-A1A5-832F87CAB8DB', -- AB05_Sound_Schematic
    '5BBE492B-AD82-4C0D-8948-A11786211039', -- AB05_Art_atrium
    'A0E6F05F-633E-4037-9AD0-BCD54F2E9BC9', -- AB06_Sound
    'B6F06504-6C1D-4BC7-AAD2-9DC640A41D97', -- AB06_Sound_Schematic
    '493FDBEE-0027-4881-99CD-B2E8C79842DE', -- AB06_Art

    -- Operation Guillotine SP_Bank -------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'C29859FA-A908-0935-5519-961A6B772E32', -- Default (terrain)
    '1330882D-6010-4F20-86DB-B047A2B8CDD3', -- Sound
    'CE3C68DE-5C6A-4EFD-B219-73BAF21BF6D5', -- Sound_Schematic
    'A5CFEF9E-8B01-42C2-B03D-3A28C5D0F8F4', -- GlobalLighting
    '0640CDB0-B988-4194-9C10-2E452EF90299', -- Roads
    '27D2FD25-231E-45F2-BC83-68438111625E', -- Lighting
    '997338FC-5865-43BE-A11C-013A0B8107EC', -- Doors
    '2E14AEDE-70AB-4F40-A630-E194449A5B06', -- BMD_SND (sound)
    '2E546752-867F-402E-8B4C-A11676E8708C', -- Intro_SND (sound)
    'AD404CC6-37AE-4042-979A-68EE4920119C', -- Bridge_SND (sound)
    '19300B77-37C9-40CD-8BBC-A7CE442AB7D4', -- Assault_ART
    'F2AB905D-A8C7-4878-AAD4-648EEA5C26E5', -- ART_Vegitation [sic]
    '2FF78DC9-2B48-45E2-9BC9-FA9533CE4F7E', -- Assault_LIGHTING
    'F57737CC-0802-44FD-8F31-DEE1916A465A', -- Assault_Illumination
    '9F03C398-828B-4670-9A42-18D8AB3B0179', -- Assault_FX
    '9030A4D4-6615-4207-8721-9814847E37CB', -- AssaultLighting
    '0729E51F-B470-443E-B3B6-6C154EE89F67', -- AssaultCanalProps_ART
    '678B7E70-F468-4137-BA3E-A53600E3C425', -- Backdrop_Architecture
    --'672BB0D2-B006-4279-95BE-D512E14EF78B', -- BackdropHighway_ART --------------------------------------- RECOMMENDED OFF: Ugly as fuck
    '39BE5DA2-DE01-4EC2-8719-75A39ACD8FA7', -- Bank_ART
    '116F5711-9ED6-46C3-8EDD-1433260DE350', -- Bank_Light
    '854BE53F-ECF8-4888-ADE0-18E442A61B12', -- Breach_ART
    'A61E07AF-FF03-4569-A74A-DB70953EBC11', -- Bridge_ART
    'C8B4D7F1-01D7-4188-A84B-F841DED6EE90', -- Bridge_light
    'A7E19290-D034-4003-98FB-C8BD58761EDB', -- Highway_01_ART
    '006B5923-48C6-47FC-9A24-E9E58A651EAB', -- Highway_02_ART
    'EEEE03AA-9E08-4C17-87BD-46C2277B3C8E', -- Highway_03_ART
    'C7597EE5-3AC8-4894-B98D-E1106C3D9EDB', -- House_ART
    'BF865C83-48DD-47FD-B827-3F154113A3E0', -- House_LIGHTING
    '0A9CC77E-75F2-470E-A708-421DE1599F68', -- Passage_ART
    '826038E4-7595-480A-BD99-EC55C8782954', -- Passage_Light
    --'D8D81FE9-EBCF-4D65-A133-D92C4E087404', -- Plaza_Interior_ART ---------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'FC457F92-575A-49E4-9FEF-E87EA59747EF', -- PlazaLightz [sic]
    '27067B58-6E63-4BF8-8E88-40B60A0CB628', -- PlazaProps_ART
    '5ECD7213-F85F-4C7E-A205-0B7A723430FF', -- PlazaProps_Light
    'DC7650A3-091F-4A07-AFCD-E6B40E086A8F', -- Ride_ART
    '90960E81-7B94-4489-8FB8-78FD6C8A9CD0', -- Ride_LIGHTING
    '22042FC3-BFDD-44F0-805B-ECC0208F1CD6', -- Tank_ART
    'BEB6093F-C1D2-4A4E-944C-37AEC8EF23BD', -- TankART
    '1D218508-7389-45D1-9D24-0353B525A5D9', -- Tank_Light
    '59D8917A-DD6E-4D76-9233-3AC2B6A5FDD3', -- Vault_ART
    '2FEC6080-EEB5-40F2-9C9C-EAABF33111E9', -- Vault_Light
    'D62D6913-3A1F-4916-8842-4563CA9A002F', -- Vault_Enlighten
    '6C1B575E-CB32-4D14-B575-08B87E21129B', -- VaultART_ART
    '683B4112-8073-41EC-9DAD-B5E850274415', -- VaultART_Light
    'E140C12A-29E0-47DF-B492-28208A8B6095', -- VaultStream_ART
    'CD91C5FA-6C67-419A-9A3A-3A7BC9F1CED1', -- VaultStream_Lights

    -- Operation Swordbreaker SP_Earthquake -----------------------------------------------------------------------------------------------------------------------------------------------------------
    'E35A999C-740F-9CE4-823D-46710FFD4BB3', -- Default (terrain)
    '18C33603-C129-4A9D-A7BC-4150422D4DD9', -- Sound
    '2D17B52C-1B94-479C-9B52-DA9AB283AC2C', -- Sound_Areas
    '7C02C136-ED9D-4D60-8140-45F7187FD944', -- Sound_Areas_Schematic
    'F5990EE5-A1A4-4E0B-8941-29A98E8A78DE', -- Doors
    --'A3B3D5AB-EFE7-40B1-B080-38293387FC42', -- Lighting -------------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '4216778C-ADEB-4423-9D35-E80645DFFE0E', -- GlobalLighting
    '2E58C3F6-0E04-45B6-A12E-2133223D8A51', -- AlleyEffects
    '9D700F8D-37F9-4786-80DF-EF5A19F5C34E', -- AlleyProps
    '45DBA835-8660-4CC6-A521-AF92D9DCB90F', -- AlleyLighting
    'B3CB8FBA-8F90-4E5D-B4A1-DCDF67DA7C8C', -- AlleySound
    '66FBEDC2-CEA2-4788-B019-03794DBB928D', -- Backdrop_Highrise
    '79C39678-4FFC-4991-9D7F-0AE7248455F8', -- Backdrop_InnerCircle
    '9AC0C00B-15B1-4AC6-99D8-4439A17E4A37', -- Backdrop_OuterCircle
    '64821868-B0E2-42A2-9E12-1FB29012253D', -- BazaarART
    --'F7EDE9A6-D375-42C3-89D6-10C3EF15B0D3', -- Bazaar_Props ---------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '5E9943A6-CD6C-45C0-BC94-4F500ED6606B', -- BazaarLighting
    'EFC93CCD-5498-47B5-81AB-10558EC294B6', -- BuildingProps
    '3A6091A7-D49D-4A94-8422-6C1F29D1E592', -- BuildingLighting
    '68BD4157-FB80-4D97-B6FB-1FC279CA4188', -- CellarProps
    'A8B3F553-D460-4B1A-A548-5680651B6D16', -- CellarLighting
    '8CEF6DFD-C707-423A-A9AE-C2340B589D0A', -- CellarSound
    '78B4FB3F-E6E2-4684-893B-426270620DDA', -- CellarEffects
    'C644082D-6817-4F6D-AB97-7A84BBE6AE84', -- LAVSceneLighting
    'B35B5D43-9BF8-4907-AEEA-6663380DDBDF', -- LAVSceneProps
    'BE31C0D0-D1DE-44AA-9242-C12A960D554F', -- LAVSceneSound
    '8AA21B9B-D713-461F-B378-EA41884ABF39', -- MeatMarketBuildings
    --'5920516C-C9F8-4FB0-825A-77E4C44F3E7B', -- MeatMarketProps ------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '6B7F183B-0C32-4AF0-9DFE-7F3B622EC56C', -- MeatMarketGround
    '95120D17-3792-42A1-93F2-CD5DDB96EFB5', -- MeatMarketLighting
    'E3B889F3-BEF0-43D2-A789-493D9476685B', -- MeatMarketEffects
    'B06CCFFA-106F-4635-B58A-B3248E9F76D4', -- MeatMarketSound
    --'1C7F1C4F-1BB5-4FAC-B875-547EF216CA6C', -- ParkingLotProps ------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'E89A61F7-C10B-4B6A-AC47-C8E73AB55901', -- ParkingLotLighting
    'FFC7526C-1AA2-4BD6-85BF-ECF67EA4FF69', -- ParkingLotSound
    --'FC0085BB-34C1-492F-BD1F-A4BC560C51F6', -- ParkingLotSurroundingBuildings ---------------------------- PROBLEMATIC: server CTD on sending spawn messages
    --'B5DFD30D-7CA9-4497-AACF-BE9CE65091F3', -- ParkingLotSurroundingProps -------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'D53A297E-322D-4DF7-803A-A6A6DA5E016D', -- ParkingLotSurroundingLighting
    --'1C66C1AC-8E49-4ED9-9DA8-863168E4235B', -- RooftopProps ---------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'F055EAF5-F5EB-4491-ABD4-89BA674CE98F', -- RooftopLighting
    'E5B2AC54-5F86-44CA-AEFF-F0DD5FFE5A76', -- RooftopSniperEffects
    'EB8A7D6B-33DD-4A14-9031-49EF4C8606CA', -- RooftopSniperSound
    '37C7FDD4-1E43-44BF-AD58-4D688C9B9E1A', -- RooftopSniperProps
    --'33527DC1-22F4-408A-B30D-4B2991FC3BF2', -- SchoolProps ----------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '8B15A8E3-E3D5-4D6C-B32C-FD91F9227B22', -- SchoolLighting
    '362A1B72-011F-4D79-9175-43DB49F9C536', -- SchoolSound
    '81732781-E971-4657-BE90-995C3465D6C1', -- SchoolEffects
    '874A0871-E36B-4AC6-997C-7E5FC73EFBF9', -- SchoolBuilding_ART
    --'26E30A27-685F-4775-A7F4-FD84879F82E9', -- StagingAreaProps ------------------------------------------ PROBLEMATIC: server CTD on sending spawn messages
    'D89BEC5F-14F0-4910-A32B-4364C99D9E2B', -- StagingAreaVehicles
    'DEB2E13D-BA17-4A82-A5EC-3C08FEF13ADE', -- StagingAreaEffects
    'DB5ED4D5-62D8-4180-9442-D472E8627CF2', -- StagingAreaBuildings
    'CACC184B-5D23-4141-864D-EDE5CA78B731', -- StagingAreaLighting
    '3F473DAA-3C2C-4E0F-B281-072DACD0C065', -- StreetCrossingProps
    'C8700816-06A0-4565-9A95-CE66BA608BAF', -- StreetCrossingLighting
    '36AA5FB7-505C-42EB-9406-63CC87745331', -- StreetCrossingSound

    -- Uprising SP_Earthquake2 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '7136D545-F7EE-4A60-0720-27FCB803F896', -- Default (terrain)
    '37D391E6-F1A1-4D0A-9389-4386CB5E7671', -- Global_Sound
    '5CB82E25-FD85-4CBB-87B1-69A13099F9C4', -- Global_Sound_SCM (sound schematic)
    '932DDCF4-8937-4998-908F-07FF1A53E33C', -- Lighting
    'ADA345C0-3B85-4ADA-897B-E4805703396E', -- GlobalLighting
    'CC42C7AF-C591-4782-A892-1A2B3C779F2D', -- Alley_ART
    '9B310939-6A01-49CD-B510-E2C007CCF3C5', -- Alley_LIGHTING
    '9E3D10CB-94A1-49A3-AC71-202E993FA8DA', -- Alley_EFFECTS
    'DDE8D903-AEEC-4BE5-BB59-139405CE9C60', -- Backdrop_Architectures
    --'D96D01F5-8ED5-462B-BC9A-AEC43C6C2475', -- Bazaar_ART ------------------------------------------------ PROBLEMATIC: server CTD on sending spawn messages
    'F535B444-2CC2-483A-A053-E09116AD3648', -- Bazaar_LIGHTING
    '0C916F0E-8F24-4495-928B-E5D6B62519EA', -- Bazaar_EFFECTS
    'D440947F-4563-4699-A90A-5A093EF39F96', -- Bazaar_SND_SCH (sound schematic)
    'DABBC481-8CFE-4034-A7EA-4DFD383D14C1', -- Bazaar_SND (sound)
    '9FE2D795-87D9-45E8-8C91-ADC86A75EA34', -- Bazzar_Lights
    --'4BA8E428-ABA3-444A-AD79-B98850FCC083', -- Cafe_ART -------------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '86373C40-CA63-432D-866D-AF34173E72E4', -- Cafe_Lighting
    '23A573BD-8068-4ADB-ACA5-E50F0A1F0D25', -- Cafe_SND (sound)
    '91A9147B-5B8E-4997-A395-9A7FC765F54E', -- Cafe_AUDIO
    '2E8A52D7-7721-45E8-9184-5E10DF77467D', -- Cafe_Lights
    '47EDA7EE-4F7A-4EF7-9D5C-3FD0696C644E', -- LargeBuilding_ART
    'BEBED93D-7634-49E1-B783-6C01DA2C7E8E', -- LargeBuilding_SND (sound)
    '9A09C133-DE58-4737-B0E7-300F7D86AD49', -- LargeBuliding_SND [sic] (sound again, or something)
    'D9B6391E-A651-43AF-8B75-08F9253ABA54', -- LargeBuilding_Lights
    '75688763-2314-4587-BF10-7EE22804AA33', -- MeatMarket_ART
    '673EB7F6-D256-445F-9801-392EF36D5712', -- MeatMarket_LIGHTING
    'C2CB2AD3-8DEA-405B-950D-69D7C304EDAA', -- MeatMarket_EFFECTS
    '2B927193-8904-42C7-A188-DDE8DBB9FEC5', -- MeatMarket_SND (sound)
    '176256A8-5827-4FC8-987B-9958E40559D3', -- MeatMarket_SND_SCM (sound schematic)
    'E78E2EB3-3665-485D-9641-F2A93514BA81', -- MeatMarket_Light
    '7E79932F-56E1-46F9-9250-0DF0B854AF70', -- ParkingLot_ART
    'F8F53192-FCE9-48A4-8B93-18CD9F6CE3A4', -- ParkingLot_LIGHTING
    '8D037E93-8F2B-4BAF-9171-FCA592928B88', -- ParkingLot_EFFECTS
    '57A9A9A9-0045-4DA4-949B-DA11C9F886FC', -- ParkingLot_SND_SCM (sound schematic)
    '36E502F1-A2B9-4F65-85D9-AB0ABED9ADFA', -- ParkingLot_SND (sound)
    'BC5160C5-9DAC-4370-8989-3C0896FE2378', -- ParkingLot_Lights
    '629ABDF4-AC2B-42BF-949F-131DCDC9FD23', -- Rift2_ART
    'F5269011-FC73-494E-B20E-76CA4EC4BFD5', -- Rift_ART
    'A48A7374-0055-4097-9E84-8332C83F157D', -- Rift_LIGHTING
    '2C644465-384C-4920-B0B0-1DDBA7CD84C3', -- Rift_EFFECTS
    '0300267C-9B02-4021-A8D1-5598EFC0F6DC', -- Rift_SND_SCM (sound schematic)
    '2FBB7CE8-1D79-4075-80D3-D8F0961B551B', -- Rift_SND (sound)
    'B05C812E-12DD-4B44-A580-29A0F4F330D2', -- School_ART
    '527528DA-23D6-419E-8732-DBBCF793F751', -- School_LIGHTING
    '6C3F55D2-B227-4846-B202-E5E50F369117', -- School_SND (sound)
    'C6EA4BE0-377F-4229-B976-A38185F558FC', -- School_Lights
    '47DD6777-778A-43DC-B273-2179589C3F41', -- School_Light
    'CE753FD8-B47C-4D1E-BB1A-3081B33890B6', -- Solomon_Intro_ART
    --'8EAB5F80-0C78-4EB1-B227-C6FE7895B192', -- StagingArea_ART ------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'DCB4032B-1EFE-48D2-BEB7-5A450B163C2B', -- StagingArea_LIGHTING
    'A564A671-DB2D-49AB-AD7D-B79391ABFD79', -- StagingArea_Effects
    '43B4C494-5D6B-4C1A-A7C3-7A5EB8FF7A15', -- StagingArea_SND (sound)

    -- The Great Destroyer SP_Finale ------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '700EE554-0FC0-CD25-92E8-F3A1D0745C94', -- Default (terrain)
    '1E6FA529-AA5E-4F22-B027-9D1914D2AE34', -- Lighting
    'C5601E87-62F1-4CC7-8CD1-E4E853F07070', -- Sound
    '706079E4-9F08-487F-9677-84B7139990FB', -- Sound_Schematic
    '0147D244-9382-4253-9350-D2AE69F554FB', -- GlobalLighting
    --'55E067EE-87EC-46DC-A510-1FEF5CE58DF4', -- Chase_ART ------------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    --'642F2F13-004B-4C66-8BE3-87FD43AF4B38', -- Chase_PROPS ----------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '8D7F8FCB-F7AE-4557-9F5D-1BB92AB10E17', -- Chase_LIGHTING
    'EC4E6E60-D76C-4335-BEE5-84DDDC0299A0', -- Escape_ART
    'DCB7A693-99F3-40A7-AB39-FF497787CF40', -- Escape_FX
    'A1DA2A9B-084C-4374-89CF-60FC869DB377', -- Fight_ART
    '0BE5A9DE-6264-4478-9BB1-4CA4DEC4E6F6', -- Fight_LIGHTING
    '1821D692-6A0C-40FB-A9FF-D054646B8730', -- Penn_ART
    '6943AC65-05F4-4A6F-89BC-1A27BC631912', -- SewerART_ART
    'DC8C6E1D-1D6A-4936-81A4-E242F9E1D145', -- Street_ART
    '929762D7-994E-4809-814E-EF8E802E519E', -- Street_SND (sound)
    '92496D98-961C-4DAF-A356-8F0DB7182242', -- Street_Backdrop
    'D79C7100-A9A7-4E9A-BE01-9F70B98BDF40', -- Street_BackdropIntro
    '229F34E2-DF41-4D00-93A5-281E93B6A38D', -- TrainRide_ART
    'B289130B-074B-44EB-8DDF-53121A9B5F5B', -- TrainRide_SND (sound)
    '69214B5D-5498-4BB3-A26C-49C14379E5D7', -- TrainLights

    -- Going Hunting SP_Jet ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- This is completely unplayable - some secrets about how they made the map seem so big are revealed, believe me.
    -- If you remove some WorldParts below, it might become slightly useful for something, but I'll leave it all in by default so you can see DICE's dirty secrets.
    '0423F555-3F86-35E1-1CB1-7578EBDBCFEE', -- Default (terrain)
    '5618B16C-DCA4-4765-A07C-6AA388202BCF', -- Lighting
    '9B4C4376-ABE6-4988-BA91-DB583356FD4D', -- Sound_Layer
    '1B102450-32C7-4726-B779-269B42E83583', -- Sound_Layer_Schematic
    'D6520310-B4F0-4478-8BD7-8692F14134A3', -- Art_CarrierLanding
    'BEFD0A70-7C3A-4039-9421-2F1D492C3A68', -- ART_High_Altitude_World
    'DBBDEEDC-9AA9-4BA9-9D97-34B2C806E870', -- Clouds_AltoCumulus
    '50B518CD-F787-473E-B568-940624063665', -- Airfield_FX
    'CE98208E-CCA2-4F81-B78A-B105DBC31EBA', -- Dogfight_Airfield_FX
    '59EA7978-9837-4655-BE6C-6C26F5ECC395', -- Sound_Dogfight_1
    '0B12E5F9-F9C8-4BEE-93C9-92794179AF52', -- Sound_Dogfight_1_Schematic
    '9EE0339F-9294-4748-91F0-8A7411EC018B', -- ART_Carrier
    'FD0C76FD-4203-4E0C-85F3-B75C1D0FCA6C', -- AmbientFX
    '0AC03BCA-E5AD-4B17-BBF5-B596854A2C34', -- Ambient_FX
    '3B445A44-C290-49AA-8AA4-527293733054', -- Sound
    '9392A559-E359-4F07-87D3-A840D358EE66', -- Sound_Schematic
    'CD1321CB-8738-48CA-A4F2-8748E6EDAF29', -- Area_World
    '825C0573-587D-4B4C-8557-C598657A4A9A', -- Clouds
    '59C74D44-29B0-43E7-8A87-FB1E2D55F5A5', -- ART_Buildings
    'F9115DA7-2BB9-4DD4-B6E1-4684A0E74A5B', -- ART_Objects
    '6B09D060-D1E7-4DBC-AAC7-74BFBD18DFCE', -- FX
    '2431DED9-9BA9-4DBA-9168-F72A0ACFB952', -- FX_Clouds
    '1B5AA5E0-08F6-43C3-8292-9297B6149C68', -- Art_Ground
    'B2387F69-296B-4CF0-B553-5FA867188926', -- ART_Destruction
    'A67F688B-AFBA-4278-9AFE-BA778127628E', -- FX_Airfield
    '8916A79C-4D00-4FB3-B215-3CAFD020BE2A', -- Waves
    '705DA3C6-770B-4DF9-873C-31616AF038F0', -- RedFlaresFX
    '4B412B9B-1A5A-40F9-9224-1FD3729931CE', -- InteriorParts
    '946339AD-B0F8-4DE3-83BC-AC590B154763', -- CarrierInterior
    'BD7606DF-0037-4A79-8367-A369E4AAA9B4', -- ART_Dogfight1_Ground
    'B90D7280-BE17-4CE1-8D0C-62A7BCEDF5AC', -- Particles

    -- Semper Fidelis SP_New_York ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '3DF6E0F0-8D96-46EE-8D37-A2D4B9214457', -- Default (terrain)
    '29DB27F8-C7F1-4E03-A7BB-3935DCC1684B', -- Lighting
    '7337FCD7-81FE-475F-A39A-F1436D46A747', -- Sound
    '69493AC0-BEFB-4299-B721-7AB4727AF509', -- Sound_Schematic
    '01C68A88-E0DC-4039-A50D-1546547A621D', -- TrainRide_ART
    'E37E9893-2CB8-42E7-A8FA-78EB4D5B135B', -- TrainRide_SND (sound)
    '8B4E13CF-EF97-4634-84EE-06A11D97AB93', -- TrainRide_Sound

    -- Comrades SP_Paris ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '7D30AFD4-5020-B5F9-192B-B5440346145E', -- Default (terrain)
    '0E6AA9BF-F6B5-410B-8F6F-CE9B88D8EFC9', -- Art
    'E9E9185F-0A4D-4C5B-BBA7-793E09772831', -- SoundArea
    'F64981FF-F690-46C6-BE4B-2B799B07F6DB', -- Sound
    '789D2FB8-B901-4E28-A3A7-BB1BAE76B910', -- Doors
    'F439605F-9AC3-4498-A813-CC6033237C49', -- BackdropBuildingsClose_Structure
    '6A0D17F9-8819-4009-9C41-59C70C8B9720', -- BackdropBuildingsFar_Structure
    '1644C410-54D0-49AB-AA90-2B0E1C387CFD', -- Chase_Buildings
    'F33BC597-56A3-4EDA-99C4-3EB3BD5A17E1', -- Chase_Props
    '137AC8F5-7A33-486B-AEB9-A91834DDD6E1', -- Chase_Lighting
    '152D22EE-F7EC-4BDA-B537-BE0ADEE15D02', -- Chase_Sound
    '3948897E-F33C-4B3E-877E-B4DAF2058229', -- Chase_Sound_Schematic
    '976CD26C-BE2A-4327-882E-4219B0263D9D', -- Chase_FX
    '9CEDDB1F-8E8C-420E-9F0D-8FCB13C12B44', -- ChaseIntro_Buildings
    'E6756A96-C4F3-486F-BB97-400D7267E6FB', -- ChaseIntro_Props
    '2AF4652D-1AF7-4C07-80C8-2F0A80DD520F', -- ChaseIntro_Lighting
    '59E799C5-AEB5-4205-9566-306E2DF2C295', -- CorridorCorner_Art
    --'38F1E2D4-4D04-4E17-BB03-A4E623F482C0', -- CorridorSluice_Art ---------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '00789EB7-55A6-4810-B807-11BEAA95833F', -- CorridorSluice_FX
    'D32AE837-AB09-4485-8EEF-42EC07624F15', -- CorridorSluice_SND (sound)
    'F6132021-41DB-4C1D-9246-8E126D0C8992', -- CorridorSluice_SND2 (sound 2)
    'B26B2798-9003-4B81-9100-382A5F30173D', -- CorridorSluice_Lighting_Schematic
    --'8B2F58F7-C15D-4784-8B99-3542105C86E0', -- GasEventSluice_Props -------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '70C556DF-1EC6-4F92-9D50-83D4246C79D8', -- GasEventSluice_Structure
    '19A6673B-FCB6-412B-A70A-2217BA505E72', -- GasEventSluice_Lighting
    '1B1F0249-E7F2-4FCA-BBD4-CC98C45101A3', -- GasEventSluice_SND (sound)
    '04C63F48-C8F6-4D8C-A901-A71FD2BF6D29', -- GasEventSluice_Lighting_Schematic
    '5FDB4DE1-5576-4B83-B955-2F2765662307', -- Heat_Props
    '19DC4370-FF2C-465A-8A61-E226DFA8B717', -- Heat_Vehicles
    '63811DE9-FB74-40AB-96E2-008BF76DE723', -- Heat_Civilians
    '3B505F8A-3065-4B9B-801B-FB33B71885BB', -- Heat_Sound
    '7A1D7BF9-2027-443C-81B0-68962C0E5EA7', -- Heat_Sound_Schematic
    '7D081BA0-52BD-4D9E-9C03-E8578710CE36', -- Heat_Effects
    '789C314F-2EDA-4336-96B8-C82CAF0D48E5', -- Heat_Sounds
    '1360872C-3703-4635-BD29-6E68ECD9CB99', -- Heat_PC_Props
    '5025E5AD-DA5E-4F5C-AC7B-FD68EA0973B2', -- Lobby_Structure
    'EF8D22B9-B13F-4132-A0DA-C1055FA6391D', -- Lobby_Sound
    'DA8FEBCC-FB3A-4C22-BE31-44781A5E4BDA', -- Lobby_Sound_Schematic
    'E5F504EA-7F25-4CF4-B8F9-D71692190A02', -- Lobby_Effects
    'DED7ECA1-B400-4360-8E96-B5773FF27948', -- LowerOffice_Buildings
    'E3BAD730-86BB-415E-87A1-995B2AB98DF6', -- LowerOffice_Objects
    'A69458AC-D8B1-4613-9AD0-E3D072E172FE', -- LowerOffice_Lighting
    '411E6C90-DA4B-4961-9AE0-995EE91D9114', -- LowerOffice_FX
    'D8DE3402-58D8-4330-B7BD-B21868C99FAE', -- LowerOffice_SND (sound)
    '5CDEAF38-9D78-4EBD-8C7E-5373E5D435DA', -- LowerOffice_SND_Schematic (sound schematic)
    '2074E1B2-A418-465F-8E94-D18848FB35A7', -- LowerOffice_Lighting_Schematic
    '4A23A211-A396-4943-92DF-2E0BE427C5E7', -- LowerOffice_PC_Art
    '660B6B8F-11F7-4EC7-8C56-23DC31A3D5AB', -- ParkingDeck_Props
    '6C71DF1B-CFCA-4BAD-9838-76D75D2B6E27', -- ParkingDeck_Vehicles
    '7B87BCBE-6940-4D70-A5BD-ED2C7FC40092', -- ParkingDeck_Structure
    '62E1062D-DFEF-4236-8897-55C679EE30EC', -- ParkingDeck_Lighting
    '5F626594-2814-4DCB-B66C-915472E6C813', -- ParkingDeck_Lighting_Schematic
    '99217223-2091-4251-AB5A-32280AECDBBB', -- ParkingDeckGate_Structure
    '444C6D84-ED78-43F8-9F12-BE496FED06D5', -- ParkingDeckGate_Props
    '978AB003-9914-4AED-B7A4-622D8299AEF2', -- ParkingDeckGate_Lighting
    'EE2625B6-31A0-4331-955D-6D73B5EF7F49', -- ParkingDeckGate_Lighting_Schematic
    'D4AF4B03-4720-47DB-9D90-42B7F1C4A57B', -- ParkingDeckGate_PC_Art
    '4A64AA86-84A7-441A-95C9-54A883A6CBDF', -- Rail_Props
    '5EC4841B-B20B-48A7-8D3E-1A41A832BF0B', -- Rail_Sound
    'F8A1F19B-9782-4C80-8859-27CB4E66E033', -- Rail_Sound_Schematic
    'C594AD20-D502-4BFB-B7AD-4228646DB728', -- Rail_Vehicles
    'F78EC4A8-9F97-4493-8D49-E6FCF80461A7', -- Rail_Civilians
    '5C9D02BE-88B8-4260-8F45-F4E4AE43A701', -- RailBackdrop_Buildings
    'E6AF99BB-E056-4C1E-967E-FA95B9ED03BF', -- RailBackdrop_Props
    '35190C9E-5790-4DF6-B7D3-82819DF4268D', -- AB07_Buildings (AB07 refers to the 'Street' SubWorld)
    '8DBDCB2C-37DF-4E0D-B29B-79F7080C46B8', -- AB07_Props
    '2319A762-E6EB-48ED-9ADB-6DCE3B5BB13D', -- Street_Lighting
    'E5C1ECAC-A6B8-4F8D-B426-5D0EA5B67603', -- TradingFloor_Buildings
    '30E6054A-E28D-4735-B110-89A4ACC5048D', -- TradingFloor_Objects
    '13D06EB2-D335-45A7-9B4D-E92DA08F264A', -- TradingFloor_Lighting
    '97288387-5DB1-45DC-B400-4E3C458F7EFD', -- TradingFloor_FX
    'DD1EDBE1-0B7A-4796-8C68-8D077D3D25A1', -- UpperOffice_Buildings
    '989EDB9D-D233-406D-9EF5-7B986F4C983D', -- UpperOffice_Objects
    '8BB04B87-EBEB-4C7F-A119-9395B77D881F', -- Upper_Office_FX
    'C67861BC-3BDA-4E40-A767-A23D9AD02411', -- UpperOffice_Lighting
    '8F6C5590-5AFE-48B6-8E71-F29B614F083B', -- UpperOffice_Backdrop
    '13D4FFD5-7E3B-4457-BBEF-FEF97B97044D', -- UpperOffice_SND (sound)
    '8177887A-CB2D-455E-B834-0CDC7139E943', -- UpperOffice_SND_Schematic (sound schematic)
    '628E334B-0A3F-419D-817A-C10AEB7EE78B', -- UpperOffice_Lighting_Schematic
    '54E58C59-76E9-4F91-9E6D-8E983F062A63', -- UpperOffice_PC_Art

    -- Night Shift SP_Sniper --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- (this is usable for MP, despite some shortcomings - the missing elements are not obvious, and do not ruin the experience like for Operation Swordbreaker)
    'C7460E3F-A718-E80C-161E-8C41621C15C5', -- Default
    'FA76D04E-8690-4C0E-AF73-6212B0CED163', -- Art_Buildings
    'B0BBAA3B-4806-4F79-94F2-C8404174167B', -- RoadSplines
    '0F5B9334-E495-4FE6-957B-F48C76653574', -- VE
    --'12E7268F-78AF-42EC-BFE4-395D375F495B', -- VE_Schematic ---------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'EAA06B1F-5A18-44CD-9068-A2008D79ACE5', -- Sound_Areas
    '298C19FA-0BF8-49DF-A166-00CA028C29EF', -- Sound_Areas_Schematic
    '3A544FDA-ED19-4CAC-8D84-D995CBE01CEF', -- Lighting
    'FA5950A2-7738-4819-938D-42FAB2B2E56C', -- Global_FX
    'B5162184-B897-46D1-B198-04247693BB2F', -- Doors
    '5580D85D-DEAC-4957-AC92-9F321E23A8EB', -- AlBashirStrikeArt_Buildings
    '7E6C396E-FD68-4A70-B807-0E93A253E238', -- AlBashirStrikeArt_Lighting
    'D1DFF886-08EB-4B88-897A-E76AAA690E1E', -- AlBashirStrikeArt_Vegetation
    '999CBD83-D693-42A4-BA96-4D185C5F175E', -- AlBashirStrikeArt_Cars
    '17ADC739-9B7A-41FC-B65C-A4B827FD6CBB', -- AlBashirStrikeArt_Props
    '173E3C6B-9598-4755-AEC3-D9E5E8DFCD23', -- AlBashirStrikeArt_Effects
    'F086D66D-AE9D-4CEA-9C08-04D665FBE11F', -- AlBashirStrikeArt_PC_Props
    '3AE03B3C-4427-4006-97F5-37BE03D248A8', -- SniperNest_view
    '8680085B-FA13-450D-8548-005DD9057841', -- SniperPlaza_Left
    '38BB5997-C844-45AA-9EAE-23808C091FF8', -- Background_Persistant_Buildings [sic]
    --'B4A8E387-C0A2-4700-A903-9B100355133D', -- Backstreets_BUILDINGS ------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '2ED988CA-A4B4-40DB-AFEF-1C27C0E953E7', -- Backstreets_VEGETATION
    'FDB3C9D7-985D-4ED5-ADF3-9BECA1315596', -- Backstreets_SOUND
    'ED63E3B5-373B-4702-BFDC-D0E9B4DF8E27', -- Backstreets_SOUND_Schematic
    'A947E6F4-75BE-4152-83F8-404436AA43DF', -- FailKnife_BUILDINGS
    '49C910A9-EC26-4BFB-A249-6421CEEEBD56', -- Mall_BUILDINGS
    '8CAD5F53-1F55-425E-8648-A837EAEFC365', -- Mall_OBJECTS
    'E722B631-7772-4CB5-A237-6A8B0C9EC6A0', -- Mall_Lighting
    --'44FCBED8-26F9-4197-A459-C93ACA6E8B92', -- Mall_BehindStreet_Buildings ------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '2BAFD8D5-93FF-48FE-8600-9515C3B0A3A4', -- Mall_Exterior_Buildings
    '642B9998-E1A9-4DAF-8999-710D51EBBDE1', -- Mall_Exterior_PC_Art
    '93CA8DBB-485C-4FED-9534-531C5D501B3E', -- Mall_PC_Art
    'C77C7E68-130E-493B-B191-096117B7C1DB', -- MallDefence_BUILDINGS
    '6AFDDD26-FB10-4425-BFD2-D069A7118080', -- MallDefence_SOUND_Schematic
    '332BA720-8B46-4D0D-ABF7-7EED90BA3819', -- MannequinRoom_BUILDINGS
    --'7EFD5BAB-DAD9-4A9A-B783-7F635C831877', -- MannequinRoom_OBJECTS ------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '40957E7F-3C42-4763-9B61-215F688E3FC2', -- MannequinRoom_SND (sound)
    '618D66EF-63E7-451F-A821-744F16F0CA53', -- MannequinRoom_Art
    '0DB8D78C-E33C-41BD-B2E5-780A1FD2AC4E', -- AB05_Buildings (AB05 is the Missile SubWorld)
    'E00BA273-5549-4C57-AF98-5A1560533C32', -- AB05_Lighting
    --'BF1AC098-E509-4BFA-A835-BABA2BC5A02F', -- Overwatch_BUILDINGS --------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    'E2B956F1-26F7-402F-8E56-BD954553CADC', -- Overwatch_Vegetation
    --'90537578-17C9-4E24-983C-4F170C4F7750', -- AB08_Buildings (AB08 is the Plaza SubWorld) --------------- PROBLEMATIC: server CTD on sending spawn messages
    '787E51FA-A1CC-4D91-A7EE-67763FD088FF', -- AB08_Objects
    'B8324FA0-4331-4A12-BC57-33C1F4AEB354', -- AB08_Lighting
    --'50322AED-37CB-46F3-9C09-923DB6E4B42A', -- ReconNest_BUILDINGS --------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '1BF78A3D-D47C-4F8B-BF59-665E388E2330', -- ReconNest_VEGETATION
    '06DD16FE-2DD6-4F6F-8D15-985CB328F6AF', -- ReconNest_Lighting
    'EB424438-4BFA-4BD8-B53B-E3D81014913C', -- ReconNest_LIGHTS
    'E860D1E1-E43E-4E31-9627-758EE4C79AC2', -- ReconNest_SND (sound)
    '8C68A423-1806-4F9B-8E30-C66695E7D4B3', -- ReconNest_SOUND
    '7C6C52AC-FEAA-40A3-98D5-B33C61843460', -- ReconNest_SOUND_Schematic
    '5B2632F3-ED0B-48C5-BA62-5F766BB666CD', -- ReconNest_PC_Art
    --'E82A46FC-D6D3-4407-AEEF-B1E3FDE216DC', -- AB04_Buildings (AB04 is the RocketApartment SubWorld) ----- PROBLEMATIC: server CTD on sending spawn messages
    '053093FD-DDA5-48A7-96AF-CA92856182ED', -- RocketApartment_SND (sound)
    '0615DB7D-1F54-4228-B729-D6111173C4D8', -- AB06_Buildings (AB06 is the Sewers SubWorld)
    'CF6F65AB-A785-490D-B959-64221C1B3CE6', -- Sewers_OBJECTS
    'BE133ED3-7B4D-4B17-8B0F-27BAF573CAE9', -- Sewers_Lighting]]

    -- Thunder Run SP_Tank ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'A242FC6A-B0B9-1FB1-3B64-C69DDFD8DEF7', -- Default (terrain)
    'BF8CCF82-B3D6-4B02-B635-8D410D6E5464', -- Effects
    '35DA1DE8-4FC3-4A98-A3A7-F3D33BDD72AF', -- Lighting
    '0FCED9F8-76B5-4DCD-BFC5-D5981775E52C', -- Sound_Areas
    'FE2FC061-7C2C-442D-8654-ADB0E8B92287', -- Sound_Areas_Schematic
    'CAB07955-FCE9-4113-9203-13FEA788483E', -- Backdrop_LevelArt
    '7BBC29BE-3008-4B7C-B073-1798258A5258', -- DesertCombat_01_LevelArt
    'A1463978-15F0-4137-9770-7DAA7FE668C6', -- DesertFort_DesignerArt
    '4ADD8067-FF73-47A5-81EE-E0AB462BB3AD', -- DesertFort_Sound
    'A42F098A-05C1-4F86-952D-492A40FF83F0', -- DesertFortPCOnly_Layer
    'AEDCBA47-3B7B-408A-B27E-F8814EC7CA50', -- DesertFortSmallObjects_01_LevelArtSubstream
    '2DADBEA7-CE53-4DCC-918E-92D599601D4D', -- DesertIntro_LevelArt
    'DC8300C9-3853-4B31-9B50-3BFA65C3B55D', -- DesertIntro_Sound
    'DFF9F0E4-CC66-4C84-B032-FC3B2E122EF0', -- HighwayOfDeath_01_LevelArt
    '29760AE0-859D-4478-9174-6D81D60ECB7F', -- HighwayOfDeath_Sound
    '03DB12FA-9131-43D8-BFAA-92CED1A7E6C4', -- HighwayOfDeath2_LevelArt
    'A4548DC1-882E-49B0-92A3-EEA4FD2A6A9A', -- HighwayOfDetah2_Sound [sic]
    'B04E3558-79CD-496D-85D0-25B521EF185C', -- HighwayOverpass_01_LevelArt
    'FF1E141A-D019-4A7D-ABC5-0E229B2859F3', -- HighwayToTeheran_01_LevelArt
    'C21F4205-887C-43CC-8DA6-2118D88576C0', -- HighwayToTeheran_01_Propsketching
    'EC0855CD-6993-4B0F-A1F0-7D67499B0ED3', -- HighwayToTeheran_01_Sound
    '8B2DDC6C-FF27-4D4F-9124-97A5108E023F', -- Highway1_Sound
    '46CEA362-BF22-4B7E-A2EA-5A23F77D7677', -- HighwayToTeheran_02_LevelArt
    '8ED85E48-1AED-44B9-86F6-59082D14F6FD', -- HighwayToTeheran_02_Sound
    'FCCDE338-8476-4C49-8F5D-C846E321E87F', -- MICLIC-HighwayToTeheran_LevelArt
    '09F62E34-E9E8-4057-A474-0DD12B0B9F33', -- MICLIC_Sound
    'E67A6BD5-2375-4649-87FA-FF74BABDCC51', -- MICLIC_soun 
    '8A5F933D-25B4-4AE0-81AF-8DEB5A224082', -- MICLIC_LevelArt
    'D5B9A86F-24BD-4FC4-AA19-CB48B24F1A90', -- MICLIC_Propsketching
    '44AAC126-318B-426B-96FD-3CA6C8BE5D82', -- RoadToDesert_01_LevelArt

    -- Fear No Evil SP_Tank_B -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'D0897FBA-6686-4116-840E-6333BA63D5FB', -- Default (terrain)
    'BE9A7AA1-C175-44EB-ACE2-3A6189FCD3B6', -- Effects
    '158C8D5D-2E65-488F-A609-401AF44866B6', -- Lighting
    'F6C90D58-76F4-438F-908F-6ECAFAFB8231', -- Sound_Areas
    'FDBD9B04-74CB-4546-8EB4-425892946FD1', -- Sound_Areas_Schematic
    'ABCC5D90-1352-49B8-BE75-2CAFC89D54AE', -- Backdrop
    'BFB7E1CA-D9E5-411D-8485-5361D725E618', -- Ambush_Art
    'C130735C-5FA4-4FAC-BB39-67C070302371', -- BankPlaza_01_LevelArt
    'E8ACA585-34E9-479A-AB13-80CA36D4B16B', -- BankPlaza_01_Sound
    '5F9FA93A-D2B5-44E8-940C-2A8FEF8C9B82', -- BankPlaza_Sound
    --'45E2D98A-25AE-4CA2-B901-762AFB188FD1', -- BankPlaza_01_LevelArt_EndScene
    '27BC840B-7194-4395-9351-3804441B95D2', -- BankPlazaBackdrop_Art
    '0CC7A3EC-DD3C-432E-BC7A-CA9DBE8FFDD2', -- BlockedStreet_Art
    '86F0E192-EE02-4904-9FAA-4ED5BAC789ED', -- BlockedStreet_Backdrop
    '0F5A1BBC-0200-413C-8D1B-9321A02FC9C0', -- BlockedStreet2_Art
    '8AD3E546-756F-4B3A-B00A-D90E70743FFB', -- DriveThrough_Art
    '3661F607-8299-45D2-8B19-05B446427892', -- DriveThrough_Sound
    'C1EB92AB-31C8-4FFF-B855-CFB07C858D08', -- IntroRail_Art
    'FC1B72AA-36B1-45FC-B878-C81BCDFEFF51', -- IntroRail_Backdrop
    '75F0C23F-CACD-4528-8724-0AE74808BA09', -- Outroscene_LevelArt (F for Miller)
    '8C1CDC29-0F5A-46D6-86F1-A35A4E2D8759', -- SideStreet_Art

    -- Rock And A Hard Place SP_Valley ----------------------------------------------------------------------------------------------------------------------------------------------------------------
    '4F54471A-7497-4526-8D1E-61DA8708EE7E', -- Default (terrain)
    '7290FF47-C677-478E-9A28-8ED2924D15B0', -- Backdrop
    '94CC82A7-A0E4-4114-925B-B088F8AFA002', -- Vehicles
    'C21B4458-7195-445F-9FA1-F8391C65FF97', -- Lighting
    'E8E3DB91-6907-4FC5-B6F1-54EB14F01855', -- Sound
    '2E81EA7C-395B-43BE-B8D4-2E72460654D7', -- Sound_Schematic
    '3134C05F-32CA-4913-AC2E-C001CBFD2AAE', -- AirdropProps
    'D3CF3A60-C951-4D5C-BC31-4AD6EFA6F99F', -- HeavyArmour
    'AF118140-87EA-46F6-B01B-42EB41032567', -- AmbientWar_HeavyArmour
    '5DB801CC-AC4E-4CE5-9BC0-D158136F4CB0', -- HeavyArmour_Close
    '8FB0300D-1707-4DA5-834A-2582DD9F749C', -- AmbientWar_HeavyArmour_Close
    'FD8B2AB3-F00A-4C61-8113-FD9207545086', -- AirDrops
    'E5795167-356A-462D-BD96-5C25A2E6557D', -- AmbientWar_AirDrops
    '352EF462-DFE1-43FB-8728-5CC2CB43F2E2', -- Forest_Sound
    '52B64AA1-79ED-4206-8138-20544EAEEFA5', -- Forest_Sound_Schematic
    '4A12465A-4457-49E0-9B46-A6B0DB9D0571', -- Forest_Props
    '8FB2B676-A184-46E8-9CA0-89293C31F6A1', -- ForestEffects
    '568F0EBB-4824-40AC-874F-3C196573D558', -- ForestTrees
    '2F0DB124-B06E-4956-B5AC-454C5DCEC31A', -- Forest_Trees
    'D65B6505-5355-4766-88EA-FF60B29FF15A', -- Hillside_Trees
    'F2C79F4E-4F79-4BFA-9764-CDAA818DA1EF', -- Hillside_Props
    '7A3B7544-81D7-4F7E-9AC7-F74F1560DE29', -- Ridge_Trees
    '454B8213-BBFD-4F25-803C-0AFD98E0286D', -- Ridge_Props
    '06514644-8FF0-4262-BE2D-148ED2925901', -- Valley_Sound
    '868B2E20-9C96-4D3A-9C8F-BDA4936237B4', -- Valley_Sound_Schematic
    '273505C4-C8E6-4ED7-80CF-722A22B1D732', -- Valley_Trees
    'F6A92BCE-C4C8-4853-BD29-AEE2B1F41988', -- Valley_Props
    '95B1D11D-653B-40EA-BAC9-944DE9F6E164', -- Valley_FX
    'A1C97440-01DC-458C-975E-2F05A52FE516', -- Zone1_Props
    '687026D9-9E04-4979-8F6F-94F18E222BA0', -- Bushes
    '6355A6FC-0C95-488F-8F18-CE43CE79D4AB', -- Zone2_Props
    'A2DE82F5-F746-45FB-AD18-D0BD3D0BBD70', -- Zone3_Props
    'D2F15D0A-F733-42C9-8736-B922EEC22D64', -- Zone4_Props
    '8F595A19-031C-461A-81B6-81105FF84B24', -- Zone5_Props
    'CB632B6B-890F-4867-8AAC-0182A6AA0D60', -- Zone5Props

    -- Kaffarov SP_Villa ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'A96DC518-E143-EDFC-DCAC-897405F69C89', -- Default (terrain)
    '3BE3A922-89A2-4EFD-8564-7456177A666D', -- Overgrowth
    'BD91043F-5A1F-4F0F-98DA-95619FBB9DC8', -- FX
    '98FBEC86-0C3B-4876-8BEF-0072CFCBF24F', -- Underground
    'CC5F35BF-3220-4A6B-B4FD-F400A4135400', -- Sound
    'B9429E26-4434-486E-985C-DEA17A870106', -- Sound_Schematic
    '5100BCA5-5A27-42E5-9EA4-3EA546D374E7', -- Background_Art
    --'A3D9981E-4EBC-4CC6-88E6-F42ABA4AC406', -- Basement_Art ---------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '9313A7B9-3744-4F8C-BFFA-012792F53472', -- Basement_SND (sound)
    '83C24440-B178-44B7-9FB6-6ACC7DF475C8', -- Basement_SOUND
    '8572A407-3595-41C7-9F33-89017C9CCC01', -- Blackburn_Art
    'F3742F48-1F8B-4907-AD79-22254C1090C0', -- Chopper_Art
    'E10A72D8-8AC7-4971-A9A4-BB8A71550CB8', -- Drive_Art
    '3030BA95-B16C-45EA-9800-3EF67AEC4CB2', -- Drive_SND (sound)
    'B626002D-06C7-4DC2-8F6C-00A116C55D49', -- Drive_2_Art
    'D28BECF2-4CC5-4859-8A6E-0FE33C29C592', -- Drive_PC_Art
    'BCF88E61-76DE-4A97-8DF9-74BE465385C1', -- Garden_Art
    '0C958FD2-53F9-4136-8F1E-F8EE615FB49F', -- Garden_PC_Art
    '4186466D-DE1E-4643-A84F-EB7153F411D9', -- GateHouse_Art
    '773A76D3-0A27-47E3-B189-E26F6B41380A', -- GateHouse_SND (sound)
    'E8118191-0818-4EA6-8F72-65954F4A76AA', -- Halo_Art
    '6814A128-9179-45CD-81C0-7F415FCA2D39', -- Halo_FX
    '0DBE1D0C-808A-45FA-A57A-2D4FABA2F33B', -- Landing_Sound_Schematic
    'AE9BE903-0765-4943-ACCE-25119C6D4AF8', -- Landing_ART
    '18887BD0-5649-494C-9359-E83616226B38', -- PoolHouse_Art
    '0246BE9F-BDF6-4A52-909D-D28C8260605E', -- Rail_Art
    '31172FE0-4705-4DB4-AD6F-75317891F64A', -- Rail_Overgrowth
    --'62F9D1A5-CE13-4E7E-BEBF-BAA5838808FE', -- Villa_Art ------------------------------------------------- PROBLEMATIC: server CTD on sending spawn messages
    '9FF53760-262E-4474-8E0A-BA2E8D32B87A', -- Villa_Lighting
    'A0D08ABC-2524-4783-9B0E-106E1BE3DF77', -- Villa_SOUND_Schematic
    'B12A0A29-8117-433F-AD97-98668834FD85', -- Villa_PC_Art
    'D879E38A-622C-4CA8-9440-0A96F3A1A96E', -- Villa_Background
    'B086DC7D-4A0F-4B50-96D5-88B7CADD0006', -- Basement_Logic -- NOTE: Requires SpMapModifications for SP_Villa courtesy of keku645

}