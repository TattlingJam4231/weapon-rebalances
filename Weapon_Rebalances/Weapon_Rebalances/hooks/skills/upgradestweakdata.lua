Hooks:PostHook(UpgradesTweakData, "init", "WR UpgradesTweakData init", function(self)

	local reload_multiplier = 1.35
	self.values.assault_rifle.reload_speed_multiplier = {reload_multiplier}
	self.values.smg.reload_speed_multiplier = {reload_multiplier}
	self.values.snp.reload_speed_multiplier = {reload_multiplier}
	
	self.values.team.damage = {
		hostage_absorption = {
			0.1
		},
		hostage_absorption_limit = 4
	}

	self.values.player.head_shot_ammo_return = {
		{
			headshots = 2,
			ammo = 1,
			time = 2
		},
		{
			headshots = 2,
			ammo = 1,
			time = 4
		}
	}

	self.values.team.crew_scavenge = {
		{
			1.1,
			1.2,
			1.3
		}
	}
	self.crew_descs.crew_scavenge = {
		value1 = "10%",
		value2 = "+10%"
	}
	self.values.player.pick_up_ammo_multiplier_2 = {
		1.5
	}
	self.definitions.player_pick_up_ammo_multiplier_2 = {
		name_id = "menu_player_pick_up_ammo_multiplier_2",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "pick_up_ammo_multiplier_2",
			category = "player"
		}
	}
end)

