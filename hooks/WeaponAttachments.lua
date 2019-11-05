local original_init = WeaponFactoryTweakData.init

function WeaponFactoryTweakData:init()
	original_init(self)
	
	--OVERRIDES---------------------------------------------------------------------------------------------------------------------

	local slug = {
		t1 = {
			dmg = 74,
			acc = 10,
			min_pickup = nil,
			max_pickup = nil
		},
		t2 = {
			dmg = 61,
			acc = 10,
			min_pickup = nil,
			max_pickup = nil
		},
		t3 = {
			dmg = 32,
			acc = 10,
			min_pickup = nil,
			max_pickup = nil
		},
		t4 = {
			dmg = 30,
			acc = 10,
			min_pickup = nil,
			max_pickup = nil
		},
		t5 = {
			dmg = 20,
			acc = 10,
			min_pickup = nil,
			max_pickup = nil
		}
	}
	
	local buckshot = {
		t1 = {
			dmg = 48,
			acc = nil,
			min_pickup = nil,
			max_pickup = nil
		},
		t2 = {
			dmg = 30,
			acc = nil,
			min_pickup = nil,
			max_pickup = nil
		},
		t3 = {
			dmg = 20,
			acc = nil,
			min_pickup = nil,
			max_pickup = nil
		},
		t4 = {
			dmg = 17,
			acc = nil,
			min_pickup = nil,
			max_pickup = nil
		},
		t5 = {
			dmg = 13,
			acc = nil,
			min_pickup = nil,
			max_pickup = nil
		}
	}
	
	local he = {
		t1 = {
			dmg = 9,
			acc = -3,
			min_pickup = nil,
			max_pickup = 0.4
		},
		t2 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.8,
			max_pickup = 0.4
		},
		t3 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.3022,
			max_pickup = 0.3733
		},
		t4 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.4681,
			max_pickup = 0.3563
		},
		t5 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.5,
			max_pickup = 0.5474
		}
	}
	
	local flechette = {
		t1 = {
			dmg = -103,
			acc = -1,
			min_pickup = nil,
			max_pickup = nil,
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 10.5,
					dot_tick_period = 0.4,
					scale_damage = 10.5,
					dot_decay = 1.5,
					dot_decay_rate = 2
				}
			}
		},
		t2 = {
			dmg = -60,
			acc = -1,
			min_pickup = nil,
			max_pickup = nil,
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 60,
					dot_tick_period = 0.4,
					scale_damage = 4.5,
					dot_decay = 0.5,
					dot_decay_rate = 1
				}
			}
		},
		t3 = {
			dmg = -37,
			acc = -1,
			min_pickup = nil,
			max_pickup = nil,
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 6,
					dot_tick_period = 0.4,
					scale_damage = 3,
					dot_decay = 0.5,
					dot_decay_rate = 1
				}
			}
		},
		t4 = {
			dmg = -28,
			acc = -1,
			min_pickup = nil,
			max_pickup = nil,
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 6,
					dot_tick_period = 0.4,
					scale_damage = 2,
					dot_decay = 0.5,
					dot_decay_rate = 1
				}
			}
		},
		t5 = {
			dmg = -12,
			acc = -1,
			min_pickup = nil,
			max_pickup = nil,
			dot_data = {
				type = "poison",
				custom_data = {
					hurt_animation_chance = 0,
					dot_damage = 3,
					dot_tick_period = 0.4,
					scale_damage = 1.5,
					dot_decay = 1,
					dot_decay_rate = 1
				}
			}
		}
	}
	
	local db = {
		t1 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.4,
			max_pickup = nil,
			fire_dot_data = {
				dot_trigger_chance = 100,
				dot_damage = 7, 
				dot_length = 3.1, 
				dot_trigger_max_distance = 3000, 
				dot_tick_period = 0.5
			}
		},
		t2 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.4,
			max_pickup = nil,
			fire_dot_data = {
				dot_trigger_chance = 100,
				dot_damage = 7, 
				dot_length = 2.6, 
				dot_trigger_max_distance = 3000, 
				dot_tick_period = 0.5
			}
		},
		t3 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.4,
			max_pickup = nil,
			fire_dot_data = {
				dot_trigger_chance = 100,
				dot_damage = 7, 
				dot_length = 2.1, 
				dot_trigger_max_distance = 3000, 
				dot_tick_period = 0.5
			}
		},
		t4 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.4,
			max_pickup = nil,
			fire_dot_data = {
				dot_trigger_chance = 100,
				dot_damage = 6, 
				dot_length = 2.1, 
				dot_trigger_max_distance = 3000, 
				dot_tick_period = 0.5
			}
		},
		t5 = {
			dmg = nil,
			acc = -3,
			min_pickup = 0.4,
			max_pickup = nil,
			fire_dot_data = {
				dot_trigger_chance = 100,
				dot_damage = 5, 
				dot_length = 2.1, 
				dot_trigger_max_distance = 3000, 
				dot_tick_period = 0.5
			}
		}
	}
	
	--155 damage shotguns-----------------------------------------------------------
	
		--mosconi
		self.wpn_fps_shot_huntsman.override ={
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
	
		--joceline
		self.wpn_fps_shot_b682.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--breaker
		self.wpn_fps_sho_boot.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--akimbo judge
		self.wpn_fps_pis_x_judge.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
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
		
		--judge
		self.wpn_fps_pis_judge.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			},
			wpn_fps_upg_ns_shot_shark = {parent = "slide"},
			wpn_fps_upg_ns_shot_thick = {parent = "slide"},
			wpn_fps_upg_shot_ns_king = {parent = "slide"},
			wpn_fps_upg_ns_sho_salvo_large = {parent = "slide"},
			wpn_fps_upg_ns_duck = {parent = "slide"}
		}
		
		--gsps
		self.wpn_fps_shot_m37.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--claire
		self.wpn_fps_sho_coach.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					damage = slug.t1.dmg,
					spread = slug.t1.acc,
					moving_spread = slug.t1.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t1.min_pickup,
					ammo_pickup_max_mul = slug.t1.max_pickup,
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
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t1.dmg,
					spread = buckshot.t1.acc,
					moving_spread = buckshot.t1.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t1.min_pickup,
					ammo_pickup_max_mul = buckshot.t1.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t1.dmg,
					spread = he.t1.acc,
					moving_spread = he.t1.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t1.min_pickup,
					ammo_pickup_max_mul = he.t1.max_pickup,
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
					damage = flechette.t1.dmg,
					spread = flechette.t1.acc,
					moving_spread = flechette.t1.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t1.min_pickup,
					ammo_pickup_max_mul = flechette.t1.max_pickup,
					dot_data = flechette.t1.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t1.dmg,
					spread = db.t1.acc,
					moving_spread = db.t1.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t1.min_pickup,
					ammo_pickup_max_mul = db.t1.max_pickup,
					fire_dot_data = db.t1.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
	
	--90 damage shotguns------------------------------------------------------------
	
		--raven
		self.wpn_fps_sho_ksg.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t2.dmg,
					spread = slug.t2.acc,
					moving_spread = slug.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t2.min_pickup,
					ammo_pickup_max_mul = slug.t2.max_pickup,
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
					damage = buckshot.t2.dmg,
					spread = buckshot.t2.acc,
					moving_spread = buckshot.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t2.min_pickup,
					ammo_pickup_max_mul = buckshot.t2.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t2.dmg,
					spread = buckshot.t2.acc,
					moving_spread = buckshot.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t2.min_pickup,
					ammo_pickup_max_mul = buckshot.t2.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t2.dmg,
					spread = he.t2.acc,
					moving_spread = he.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t2.min_pickup,
					ammo_pickup_max_mul = he.t2.max_pickup,
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
					damage = flechette.t2.dmg,
					spread = flechette.t2.acc,
					moving_spread = flechette.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t2.min_pickup,
					ammo_pickup_max_mul = flechette.t2.max_pickup,
					dot_data = flechette.t2.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t2.dmg,
					spread = db.t2.acc,
					moving_spread = db.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t2.min_pickup,
					ammo_pickup_max_mul = db.t2.max_pickup,
					fire_dot_data = db.t2.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}

		--reinfeld
		self.wpn_fps_shot_r870.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t2.dmg,
					spread = slug.t2.acc,
					moving_spread = slug.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t2.min_pickup,
					ammo_pickup_max_mul = slug.t2.max_pickup,
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
					damage = buckshot.t2.dmg,
					spread = buckshot.t2.acc,
					moving_spread = buckshot.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t2.min_pickup,
					ammo_pickup_max_mul = buckshot.t2.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t2.dmg,
					spread = buckshot.t2.acc,
					moving_spread = buckshot.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t2.min_pickup,
					ammo_pickup_max_mul = buckshot.t2.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t2.dmg,
					spread = he.t2.acc,
					moving_spread = he.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t2.min_pickup,
					ammo_pickup_max_mul = he.t2.max_pickup,
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
					damage = flechette.t2.dmg,
					spread = flechette.t2.acc,
					moving_spread = flechette.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t2.min_pickup,
					ammo_pickup_max_mul = flechette.t2.max_pickup,
					dot_data = flechette.t2.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t2.dmg,
					spread = db.t2.acc,
					moving_spread = db.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t2.min_pickup,
					ammo_pickup_max_mul = db.t2.max_pickup,
					fire_dot_data = db.t2.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--locomotive
		self.wpn_fps_shot_serbu.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t2.dmg,
					spread = slug.t2.acc,
					moving_spread = slug.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t2.min_pickup,
					ammo_pickup_max_mul = slug.t2.max_pickup,
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
					damage = buckshot.t2.dmg,
					spread = buckshot.t2.acc,
					moving_spread = buckshot.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t2.min_pickup,
					ammo_pickup_max_mul = buckshot.t2.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t2.dmg,
					spread = buckshot.t2.acc,
					moving_spread = buckshot.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t2.min_pickup,
					ammo_pickup_max_mul = buckshot.t2.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t2.dmg,
					spread = he.t2.acc,
					moving_spread = he.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t2.min_pickup,
					ammo_pickup_max_mul = he.t2.max_pickup,
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
					damage = flechette.t2.dmg,
					spread = flechette.t2.acc,
					moving_spread = flechette.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t2.min_pickup,
					ammo_pickup_max_mul = flechette.t2.max_pickup,
					dot_data = flechette.t2.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t2.dmg,
					spread = db.t2.acc,
					moving_spread = db.t2.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t2.min_pickup,
					ammo_pickup_max_mul = db.t2.max_pickup,
					fire_dot_data = db.t2.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}

	--55 damage shotguns-----------------------------------------------------------
	
		--predator
		self.wpn_fps_sho_spas12.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t3.dmg,
					spread = slug.t3.acc,
					moving_spread = slug.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t3.min_pickup,
					ammo_pickup_max_mul = slug.t3.max_pickup,
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
					damage = buckshot.t3.dmg,
					spread = buckshot.t3.acc,
					moving_spread = buckshot.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t3.min_pickup,
					ammo_pickup_max_mul = buckshot.t3.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t3.dmg,
					spread = buckshot.t3.acc,
					moving_spread = buckshot.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t3.min_pickup,
					ammo_pickup_max_mul = buckshot.t3.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t3.dmg,
					spread = he.t3.acc,
					moving_spread = he.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t3.min_pickup,
					ammo_pickup_max_mul = he.t3.max_pickup,
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
					damage = flechette.t3.dmg,
					spread = flechette.t3.acc,
					moving_spread = flechette.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t3.min_pickup,
					ammo_pickup_max_mul = flechette.t3.max_pickup,
					dot_data = flechette.t3.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t3.dmg,
					spread = db.t3.acc,
					moving_spread = db.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t3.min_pickup,
					ammo_pickup_max_mul = db.t3.max_pickup,
					fire_dot_data = db.t3.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--m1014
		self.wpn_fps_sho_ben.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t3.dmg,
					spread = slug.t3.acc,
					moving_spread = slug.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t3.min_pickup,
					ammo_pickup_max_mul = slug.t3.max_pickup,
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
					damage = buckshot.t3.dmg,
					spread = buckshot.t3.acc,
					moving_spread = buckshot.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t3.min_pickup,
					ammo_pickup_max_mul = buckshot.t3.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t3.dmg,
					spread = buckshot.t3.acc,
					moving_spread = buckshot.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t3.min_pickup,
					ammo_pickup_max_mul = buckshot.t3.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t3.dmg,
					spread = he.t3.acc,
					moving_spread = he.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t3.min_pickup,
					ammo_pickup_max_mul = he.t3.max_pickup,
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
					damage = flechette.t3.dmg,
					spread = flechette.t3.acc,
					moving_spread = flechette.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t3.min_pickup,
					ammo_pickup_max_mul = flechette.t3.max_pickup,
					dot_data = flechette.t3.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t3.dmg,
					spread = db.t3.acc,
					moving_spread = db.t3.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t3.min_pickup,
					ammo_pickup_max_mul = db.t3.max_pickup,
					fire_dot_data = db.t3.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--street sweeper
		self.wpn_fps_sho_striker.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t3.dmg,
					spread = slug.t3.acc,
					moving_spread = slug.t3.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t3.min_pickup,
					ammo_pickup_max_mul = slug.t3.max_pickup,
					damage_near_mul = 2,
					damage_far_mul = 1.5,
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					can_shoot_through_enemy = true,
					rays = 2
				}
			},
			wpn_fps_upg_a_custom = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t3.dmg,
					spread = buckshot.t3.acc,
					moving_spread = buckshot.t3.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t3.min_pickup,
					ammo_pickup_max_mul = buckshot.t3.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t3.dmg,
					spread = buckshot.t3.acc,
					moving_spread = buckshot.t3.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t3.min_pickup,
					ammo_pickup_max_mul = buckshot.t3.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t3.dmg,
					spread = he.t3.acc,
					moving_spread = he.t3.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t3.min_pickup,
					ammo_pickup_max_mul = he.t3.max_pickup,
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
					damage = flechette.t3.dmg,
					spread = flechette.t3.acc,
					moving_spread = flechette.t3.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t3.min_pickup,
					ammo_pickup_max_mul = flechette.t3.max_pickup,
					dot_data = flechette.t3.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t3.dmg,
					spread = db.t3.acc,
					moving_spread = db.t3.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t3.min_pickup,
					ammo_pickup_max_mul = db.t3.max_pickup,
					fire_dot_data = db.t3.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}

	--42 damage shotguns-----------------------------------------------------------

		--izhma
		self.wpn_fps_shot_saiga.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t4.dmg,
					spread = slug.t4.acc,
					moving_spread = slug.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t4.min_pickup,
					ammo_pickup_max_mul = slug.t4.max_pickup,
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
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t4.dmg,
					spread = he.t4.acc,
					moving_spread = he.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t4.min_pickup,
					ammo_pickup_max_mul = he.t4.max_pickup,
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
					damage = flechette.t4.dmg,
					spread = flechette.t4.acc,
					moving_spread = flechette.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t4.min_pickup,
					ammo_pickup_max_mul = flechette.t4.max_pickup,
					dot_data = flechette.t4.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t4.dmg,
					spread = db.t4.acc,
					moving_spread = db.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t4.min_pickup,
					ammo_pickup_max_mul = db.t4.max_pickup,
					fire_dot_data = db.t4.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--steakout
		self.wpn_fps_sho_aa12.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t4.dmg,
					spread = slug.t4.acc,
					moving_spread = slug.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t4.min_pickup,
					ammo_pickup_max_mul = slug.t4.max_pickup,
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
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t4.dmg,
					spread = he.t4.acc,
					moving_spread = he.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t4.min_pickup,
					ammo_pickup_max_mul = he.t4.max_pickup,
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
					damage = flechette.t4.dmg,
					spread = flechette.t4.acc,
					moving_spread = flechette.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t4.min_pickup,
					ammo_pickup_max_mul = flechette.t4.max_pickup,
					dot_data = flechette.t4.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t4.dmg,
					spread = db.t4.acc,
					moving_spread = db.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t4.min_pickup,
					ammo_pickup_max_mul = db.t4.max_pickup,
					fire_dot_data = db.t4.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--akimbo goliath
		self.wpn_fps_sho_x_rota.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t4.dmg,
					spread = slug.t4.acc,
					moving_spread = slug.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t4.min_pickup,
					ammo_pickup_max_mul = slug.t4.max_pickup,
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
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t3.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t3.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t4.dmg,
					spread = he.t4.acc,
					moving_spread = he.t3.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t4.min_pickup,
					ammo_pickup_max_mul = he.t4.max_pickup,
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
					damage = flechette.t4.dmg,
					spread = flechette.t4.acc,
					moving_spread = flechette.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t4.min_pickup,
					ammo_pickup_max_mul = flechette.t4.max_pickup,
					dot_data = flechette.t4.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t4.dmg,
					spread = db.t4.acc,
					moving_spread = db.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t4.min_pickup,
					ammo_pickup_max_mul = db.t4.max_pickup,
					fire_dot_data = db.t4.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
		
		--goliath
		self.wpn_fps_sho_rota.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t4.dmg,
					spread = slug.t4.acc,
					moving_spread = slug.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t4.min_pickup,
					ammo_pickup_max_mul = slug.t4.max_pickup,
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
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t3.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t4.dmg,
					spread = buckshot.t4.acc,
					moving_spread = buckshot.t3.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t4.min_pickup,
					ammo_pickup_max_mul = buckshot.t4.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t4.dmg,
					spread = he.t4.acc,
					moving_spread = he.t3.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t4.min_pickup,
					ammo_pickup_max_mul = he.t4.max_pickup,
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
					damage = flechette.t4.dmg,
					spread = flechette.t4.acc,
					moving_spread = flechette.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t4.min_pickup,
					ammo_pickup_max_mul = flechette.t4.max_pickup,
					dot_data = flechette.t4.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t4.dmg,
					spread = db.t4.acc,
					moving_spread = db.t4.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t4.min_pickup,
					ammo_pickup_max_mul = db.t4.max_pickup,
					fire_dot_data = db.t4.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}
	
	--18 damage shotguns-----------------------------------------------------------
	
		--brothers grimm
		self.wpn_fps_sho_x_basset.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t5.dmg,
					spread = slug.t5.acc,
					moving_spread = slug.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t5.min_pickup,
					ammo_pickup_max_mul = slug.t5.max_pickup,
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
					damage = buckshot.t5.dmg,
					spread = buckshot.t5.acc,
					moving_spread = buckshot.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t5.min_pickup,
					ammo_pickup_max_mul = buckshot.t5.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t5.dmg,
					spread = buckshot.t5.acc,
					moving_spread = buckshot.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t5.min_pickup,
					ammo_pickup_max_mul = buckshot.t5.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t5.dmg,
					spread = he.t5.acc,
					moving_spread = he.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t5.min_pickup,
					ammo_pickup_max_mul = he.t5.max_pickup,
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
					damage = flechette.t5.dmg,
					spread = flechette.t5.acc,
					moving_spread = flechette.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t5.min_pickup,
					ammo_pickup_max_mul = flechette.t5.max_pickup,
					dot_data = flechette.t5.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t5.dmg,
					spread = db.t5.acc,
					moving_spread = db.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t5.min_pickup,
					ammo_pickup_max_mul = db.t5.max_pickup,
					fire_dot_data = db.t5.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			},
			wpn_fps_sho_basset_m_extended = {
				stats = {
					extra_ammo = 4,
					value = 1,
					concealment = -2
				}
			}
		}
		
		--grimm
		self.wpn_fps_sho_basset.override = {
			wpn_fps_upg_a_slug = {
				stats = {
					value = 5,
					total_ammo_mod = 0,
					damage = slug.t5.dmg,
					spread = slug.t5.acc,
					moving_spread = slug.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug.t5.min_pickup,
					ammo_pickup_max_mul = slug.t5.max_pickup,
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
					damage = buckshot.t5.dmg,
					spread = buckshot.t5.acc,
					moving_spread = buckshot.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t5.min_pickup,
					ammo_pickup_max_mul = buckshot.t5.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot.t5.dmg,
					spread = buckshot.t5.acc,
					moving_spread = buckshot.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot.t5.min_pickup,
					ammo_pickup_max_mul = buckshot.t5.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he.t5.dmg,
					spread = he.t5.acc,
					moving_spread = he.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he.t5.min_pickup,
					ammo_pickup_max_mul = he.t5.max_pickup,
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
					damage = flechette.t5.dmg,
					spread = flechette.t5.acc,
					moving_spread = flechette.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette.t5.min_pickup,
					ammo_pickup_max_mul = flechette.t5.max_pickup,
					dot_data = flechette.t5.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db.t5.dmg,
					spread = db.t5.acc,
					moving_spread = db.t5.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db.t5.min_pickup,
					ammo_pickup_max_mul = db.t5.max_pickup,
					fire_dot_data = db.t5.fire_dot_data,
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}
		}

	--ATTACHMENTS/AMMO---------------------------------------------------------------------------------------------------------------
	
		--Ammo
			-- -- Slugs
			-- self.parts.wpn_fps_upg_a_slug.stats = {
				-- value = 5,
				-- damage = 50,
				-- total_ammo_mod = 0,
				-- spread = 10,
				-- moving_spread = 10
			-- }
			-- self.parts.wpn_fps_upg_a_slug.custom_stats = {
				-- ammo_pickup_min_mul = 0.7,
				-- damage_near_mul = 2,
				-- damage_far_mul = 1.5,
				-- armor_piercing_add = 1,
				-- can_shoot_through_shield = true,
				-- can_shoot_through_wall = true,
				-- can_shoot_through_enemy = true,
				-- rays = 1
			-- }

			-- -- 000 Buckshot
			-- self.parts.wpn_fps_upg_a_custom.stats = {
					-- value = 5,
					-- total_ammo_mod = 2,
					-- damage = 20
				-- }
			-- self.parts.wpn_fps_upg_a_custom.custom_stats = {
					-- can_shoot_through_enemy = true,
					-- rays = 9
				-- }
			-- self.parts.wpn_fps_upg_a_custom_free.stats = {
					-- value = 5,
					-- total_ammo_mod = 2,
					-- damage = 20
				-- }
			-- self.parts.wpn_fps_upg_a_custom_free.custom_stats = {
					-- can_shoot_through_enemy = true,
					-- rays = 9
				-- }

			-- -- High Explosive
			-- self.parts.wpn_fps_upg_a_explosive.stats = {
				-- value = 5, 
				-- total_ammo_mod = -5,
				-- damage = 0,
				-- spread = -3,
				-- moving_spread = -3
			-- }
			-- self.parts.wpn_fps_upg_a_explosive.custom_stats = {
				-- ammo_pickup_min_mul = 0.3,
				-- ignore_statistic = true,
				-- damage_far_mul = 2.5,
				-- damage_near_mul = 2,
				-- rays = 3, 
				-- bullet_class = "InstantExplosiveBulletBase"
			-- }

			-- -- Flechette
			-- self.parts.wpn_fps_upg_a_piercing.stats = {value = 5}

			-- self.parts.wpn_fps_upg_a_piercing.custom_stats = {
				-- armor_piercing_add = 1, 
				-- rays = 16,
				-- bullet_class = "PoisonBulletBase",
				-- dot_data = {
					-- type = "poison",
					-- custom_data = {
						-- hurt_animation_chance = 0,
						-- dot_damage = 3,
						-- dot_length = 2.1,
						-- dot_tick_period = 0.4,
						-- scale_length = 0.8,
						-- scale_damage = 1.5
					-- }
				-- }
			-- }

			-- -- Dragon's Breath
			-- self.parts.wpn_fps_upg_a_dragons_breath.stats = {
				-- value = 5, 
				-- total_ammo_mod = 0, 
				-- damage = 0, 
				-- moving_spread = -3,
				-- spread = -3
			-- }
			-- self.parts.wpn_fps_upg_a_dragons_breath.custom_stats = {
				-- ammo_pickup_min_mul = 0.55,
				-- armor_piercing_add = 1, 
				-- ignore_statistic = true,  
				-- muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
				-- damage_far_mul = 0.7,
				-- can_shoot_through_shield = true, 
				-- bullet_class = "FlameBulletBase",
				-- rays = 24, 
				-- fire_dot_data = {
					-- dot_trigger_chance = "100",
					-- dot_damage = "6", 
					-- dot_length = "2.1", 
					-- dot_trigger_max_distance = "3000", 
					-- dot_tick_period = 0.1
				-- }
			-- }
		--Attachments
		
			--king's crown
			self.parts.wpn_fps_upg_shot_ns_king.stats.damage = 2
			
			--gecko cqb foregrip
			self.parts.wpn_fps_ass_galil_fg_mar.stats.concealment = 1
			
			--queen's wrath diminutive barrel
			self.parts.wpn_fps_ass_l85a2_b_short.stats.concealment = 2
			
			--ak5 cqb barrel
			self.parts.wpn_fps_ass_ak5_b_short.stats.concealment = 0
			
			--car 4 short barrel
			self.parts.wpn_fps_m4_uupg_b_short.stats.concealment = 0
			
			--car 4 stealth barrel
			self.parts.wpn_fps_m4_uupg_b_sd.stats.concealment = 0
			
			--straight grip
			self.parts.wpn_fps_upg_m4_g_mgrip.stats.concealment = 1
			
			--car folding stock
			self.parts.wpn_fps_m4_uupg_s_fold.stats.concealment = 2
			
			--ak modern barrel
			self.parts.wpn_fps_upg_ak_b_draco.stats.concealment = 0
			
			--ak modern barrel
			self.parts.wpn_fps_upg_ak_b_ak105.stats.concealment = 0
			
			--ak battleproven handguard
			self.parts.wpn_fps_upg_ak_fg_tapco.stats.concealment = 1
			
			--ak crabs rail
			self.parts.wpn_fps_upg_ak_fg_krebs.stats.concealment = 1
			
			--ak rubber grip
			self.parts.wpn_fps_upg_ak_g_hgrip.stats.concealment = 1
			
			--ak low drag mag
			self.parts.wpn_fps_upg_ak_m_uspalm.stats.concealment = 0
			
			--ak speed pull mag
			self.parts.wpn_fps_upg_ak_m_quick.stats.concealment = -1
			
			--ak skeletal stock
			self.parts.wpn_upg_ak_s_skfoldable.stats.concealment = 1
			
			--eagle short barrel
			self.parts.wpn_fps_ass_scar_b_short.stats.concealment = 2
			
			--gewehr plastic foregrip
			self.parts.wpn_fps_ass_g3_fg_retro_plastic.stats.concealment = 3
			
			--falcon cqb foregrip
			self.parts.wpn_fps_ass_fal_fg_01.stats.concealment = 2
			
			--falcon tactical grip
			self.parts.wpn_fps_ass_fal_g_01.stats.concealment = 0
			
			--falcon cqb foregrip
			self.parts.wpn_fps_ass_fal_s_01.stats.concealment = 1
			
			
			--conversion kits-----------------------------------------------------------------------------
			
				--CAR dmr kit
				self.parts.wpn_fps_upg_ass_m4_b_beowulf.custom_stats.ammo_pickup_min_mul = 0.25
				self.parts.wpn_fps_upg_ass_m4_b_beowulf.custom_stats.ammo_pickup_max_mul = 0.3333
				
				--AK dmr kit
				self.parts.wpn_fps_upg_ass_ak_b_zastava.custom_stats.ammo_pickup_min_mul = 0.4167
				self.parts.wpn_fps_upg_ass_ak_b_zastava.custom_stats.ammo_pickup_max_mul = 0.4167
				
				--overrides------------------------------------------------------------------------
					
					--amr
					self.wpn_fps_ass_m16.override = {
						wpn_fps_upg_ass_m4_b_beowulf = {
							stats = {
								spread = 4,
								total_ammo_mod = -8,
								damage = 66,
								concealment = -4,
								value = 1,
								recoil = -4
							},
							custom_stats = {
								ammo_pickup_max_mul = 0.4167,
								ammo_pickup_min_mul = 0.4167
							}
						}
					}
					--ak
					self.wpn_fps_ass_74.override = {
						wpn_fps_upg_ass_ak_b_zastava = {
							stats = {
								spread = 3,
								total_ammo_mod = -12,
								damage = 104,
								concealment = -4,
								value = 1,
								recoil = -9
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.25,
								ammo_pickup_max_mul = 0.3333
							}
						}
					}
					
					--gewehr
					self.wpn_fps_ass_g3.override = {
						wpn_fps_ass_g3_b_sniper = {
							stats = {
								extra_ammo = -5,
								total_ammo_mod = -10,
								damage = 61,
								value = 2,
								concealment = -2,
								recoil = -1,
								spread = 2
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.4167,
								ammo_pickup_max_mul = 0.4167
							},
							adds = {}
						},
						wpn_fps_ass_g3_b_short = {
							stats = {
								spread = -4,
								total_ammo_mod = 10,
								damage = -40,
								value = 2,
								concealment = 1,
								recoil = 5
							},
							custom_stats = {
								ammo_pickup_min_mul = 1.6667,
								ammo_pickup_max_mul = 1.25
							},
							adds = {}
						}
					}
				
end