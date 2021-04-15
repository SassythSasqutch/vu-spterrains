NetEvents:Subscribe('PlayerReady', function(connectedPlayer)

	-- Retrieve MPSoldier
	local coopSoldierBp = ResourceManager:SearchForDataContainer('Characters/Soldiers/CoopSoldier')
	if coopSoldierBp == nil then
		print('Could not find COOPSoldier...')
		return
	else
		print('Found COOPSoldier!')
	end

	-- Set spawn position
	playerSpawnPos = LinearTransform()
	playerSpawnPos.trans = Vec3(0,1000,0)
	if playerSpawnPos == nil then
		print('Could not generate spawn pos?')
		return
	end

	-- Set customisation
	--[[usAsltCustomisation = ResourceManager:SearchForDataContainer('Gameplay/Kits/USAssault')
	usAsltAppearance = ResourceManager:SearchForDataContainer('Persistence/Unlocks/Soldiers/Visual/MP/Us/MP_US_Assault_Appearance_Desert02')
	connectedPlayer:SelectUnlockAssets(usAsltCustomisation, usAsltAppearance)
	print('Visual customisation set!')]]

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

	connectedPlayer.teamId = TeamId.Team2

	-- Set loadout
	weaponCustomisation = CustomizeSoldierData()
	weaponCustomisation.activeSlot = WeaponSlot.WeaponSlot_0
		-- Loadout primary
	m4a1 = ResourceManager:SearchForDataContainer('Weapons/M4A1/U_M4A1')
	primaryWeapon = UnlockWeaponAndSlot()
	primaryWeapon.weapon = SoldierWeaponUnlockAsset(m4a1)
	primaryWeapon.slot = WeaponSlot.WeaponSlot_0
		-- Loadout melee
	knife = ResourceManager:SearchForDataContainer('Weapons/Knife/U_Knife')
	meleeWeapon = UnlockWeaponAndSlot()
	meleeWeapon.weapon = SoldierWeaponUnlockAsset(knife)
	meleeWeapon.slot = WeaponSlot.WeaponSlot_5
		-- Define loadout
	weaponCustomisation.weapons:add(primaryWeapon)
	weaponCustomisation.weapons:add(meleeWeapon)
		-- Apply to player
	connectedPlayer.soldier:ApplyCustomization(weaponCustomisation)

end)