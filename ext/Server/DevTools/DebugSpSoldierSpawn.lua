local spawnPosns = {

    ['COOP_002'] = LinearTransform(
        Vec3(0.999543, 0.000000, -0.030243), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.030243, 0.000000, 0.999543), 
        Vec3(-48.945313, 9.849414, -64.342773)
    ),

    ['COOP_003'] = LinearTransform(
        Vec3(-0.999994, 0.000000, -0.003506), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.003506, 0.000000, -0.999994), 
        Vec3(-14.012695, 73.988083, -45.356445)
    ),

    ['COOP_006'] = LinearTransform(
        Vec3(0.575544, 0.000000, 0.817771), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.817771, 0.000000, 0.575544), 
        Vec3(-642.994141, 386.038910, -310.077148)
    ),

    ['COOP_007'] = LinearTransform(
        Vec3(0.999987, 0.000000, -0.005192), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.005192, 0.000000, 0.999987), 
        Vec3(49.988281, 64.235176, 37.814453)
    ),

    ['COOP_009'] = LinearTransform(
        Vec3(0.009207, 0.000000, 0.999958), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.999958, 0.000000, 0.009207),
        Vec3(-86.617188, 71.740036, 828.671875)
    ),

    ['COOP_010'] = LinearTransform(
        Vec3(-0.409867, 0.000000, 0.912145), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.912145, 0.000000, -0.409867),
        Vec3(-83.893555, 66.397263, -422.454102)
    ),

    ['SP_Bank'] = LinearTransform(
        Vec3(0.843499, 0.000000, -0.537131), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.537131, 0.000000, 0.843499), 
        Vec3(-1229.481445, 182.361130, -457.342773)
    ),

    ['SP_Earthquake/'] = LinearTransform(
        Vec3(0.999996, 0.000000, 0.002901), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.002901, 0.000000, 0.999996), 
        Vec3(-303.462891, 71.298630, -2052.060547)
    ),

    ['SP_Earthquake2'] = LinearTransform(
        Vec3(0.449386, 0.000000, -0.893338), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.893338, 0.000000, 0.449386), 
        Vec3(-226.657227, 62.516411, -131.425781)
    ),

    ['SP_Finale'] = LinearTransform(
        Vec3(0.969962, 0.000000, 0.243256), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.243256, 0.000000, 0.969962), 
        Vec3(-97.094727, 53.421684, 1099.279297)
    ),

    ['SP_Jet'] = LinearTransform(
        Vec3(-0.999995, 0.000000, -0.003193), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.003193, 0.000000, -0.999995), 
        Vec3(-1167.708008, 478.191223, 1045.528320)
    ),

    ['SP_New_York'] = LinearTransform(
        Vec3(0.999998, 0.000000, -0.001892), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.001892, 0.000000, 0.999998), 
        Vec3(-1906.362305, 66.884567, -1345.299805)
    ),

    ['SP_Paris'] = LinearTransform(
        Vec3(0.999997, 0.000000, 0.002311), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.002311, 0.000000, 0.999997), 
        Vec3(-427.747070, -0.362483, -761.567383)
    ),

    ['SP_Sniper'] = LinearTransform(
        Vec3(-0.999997, 0.000000, 0.002417), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.002417, 0.000000, -0.999997), 
        Vec3(-167.955078, 104.961723, 188.761719)
    ),

    ['SP_Tank/'] = LinearTransform(
        Vec3(0.056126, 0.000000, 0.998424), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.998424, 0.000000, 0.056126), 
        Vec3(-1060.274414, 90.188293, 719.691406)
    ),

    ['SP_Tank_b'] = LinearTransform(
        Vec3(0.001511, 0.000000, 0.999999), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.999999, 0.000000, 0.001511), 
        Vec3(-83.804688, 113.314255, -1687.422852)
    ),

    ['SP_Valley'] = LinearTransform(
        Vec3(0.474308, 0.000000, 0.880359), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.880359, 0.000000, 0.474308), 
        Vec3(1360.721680, 93.252731, -1498.043945)
    ),

    ['SP_Villa'] = LinearTransform(
        Vec3(-1.000000, 0.000000, 0.000960), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.000960, 0.000000, -1.000000), 
        Vec3(-266.905273, 275.563354, -141.084961)
    )

}

NetEvents:Subscribe('PlayerReady', function(connectedPlayer)

	connectedPlayer.teamId = TeamId.Team1

	-- Retrieve MPSoldier
	local coopSoldierBp = ResourceManager:SearchForDataContainer('Characters/Soldiers/MpSoldier')
	if coopSoldierBp == nil then
		print('Could not find MpSoldier...')
		return
	else
		print('Found MpSoldier!')
	end

	-- Set spawn position

	for level, spawnPos in pairs(spawnPosns) do

		if string.find(SharedUtils:GetLevelName(), level) then

			playerSpawnPos = spawnPos

		end

	end

	-- Set customisation
	usAsltCustomisation = ResourceManager:SearchForDataContainer('Gameplay/Kits/USAssault')
	usAsltAppearance = ResourceManager:SearchForDataContainer('Persistence/Unlocks/Soldiers/Visual/MP/Us/MP_US_Assault_Appearance_Desert02')
	connectedPlayer:SelectUnlockAssets(usAsltCustomisation, usAsltAppearance)
	print('Visual customisation set!')

	if connectedPlayer.isAllowedToSpawn == true then
		print('Player is allowed to spawn.')
	end

	if connectedPlayer.soldier == nil then
		print('Spawning player \'' .. connectedPlayer.name .. '\'...')

		local newSoldierEntity = connectedPlayer:CreateSoldier(coopSoldierBp, playerSpawnPos)
		if newSoldierEntity == nil then
			print('Could not generate soldier!')
			return
		else
			print('Fucking finally')
		end
		connectedPlayer:SpawnSoldierAt(newSoldierEntity, playerSpawnPos, CharacterPoseType.CharacterPoseType_Stand)
		if connectedPlayer.soldier == nil then 
			print('Could not spawn soldier!')
		end
	end

	-- Set loadout
	local weaponCustomisation = CustomizeSoldierData()
	weaponCustomisation.activeSlot = WeaponSlot.WeaponSlot_0
		-- Loadout primary
	local hk416 = ResourceManager:SearchForDataContainer('Weapons/M27IAR/U_M27IAR')
	local primaryWeapon = UnlockWeaponAndSlot()
	primaryWeapon.weapon = SoldierWeaponUnlockAsset(hk416)
	primaryWeapon.slot = WeaponSlot.WeaponSlot_0
		-- Primary attachments
	local hk416Attachments = { 'Weapons/M27IAR/U_M27IAR_Silencer', 'Weapons/M27IAR/U_M27IAR_Acog', 'Weapons/M27IAR/U_M27IAR_Foregrip', 'Weapons/M27IAR/U_M27IAR_TargetPointer' }
	for _, attachment in pairs(hk416Attachments) do
		local unlockAsset = UnlockAsset(ResourceManager:SearchForDataContainer(attachment))
		primaryWeapon.unlockAssets:add(unlockAsset)
	end
		-- Loadout melee
	local knife = ResourceManager:SearchForDataContainer('Weapons/Knife/U_Knife')
	local meleeWeapon = UnlockWeaponAndSlot()
	meleeWeapon.weapon = SoldierWeaponUnlockAsset(knife)
	meleeWeapon.slot = WeaponSlot.WeaponSlot_5
		-- Define loadout
	weaponCustomisation.weapons:add(primaryWeapon)
	weaponCustomisation.weapons:add(meleeWeapon)
		-- Apply to player
	connectedPlayer.soldier:ApplyCustomization(weaponCustomisation)

end)