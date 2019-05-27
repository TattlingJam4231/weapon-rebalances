local old_init = WeaponTweakData.init
function WeaponTweakData:init(tweak_data)
old_init(self, tweak_data)

	self.msr.stats.damage = 129

	self.winchester1874.stats.damage = 129
	
	self.contraband.CLIP_AMMO_MAX = 30
	self.contraband.NR_CLIPS_MAX = 4
	self.contraband.AMMO_MAX = self.contraband.CLIP_AMMO_MAX * self.contraband.NR_CLIPS_MAX
	self.contraband.AMMO_PICKUP = {6,11}
	self.contraband.FIRE_MODE = "auto"
	self.contraband.fire_mode_data = {fire_rate = 0.1}
	self.contraband.CAN_TOGGLE_FIREMODE = true
	self.contraband.auto = {fire_rate = 0.1}
	self.contraband.stats.damage = 58
	
	self.contraband_m203.categories = {
		"grenade_launcher",
		"assault_rifle"
		}
	self.contraband_m203.AMMO_MAX = 4
	
	self.par.timers.reload_not_empty = 5.62
	self.par.timers.reload_empty = 5.62
	self.par.stats.recoil = 10
	
	self.m134.AMMO_MAX = 750
	self.m134.CLIP_AMMO_MAX = 984
	self.m134.AMMO_PICKUP = {1.5,1.5}
	self.m134.can_shoot_through_enemy = true
	self.m134.can_shoot_through_shield = true
	self.m134.stats.damage = 80
	self.m134.stats.spread = 15
	self.m134.stats.spread_moving = 15
	self.m134.stats.recoil = 1
	self.m134.kick.standing = {
		-0.05,
		0.2,
		-0.2,
		0.35
	}
	self.m134.kick.crouching = {
		-0.05,
		0.2,
		-0.2,
		0.35
	}
	self.m134.kick.steelsight = {
		-0.05,
		0.2,
		-0.2,
		0.35
	}
	
end