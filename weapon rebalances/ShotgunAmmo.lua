if RequiredScript == "lib/tweak_data/weaponfactorytweakdata" then

	local old_wftd_init = WeaponFactoryTweakData.init
	function WeaponFactoryTweakData:init()
		old_wftd_init(self)
		self:stuff_general()
	end
		
	function WeaponFactoryTweakData:stuff_general()

-- Slugs
self.parts.wpn_fps_upg_a_slug.stats = {
	value = 5,
	damage = 50,
	total_ammo_mod = 0,
	spread = 10,
	moving_spread = 10
}
self.parts.wpn_fps_upg_a_slug.custom_stats = {
	damage_near_mul = 2,
	damage_far_mul = 1.5,
	armor_piercing_add = 1,
	can_shoot_through_shield = true,
	can_shoot_through_wall = true,
	can_shoot_through_enemy = true
}

-- 000 Buckshot
self.parts.wpn_fps_upg_a_custom.stats = {
	value = 5, 
	total_ammo_mod = 2, 
	damage = 15,
}
self.parts.wpn_fps_upg_a_custom.custom_stats = {
	rays = 8,
	can_shoot_through_wall = true,
}
self.parts.wpn_fps_upg_a_custom_free.stats = self.parts.wpn_fps_upg_a_custom.stats
self.parts.wpn_fps_upg_a_custom_free.custom_stats = self.parts.wpn_fps_upg_a_custom.custom_stats

-- High Explosive
self.parts.wpn_fps_upg_a_explosive.stats = {
	value = 5, 
	total_ammo_mod = -3,
	damage = 100,
	spread = -1,
	moving_spread = -1
}
self.parts.wpn_fps_upg_a_explosive.custom_stats = {
	ignore_statistic = true,
	damage_far_mul = 2.5,
	damage_near_mul = 2,
	rays = 1, 
	bullet_class = "InstantExplosiveBulletBase"
}

-- Flechette
self.parts.wpn_fps_upg_a_piercing.stats = {
	value = 5, 
	total_ammo_mod = 0, 
	damage = 0, 
	spread = 3, 
	moving_spread = 3
}
self.parts.wpn_fps_upg_a_piercing.custom_stats = {
	damage_near_mul = 2, 
	damage_far_mul = 1.8, 
	armor_piercing_add = 1, 
	rays = 20
}

-- Dragon's Breath
self.parts.wpn_fps_upg_a_dragons_breath.stats = {
	value = 5, 
	total_ammo_mod = 0, 
	damage = 0, 
	moving_spread = -3,
	spread = -3
}
self.parts.wpn_fps_upg_a_dragons_breath.custom_stats = {
	armor_piercing_add = 1, 
	ignore_statistic = true,  
	muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
	damage_far_mul = 1.15,
	damage_near_mul = 2,
	can_shoot_through_shield = true, 
	bullet_class = "FlameBulletBase",
	rays = 24, 
	fire_dot_data = {
		dot_trigger_chance = "100",
		dot_damage = "6", 
		dot_length = "2.1", 
		dot_trigger_max_distance = "3000", 
		dot_tick_period = "0.5"
	}
}

end
end