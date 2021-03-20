local original_player_definitions = UpgradesTweakData._player_definitions

function UpgradesTweakData:_player_definitions(...)
	original_player_definitions(self, ...)
	
	self.sentry_gun_base_ammo = 600

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
			time = 3
		},
		{
			headshots = 2,
			ammo = 1,
			time = 6
		}
	}
end