if RequiredScript == "lib/tweak_data/weaponfactorytweakdata" then

	local original_init = WeaponFactoryTweakData.init
	function WeaponFactoryTweakData:init()
		original_init(self)
		self:attachments()
	end
		
	function WeaponFactoryTweakData:attachments()
		
		--OVERRRIDES---------------------------------------------------------------------------------------------------------------------

		local slug = {
			_155 = {
				dmg = 50,
				acc = 10,
				min_pickup = nil,
				max_pickup = nil
			},
			_90 = {
				dmg = 50,
				acc = 10,
				min_pickup = 0.7,
				max_pickup = nil
			},
			_55 = {
				dmg = 50,
				acc = 10,
				min_pickup = 0.7,
				max_pickup = nil
			},
			_42 = {
				dmg = 50,
				acc = 10,
				min_pickup = 0.7,
				max_pickup = nil
			},
			_18 = {
				dmg = 50,
				acc = 10,
				min_pickup = 0.7,
				max_pickup = nil
			}
		}
		
		local buckshot = {
			_155 = {
				dmg = 20,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil
			},
			_90 = {
				dmg = 20,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil
			},
			_55 = {
				dmg = 20,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil
			},
			_42 = {
				dmg = 20,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil
			},
			_18 = {
				dmg = 20,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil
			}
		}
		
		local he = {
			_155 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.3,
				max_pickup = nil
			},
			_90 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.3,
				max_pickup = nil
			},
			_55 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.3,
				max_pickup = nil
			},
			_42 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.3,
				max_pickup = nil
			},
			_18 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.3,
				max_pickup = nil
			}
		}
		
		local flechette = {
			_155 = {
				dmg = nil,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil,
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
			},
			_90 = {
				dmg = nil,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil,
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
			},
			_55 = {
				dmg = nil,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil,
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
			},
			_42 = {
				dmg = nil,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil,
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
			},
			_18 = {
				dmg = nil,
				acc = nil,
				min_pickup = nil,
				max_pickup = nil,
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
		}
		
		local db = {
			_155 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.55,
				max_pickup = nil,
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "6", 
					dot_length = "3.6", 
					dot_trigger_max_distance = "3000", 
					dot_tick_period = 0.5
				}
			},
			_90 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.55,
				max_pickup = nil,
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "6", 
					dot_length = "2.6", 
					dot_trigger_max_distance = "3000", 
					dot_tick_period = 0.5
				}
			},
			_55 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.55,
				max_pickup = nil,
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "6", 
					dot_length = "2.1", 
					dot_trigger_max_distance = "3000", 
					dot_tick_period = 0.5
				}
			},
			_42 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.55,
				max_pickup = nil,
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "6", 
					dot_length = "2.1", 
					dot_trigger_max_distance = "3000", 
					dot_tick_period = 0.5
				}
			},
			_18 = {
				dmg = nil,
				acc = -3,
				min_pickup = 0.55,
				max_pickup = nil,
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "6", 
					dot_length = "2.1", 
					dot_trigger_max_distance = "3000", 
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc,
					reload = 3
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._155.dmg,
					spread = slug._155.acc,
					moving_spread = slug._155.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._155.min_pickup,
					ammo_pickup_max_mul = slug._155.max_pickup,
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
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._155.dmg,
					spread = buckshot._155.acc,
					moving_spread = buckshot._155.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._155.min_pickup,
					ammo_pickup_max_mul = buckshot._155.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._155.dmg,
					spread = he._155.acc,
					moving_spread = he._155.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = he._155.min_pickup,
					ammo_pickup_max_mul = he._155.max_pickup,
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
					damage = flechette._155.dmg,
					spread = flechette._155.acc,
					moving_spread = flechette._155.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._155.min_pickup,
					ammo_pickup_max_mul = flechette._155.max_pickup,
					dot_data = flechette._155.dot_data,
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._155.dmg,
					spread = db._155.acc,
					moving_spread = db._155.acc,
					reload = 2
				},
				custom_stats = {
					ammo_pickup_min_mul = db._155.min_pickup,
					ammo_pickup_max_mul = db._155.max_pickup,
					fire_dot_data = db._155.fire_dot_data,
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
					damage = slug._90.dmg,
					spread = slug._90.acc,
					moving_spread = slug._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._90.min_pickup,
					ammo_pickup_max_mul = slug._90.max_pickup,
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
					damage = buckshot._90.dmg,
					spread = buckshot._90.acc,
					moving_spread = buckshot._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._90.min_pickup,
					ammo_pickup_max_mul = buckshot._90.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._90.dmg,
					spread = buckshot._90.acc,
					moving_spread = buckshot._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._90.min_pickup,
					ammo_pickup_max_mul = buckshot._90.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._90.dmg,
					spread = he._90.acc,
					moving_spread = he._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he._90.min_pickup,
					ammo_pickup_max_mul = he._90.max_pickup,
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
					damage = flechette._90.dmg,
					spread = flechette._90.acc,
					moving_spread = flechette._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._90.min_pickup,
					ammo_pickup_max_mul = flechette._90.max_pickup,
					dot_data = flechette._90.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._90.dmg,
					spread = db._90.acc,
					moving_spread = db._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db._90.min_pickup,
					ammo_pickup_max_mul = db._90.max_pickup,
					fire_dot_data = db._90.fire_dot_data
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
					damage = slug._90.dmg,
					spread = slug._90.acc,
					moving_spread = slug._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._90.min_pickup,
					ammo_pickup_max_mul = slug._90.max_pickup,
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
					damage = buckshot._90.dmg,
					spread = buckshot._90.acc,
					moving_spread = buckshot._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._90.min_pickup,
					ammo_pickup_max_mul = buckshot._90.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._90.dmg,
					spread = buckshot._90.acc,
					moving_spread = buckshot._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._90.min_pickup,
					ammo_pickup_max_mul = buckshot._90.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._90.dmg,
					spread = he._90.acc,
					moving_spread = he._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he._90.min_pickup,
					ammo_pickup_max_mul = he._90.max_pickup,
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
					damage = flechette._90.dmg,
					spread = flechette._90.acc,
					moving_spread = flechette._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._90.min_pickup,
					ammo_pickup_max_mul = flechette._90.max_pickup,
					dot_data = flechette._90.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._90.dmg,
					spread = db._90.acc,
					moving_spread = db._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db._90.min_pickup,
					ammo_pickup_max_mul = db._90.max_pickup,
					fire_dot_data = db._90.fire_dot_data
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
					damage = slug._90.dmg,
					spread = slug._90.acc,
					moving_spread = slug._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._90.min_pickup,
					ammo_pickup_max_mul = slug._90.max_pickup,
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
					damage = buckshot._90.dmg,
					spread = buckshot._90.acc,
					moving_spread = buckshot._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._90.min_pickup,
					ammo_pickup_max_mul = buckshot._90.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._90.dmg,
					spread = buckshot._90.acc,
					moving_spread = buckshot._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._90.min_pickup,
					ammo_pickup_max_mul = buckshot._90.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._90.dmg,
					spread = he._90.acc,
					moving_spread = he._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he._90.min_pickup,
					ammo_pickup_max_mul = he._90.max_pickup,
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
					damage = flechette._90.dmg,
					spread = flechette._90.acc,
					moving_spread = flechette._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._90.min_pickup,
					ammo_pickup_max_mul = flechette._90.max_pickup,
					dot_data = flechette._90.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._90.dmg,
					spread = db._90.acc,
					moving_spread = db._90.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db._90.min_pickup,
					ammo_pickup_max_mul = db._90.max_pickup,
					fire_dot_data = db._90.fire_dot_data
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
					damage = slug._55.dmg,
					spread = slug._55.acc,
					moving_spread = slug._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._55.min_pickup,
					ammo_pickup_max_mul = slug._55.max_pickup,
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
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._55.dmg,
					spread = he._55.acc,
					moving_spread = he._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he._55.min_pickup,
					ammo_pickup_max_mul = he._55.max_pickup,
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
					damage = flechette._55.dmg,
					spread = flechette._55.acc,
					moving_spread = flechette._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._55.min_pickup,
					ammo_pickup_max_mul = flechette._55.max_pickup,
					dot_data = flechette._55.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._55.dmg,
					spread = db._55.acc,
					moving_spread = db._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db._55.min_pickup,
					ammo_pickup_max_mul = db._55.max_pickup,
					fire_dot_data = db._55.fire_dot_data
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
					damage = slug._55.dmg,
					spread = slug._55.acc,
					moving_spread = slug._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._55.min_pickup,
					ammo_pickup_max_mul = slug._55.max_pickup,
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
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._55.dmg,
					spread = he._55.acc,
					moving_spread = he._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = he._55.min_pickup,
					ammo_pickup_max_mul = he._55.max_pickup,
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
					damage = flechette._55.dmg,
					spread = flechette._55.acc,
					moving_spread = flechette._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._55.min_pickup,
					ammo_pickup_max_mul = flechette._55.max_pickup,
					dot_data = flechette._55.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._55.dmg,
					spread = db._55.acc,
					moving_spread = db._55.acc,
					reload = 4
				},
				custom_stats = {
					ammo_pickup_min_mul = db._55.min_pickup,
					ammo_pickup_max_mul = db._55.max_pickup,
					fire_dot_data = db._55.fire_dot_data
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
					damage = slug._55.dmg,
					spread = slug._55.acc,
					moving_spread = slug._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._55.min_pickup,
					ammo_pickup_max_mul = slug._55.max_pickup,
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
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._55.dmg,
					spread = he._55.acc,
					moving_spread = he._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._55.min_pickup,
					ammo_pickup_max_mul = he._55.max_pickup,
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
					damage = flechette._55.dmg,
					spread = flechette._55.acc,
					moving_spread = flechette._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._55.min_pickup,
					ammo_pickup_max_mul = flechette._55.max_pickup,
					dot_data = flechette._55.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._55.dmg,
					spread = db._55.acc,
					moving_spread = db._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._55.min_pickup,
					ammo_pickup_max_mul = db._55.max_pickup,
					fire_dot_data = db._55.fire_dot_data
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
					damage = slug._55.dmg,
					spread = slug._55.acc,
					moving_spread = slug._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._55.min_pickup,
					ammo_pickup_max_mul = slug._55.max_pickup,
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
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._55.dmg,
					spread = buckshot._55.acc,
					moving_spread = buckshot._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._55.min_pickup,
					ammo_pickup_max_mul = buckshot._55.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._55.dmg,
					spread = he._55.acc,
					moving_spread = he._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._55.min_pickup,
					ammo_pickup_max_mul = he._55.max_pickup,
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
					damage = flechette._55.dmg,
					spread = flechette._55.acc,
					moving_spread = flechette._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._55.min_pickup,
					ammo_pickup_max_mul = flechette._55.max_pickup,
					dot_data = flechette._55.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._55.dmg,
					spread = db._55.acc,
					moving_spread = db._55.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._55.min_pickup,
					ammo_pickup_max_mul = db._55.max_pickup,
					fire_dot_data = db._55.fire_dot_data
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
					damage = slug._42.dmg,
					spread = slug._42.acc,
					moving_spread = slug._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._42.min_pickup,
					ammo_pickup_max_mul = slug._42.max_pickup,
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
					damage = buckshot._42.dmg,
					spread = buckshot._42.acc,
					moving_spread = buckshot._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._42.min_pickup,
					ammo_pickup_max_mul = buckshot._42.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._42.dmg,
					spread = buckshot._42.acc,
					moving_spread = buckshot._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._42.min_pickup,
					ammo_pickup_max_mul = buckshot._42.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._42.dmg,
					spread = he._42.acc,
					moving_spread = he._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._42.min_pickup,
					ammo_pickup_max_mul = he._42.max_pickup,
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
					damage = flechette._42.dmg,
					spread = flechette._42.acc,
					moving_spread = flechette._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._42.min_pickup,
					ammo_pickup_max_mul = flechette._42.max_pickup,
					dot_data = flechette._42.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._42.dmg,
					spread = db._42.acc,
					moving_spread = db._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._42.min_pickup,
					ammo_pickup_max_mul = db._42.max_pickup,
					fire_dot_data = db._42.fire_dot_data
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
					damage = slug._42.dmg,
					spread = slug._42.acc,
					moving_spread = slug._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._42.min_pickup,
					ammo_pickup_max_mul = slug._42.max_pickup,
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
					damage = buckshot._42.dmg,
					spread = buckshot._42.acc,
					moving_spread = buckshot._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._42.min_pickup,
					ammo_pickup_max_mul = buckshot._42.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._42.dmg,
					spread = buckshot._42.acc,
					moving_spread = buckshot._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._42.min_pickup,
					ammo_pickup_max_mul = buckshot._42.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._42.dmg,
					spread = he._42.acc,
					moving_spread = he._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._42.min_pickup,
					ammo_pickup_max_mul = he._42.max_pickup,
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
					damage = flechette._42.dmg,
					spread = flechette._42.acc,
					moving_spread = flechette._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._42.min_pickup,
					ammo_pickup_max_mul = flechette._42.max_pickup,
					dot_data = flechette._42.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._42.dmg,
					spread = db._42.acc,
					moving_spread = db._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._42.min_pickup,
					ammo_pickup_max_mul = db._42.max_pickup,
					fire_dot_data = db._42.fire_dot_data
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
					damage = slug._42.dmg,
					spread = slug._42.acc,
					moving_spread = slug._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._42.min_pickup,
					ammo_pickup_max_mul = slug._42.max_pickup,
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
					damage = buckshot._42.dmg,
					spread = buckshot._42.acc,
					moving_spread = buckshot._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._42.min_pickup,
					ammo_pickup_max_mul = buckshot._42.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._42.dmg,
					spread = buckshot._42.acc,
					moving_spread = buckshot._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._42.min_pickup,
					ammo_pickup_max_mul = buckshot._42.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._42.dmg,
					spread = he._42.acc,
					moving_spread = he._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._42.min_pickup,
					ammo_pickup_max_mul = he._42.max_pickup,
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
					damage = flechette._42.dmg,
					spread = flechette._42.acc,
					moving_spread = flechette._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._42.min_pickup,
					ammo_pickup_max_mul = flechette._42.max_pickup,
					dot_data = flechette._42.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._42.dmg,
					spread = db._42.acc,
					moving_spread = db._42.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._42.min_pickup,
					ammo_pickup_max_mul = db._42.max_pickup,
					fire_dot_data = db._42.fire_dot_data
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
					damage = slug._18.dmg,
					spread = slug._18.acc,
					moving_spread = slug._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._18.min_pickup,
					ammo_pickup_max_mul = slug._18.max_pickup,
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
					damage = buckshot._18.dmg,
					spread = buckshot._18.acc,
					moving_spread = buckshot._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._18.min_pickup,
					ammo_pickup_max_mul = buckshot._18.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._18.dmg,
					spread = buckshot._18.acc,
					moving_spread = buckshot._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._18.min_pickup,
					ammo_pickup_max_mul = buckshot._18.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._18.dmg,
					spread = he._18.acc,
					moving_spread = he._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._18.min_pickup,
					ammo_pickup_max_mul = he._18.max_pickup,
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
					damage = flechette._18.dmg,
					spread = flechette._18.acc,
					moving_spread = flechette._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._18.min_pickup,
					ammo_pickup_max_mul = flechette._18.max_pickup,
					dot_data = flechette._18.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._18.dmg,
					spread = db._18.acc,
					moving_spread = db._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._18.min_pickup,
					ammo_pickup_max_mul = db._18.max_pickup,
					fire_dot_data = db._18.fire_dot_data
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
					damage = slug._18.dmg,
					spread = slug._18.acc,
					moving_spread = slug._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = slug._18.min_pickup,
					ammo_pickup_max_mul = slug._18.max_pickup,
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
					damage = buckshot._18.dmg,
					spread = buckshot._18.acc,
					moving_spread = buckshot._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._18.min_pickup,
					ammo_pickup_max_mul = buckshot._18.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_custom_free = {
				stats = {
					value = 5,
					total_ammo_mod = 2,
					damage = buckshot._18.dmg,
					spread = buckshot._18.acc,
					moving_spread = buckshot._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = buckshot._18.min_pickup,
					ammo_pickup_max_mul = buckshot._18.max_pickup,
					can_shoot_through_enemy = true,
					rays = 9
				}
			},
			wpn_fps_upg_a_explosive = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = he._18.dmg,
					spread = he._18.acc,
					moving_spread = he._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = he._18.min_pickup,
					ammo_pickup_max_mul = he._18.max_pickup,
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
					damage = flechette._18.dmg,
					spread = flechette._18.acc,
					moving_spread = flechette._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = flechette._18.min_pickup,
					ammo_pickup_max_mul = flechette._18.max_pickup,
					dot_data = flechette._18.dot_data
					armor_piercing_add = 1, 
					rays = 16,
					bullet_class = "PoisonBulletBase"
				}
			},
			wpn_fps_upg_a_dragons_breath = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = db._18.dmg,
					spread = db._18.acc,
					moving_spread = db._18.acc
				},
				custom_stats = {
					ammo_pickup_min_mul = db._18.min_pickup,
					ammo_pickup_max_mul = db._18.max_pickup,
					fire_dot_data = db._18.fire_dot_data
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 24
				}
			}

		--ATTACHMENTS/AMMO---------------------------------------------------------------------------------------------------------------
		
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
		self.parts.wpn_fps_upg_a_custom.stats = {
				value = 5,
				total_ammo_mod = 2,
				damage = 20
			}
		self.parts.wpn_fps_upg_a_custom.custom_stats = {
				can_shoot_through_enemy = true,
				rays = 9
			}
		self.parts.wpn_fps_upg_a_custom_free.stats = {
				value = 5,
				total_ammo_mod = 2,
				damage = 20
			}
		self.parts.wpn_fps_upg_a_custom_free.custom_stats = {
				can_shoot_through_enemy = true,
				rays = 9
			}

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
			damage_far_mul = 0.7,
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