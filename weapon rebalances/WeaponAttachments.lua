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
	damage = 25,
	total_ammo_mod = 0,
	spread = 10,
	moving_spread = 10
}
self.parts.wpn_fps_upg_a_slug.custom_stats = {
	ammo_pickup_min_mul = 0.8,
	ammo_pickup_max_mul = 1.25,
	damage_near_mul = 2,
	damage_far_mul = 1.5,
	armor_piercing_add = 1,
	can_shoot_through_shield = true,
	can_shoot_through_wall = true,
	can_shoot_through_enemy = true,
	rays = 1
}

-- 000 Buckshot
self.parts.wpn_fps_upg_a_custom = {
	is_a_unlockable = true,
	texture_bundle_folder = "gage_pack_shotgun",
	a_obj = "a_body",
	type = "ammo",
	third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
	internal_part = true,
	sub_type = "ammo_custom",
	dlc = "gage_pack_shotgun",
	name_id = "bm_wp_upg_a_custom",
	unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
	pcs = {},
	stats = {
		value = 5,
		total_ammo_mod = 2,
		damage = 10
	},
	custom_stats = {
		rays = 8
	}
}
self.parts.wpn_fps_upg_a_custom_free = deep_clone(self.parts.wpn_fps_upg_a_custom)
self.parts.wpn_fps_upg_a_custom_free.dlc = nil
self.parts.wpn_fps_upg_a_custom_free.is_a_unlockable = nil

-- High Explosive
self.parts.wpn_fps_upg_a_explosive.stats = {
	value = 5, 
	total_ammo_mod = -3,
	damage = 40,
	spread = -3,
	moving_spread = -3
}
self.parts.wpn_fps_upg_a_explosive.custom_stats = {
	ammo_pickup_min_mul = 0.8,
	ammo_pickup_max_mul = 0.8,
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
	spread = 2, 
	moving_spread = 2
}
self.parts.wpn_fps_upg_a_piercing.custom_stats = {
	damage_near_mul = 2, 
	damage_far_mul = 1.15, 
	armor_piercing_add = 1, 
	rays = 18,
	bullet_class = "ToxicBulletBase"
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
	ammo_pickup_min_mul = 0.8,
	ammo_pickup_max_mul = 1,
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

-- Shark Teeth Nozzle
self.parts.wpn_fps_upg_ns_shot_shark.stats.damage = 1

-- Donald's Horizontal Leveller
self.parts.wpn_fps_upg_ns_duck.stats.damage = 1

end
end
