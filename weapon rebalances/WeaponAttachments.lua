if RequiredScript == "lib/tweak_data/weaponfactorytweakdata" then

	local old_wftd_init = WeaponFactoryTweakData.init
	function WeaponFactoryTweakData:init()
		old_wftd_init(self)
		self:stuff_general()
	end
		
	function WeaponFactoryTweakData:stuff_general()
		
--OVERRRIDES

--raven
self.wpn_fps_sho_ksg.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 6,
					dot_length = 2.1,
					dot_tick_period = 0.4,
					scale_length = 0.8,
					scale_damage = 4.5
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "2.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}

--reinfeld
self.wpn_fps_shot_r870.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 6,
					dot_length = 2.1,
					dot_tick_period = 0.4,
					scale_length = 0.8,
					scale_damage = 4.5
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "2.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}

--breaker
self.wpn_fps_sho_boot.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "3.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}

--m1014
self.wpn_fps_sho_ben.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 3,
					dot_length = 2.1,
					dot_tick_period = 0.4,
					scale_length = 0.8,
					scale_damage = 1.5
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_tick_period = 0.5
			}
		}
	}
}

--predator
self.wpn_fps_sho_spas12.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 3,
					dot_length = 2.1,
					dot_tick_period = 0.4,
					scale_length = 0.8,
					scale_damage = 1.5
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_tick_period = 0.5
			}
		}
	}
}

--gsps
self.wpn_fps_shot_m37.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "3.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}
--locomotive
self.wpn_fps_shot_serbu.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 6,
					dot_length = 2.1,
					dot_tick_period = 0.4,
					scale_length = 0.8,
					scale_damage = 4.5
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "2.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}

--mosconi
self.wpn_fps_shot_huntsman.override ={
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 2
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_tick_period = 0.5
			}
		}
	}}

--judge
self.wpn_fps_pis_judge.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 2
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "3.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	},
	wpn_fps_upg_ns_shot_shark = {parent = "slide"},
	wpn_fps_upg_ns_shot_thick = {parent = "slide"},
	wpn_fps_upg_shot_ns_king = {parent = "slide"},
	wpn_fps_upg_ns_sho_salvo_large = {parent = "slide"},
	wpn_fps_upg_ns_duck = {parent = "slide"}
}

--street sweeper
self.wpn_fps_sho_striker.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 4
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 4
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 3,
					dot_length = 2.1,
					dot_tick_period = 0.4,
					scale_length = 0.8,
					scale_damage = 1.5
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 4
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_tick_period = 0.5
			}
		}
	},
	wpn_upg_o_marksmansight_rear_vanilla = {a_obj = "a_o_r"},
	wpn_upg_o_marksmansight_front = {a_obj = "a_o_f"}
}

--joceline
self.wpn_fps_shot_b682.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 2
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "3.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}

--akimbo judge
self.wpn_fps_pis_x_judge.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 2
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "3.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	},
	wpn_fps_upg_ns_shot_shark = {parent = "slide"},
	wpn_fps_upg_ns_shot_thick = {parent = "slide"},
	wpn_fps_upg_shot_ns_king = {parent = "slide"},
	wpn_fps_upg_ns_sho_salvo_large = {parent = "slide"},
	wpn_fps_upg_ns_duck = {parent = "slide"},
	wpn_fps_pis_judge_body_standard = {animations = {}},
	wpn_fps_pis_judge_body_modern = {animations = {}}
}

--claire
self.wpn_fps_sho_coach.override = {
	wpn_fps_upg_a_slug = {
		stats = {
			value = 5,
			damage = 50,
			total_ammo_mod = 0,
			spread = 10,
			moving_spread = 10,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.7,
			damage_near_mul = 2,
			damage_far_mul = 1.5,
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			can_shoot_through_enemy = true,
			rays = 1
		}
	},
	wpn_fps_upg_a_custom = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_custom_free = {
		stats = {
			value = 5,
			total_ammo_mod = 2,
			damage = 20,
			reload = 2
		},
		custom_stats = {
			rays = 9
		}
	},
	wpn_fps_upg_a_explosive = {
		stats = {
			value = 5, 
			total_ammo_mod = -5,
			damage = 0,
			spread = -3,
			moving_spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.3,
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			rays = 3, 
			bullet_class = "InstantExplosiveBulletBase"
		}
	},
	wpn_fps_upg_a_piercing = {
		stats = {
			value = 5,
			reload = 2
		},
		custom_stats = {
			armor_piercing_add = 1, 
			rays = 16,
			bullet_class = "PoisonBulletBase",
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 11,
					dot_length = 2.5,
					dot_tick_period = 0.4,
					scale_length = 1.2,
					scale_damage = 11
				}
			}
		}
	},
	wpn_fps_upg_a_dragons_breath = {
		stats = {
			value = 5, 
			total_ammo_mod = 0, 
			damage = 0, 
			moving_spread = -3,
			spread = -3,
			reload = 2
		},
		custom_stats = {
			ammo_pickup_min_mul = 0.55,
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
				dot_length = "3.6", 
				dot_trigger_max_distance = "3000", 
				dot_tick_period = 0.5
			}
		}
	}
}

--ATTACHMENTS/AMMO

-- Slugs
self.parts.wpn_fps_upg_a_slug.stats = {
	value = 5,
	damage = 50,
	total_ammo_mod = 0,
	spread = 10,
	moving_spread = 10
}
self.parts.wpn_fps_upg_a_slug.custom_stats = {
	ammo_pickup_min_mul = 0.7,
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
		damage = 20
	},
	custom_stats = {
		rays = 9
	}
}
self.parts.wpn_fps_upg_a_custom_free = deep_clone(self.parts.wpn_fps_upg_a_custom)
self.parts.wpn_fps_upg_a_custom_free.dlc = nil
self.parts.wpn_fps_upg_a_custom_free.is_a_unlockable = nil

-- High Explosive
self.parts.wpn_fps_upg_a_explosive.stats = {
	value = 5, 
	total_ammo_mod = -5,
	damage = 0,
	spread = -3,
	moving_spread = -3
}
self.parts.wpn_fps_upg_a_explosive.custom_stats = {
	ammo_pickup_min_mul = 0.3,
	ignore_statistic = true,
	damage_far_mul = 2.5,
	damage_near_mul = 2,
	rays = 3, 
	bullet_class = "InstantExplosiveBulletBase"
}

-- Flechette
self.parts.wpn_fps_upg_a_piercing.stats = {value = 5}

self.parts.wpn_fps_upg_a_piercing.custom_stats = {
	armor_piercing_add = 1, 
	rays = 16,
	bullet_class = "PoisonBulletBase",
	dot_data = {
		type = "poison",
		custom_data = {
			hurt_animation_chance = 0,
			dot_damage = 3,
			dot_length = 2.1,
			dot_tick_period = 0.4,
			scale_length = 0.8,
			scale_damage = 1.5
		}
	}
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
	ammo_pickup_min_mul = 0.55,
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
		dot_tick_period = 0.1
	}
}

--king's crown
self.parts.wpn_fps_upg_shot_ns_king.stats.damage = 2
end
end