Hooks:PostHook(WeaponFactoryTweakData, "init", "WR WeaponFactoryTweakData init", function(self)

	--SHOTGUN OVERRIDES--------------------------------------------------------------------------------------------------------------

		local buckshot = {
			t5 = {
				stats = {
					value = 5,
					damage = 48,
					spread = nil,
					moving_spread = nil
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					can_shoot_through_enemy = true,
					max_enemy_penetrations = 1,
					can_shoot_through_wall = true,
					max_wall_penetration_distance = 550,
					max_wall_penetrations = 1,
					rays = 9
				}
			},
			t4 = {
				stats = {
					value = 5,
					damage = 26,
					spread = nil,
					moving_spread = nil
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					can_shoot_through_enemy = true,
					max_enemy_penetrations = 1,
					can_shoot_through_wall = true,
					max_wall_penetration_distance = 550,
					max_wall_penetrations = 1,
					rays = 9
				}
			},
			t3 = {
				stats = {
					value = 5,
					damage = 20,
					spread = nil,
					moving_spread = nil
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					can_shoot_through_enemy = true,
					max_enemy_penetrations = 1,
					can_shoot_through_wall = true,
					max_wall_penetration_distance = 550,
					max_wall_penetrations = 1,
					rays = 9
				}
			},
			t2 = {
				stats = {
					value = 5,
					damage = 17,
					spread = nil,
					moving_spread = nil
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					can_shoot_through_enemy = true,
					max_enemy_penetrations = 1,
					can_shoot_through_wall = true,
					max_wall_penetration_distance = 550,
					max_wall_penetrations = 1,
					rays = 9
				}
			},
			t1 = {
				stats = {
					value = 5,
					damage = 13,
					spread = nil,
					moving_spread = nil
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					can_shoot_through_enemy = true,
					max_enemy_penetrations = 1,
					can_shoot_through_wall = true,
					max_wall_penetration_distance = 550,
					max_wall_penetrations = 1,
					rays = 9
				}
			}
		}
		
		local slug = {
			t5 = {
				stats = {
					value = 5,
					damage = 74,
					spread = 10,
					moving_spread = 10
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					--[[ falloff_override = {
						optimal_distance = 0,
						optimal_range = 4000,
						near_falloff = 0,
						far_falloff = 4500,
						near_mul = 1,
						far_mul = 0
					}, ]]
					damage_near_mul = 2,
					damage_far_mul = 1.5,
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					can_shoot_through_enemy = true,
					max_penetrations = 8,
					rays = 1
				}
			},
			t4 = {
				stats = {
					value = 5,
					damage = 61,
					spread = 10,
					moving_spread = 10
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					damage_near_mul = 2,
					damage_far_mul = 1.5,
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					can_shoot_through_enemy = true,
					max_penetrations = 8,
					rays = 1
				}
			},
			t3 = {
				stats = {
					value = 5,
					damage = 32,
					spread = 10,
					moving_spread = 10
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					damage_near_mul = 2,
					damage_far_mul = 1.5,
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					can_shoot_through_enemy = true,
					max_penetrations = 8,
					rays = 1
				}
			},
			t2 = {
				stats = {
					value = 5,
					damage = 30,
					spread = 10,
					moving_spread = 10
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					damage_near_mul = 2,
					damage_far_mul = 1.5,
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					can_shoot_through_enemy = true,
					max_penetrations = 8,
					rays = 1
				}
			},
			t1 = {
				stats = {
					value = 5,
					damage = 20,
					spread = 10,
					moving_spread = 10
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					damage_near_mul = 2,
					damage_far_mul = 1.5,
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					can_shoot_through_enemy = true,
					max_penetrations = 8,
					rays = 1
				}
			}
		}
		
		local he = {
			t5 = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = 9,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.5,
					ammo_pickup_max_mul = 0.4,
					ignore_statistic = true,
					--[[ falloff_override = {
						optimal_distance = 0,
						optimal_range = 4000,
						near_falloff = 0,
						far_falloff = 11500,
						near_mul = 1,
						far_mul = 0
					}, ]]
					damage_far_mul = 2.5,
					damage_near_mul = 2,
					rays = 3, 
					bullet_class = "InstantExplosiveBulletBase"
				}
			},
			t4 = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = nil,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.8,
					ammo_pickup_max_mul = 0.4,
					ignore_statistic = true,
					damage_far_mul = 2.5,
					damage_near_mul = 2,
					rays = 3, 
					bullet_class = "InstantExplosiveBulletBase"
				}
			},
			t3 = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = nil,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.3022,
					ammo_pickup_max_mul = 0.3733,
					ignore_statistic = true,
					damage_far_mul = 2.5,
					damage_near_mul = 2,
					rays = 3, 
					bullet_class = "InstantExplosiveBulletBase"
				}
			},
			t2 = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = nil,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.4681,
					ammo_pickup_max_mul = 0.3563,
					ignore_statistic = true,
					damage_far_mul = 2.5,
					damage_near_mul = 2,
					rays = 3, 
					bullet_class = "InstantExplosiveBulletBase"
				}
			},
			t1 = {
				stats = {
					value = 5, 
					total_ammo_mod = -5,
					damage = nil,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.5,
					ammo_pickup_max_mul = 0.5474,
					ignore_statistic = true,
					damage_far_mul = 2.5,
					damage_near_mul = 2,
					rays = 3, 
					bullet_class = "InstantExplosiveBulletBase"
				}
			}
		}
		
		local db = {
			t5 = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = -60,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.4,
					ammo_pickup_max_mul = 0.5,
					dot_data = {
						type = "fire",
						custom_data = {
							damage = 28,
							dot_length = 5.1,
							dot_trigger_max_distance = 2000,
							dot_tick_period = 0.5,
							scale_length = 5,
							diminish_scale_length = 15,
							dot_can_crit = true
							
						}
					},
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					--[[ falloff_override = {
						optimal_distance = 0,
						optimal_range = 2000,
						near_falloff = 0,
						far_falloff = 2100,
						near_mul = 1,
						far_mul = 0
					}, ]]
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 12
				}
			},
			t4 = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = -30,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.4,
					ammo_pickup_max_mul = 0.5,
					dot_data = {
						type = "fire",
						custom_data = {
							damage = 24,
							dot_length = 4.1,
							dot_trigger_max_distance = 2000,
							dot_tick_period = 0.5,
							scale_length = 4,
							diminish_scale_length = 10,
							dot_can_crit = true
							
						}
					},
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 12
				}
			},
			t3 = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = -20,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.4,
					ammo_pickup_max_mul = 0.5,
					dot_data = {
						type = "fire",
						custom_data = {
							damage = 18,
							dot_length = 4.1,
							dot_trigger_max_distance = 2000,
							dot_tick_period = 0.5,
							scale_length = 3,
							diminish_scale_length = 8,
							dot_can_crit = true
							
						}
					},
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 12
				}
			},
			t2 = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = -15,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.4,
					ammo_pickup_max_mul = 0.5,
					dot_data = {
						type = "fire",
						custom_data = {
							damage = 18, 
							dot_length = 3.1,
							dot_trigger_max_distance = 2000,
							dot_tick_period = 0.5,
							scale_length = 2.5,
							diminish_scale_length = 8,
							dot_can_crit = true
							
						}
					},
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 12
				}
			},
			t1 = {
				stats = {
					value = 5, 
					total_ammo_mod = 0, 
					damage = -6,
					spread = -3,
					moving_spread = -3
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.4,
					ammo_pickup_max_mul = 0.5,
					dot_data = {
						type = "fire",
						custom_data = {
							damage = 14,
							dot_length = 2.1,
							dot_trigger_max_distance = 2000,
							dot_tick_period = 0.5,
							scale_length = 2,
							diminish_scale_length = 8,
							dot_can_crit = true
							
						}
					},
					armor_piercing_add = 1, 
					ignore_statistic = true,  
					muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
					damage_far_mul = 0.7,
					can_shoot_through_shield = true, 
					bullet_class = "FlameBulletBase",
					rays = 12
				}
			}
		}
		
		local flechette = {
			t5 = {
				stats = {
					value = 5,
					damage = -103,
					spread = -1,
					moving_spread = -1
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = 0.667,
					dot_data = {
						type = "poison",
						custom_data = {
							damage = 95,
							dot_tick_period = 0.5,
							scale_damage = 240,
							damage_decay = 5,
							decay_period = 0.5
						}
					},
					armor_piercing_add = 1, 
					rays = 12,
					bullet_class = "DOTBulletBase"
				}
			},
			t4 = {
				stats = {
					value = 5,
					damage = -90,
					spread = -1,
					moving_spread = -1
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = 0.8,
					dot_data = {
						type = "poison",
						custom_data = {
							damage = 95,
							dot_tick_period = 0.5,
							scale_damage = 65,
							damage_decay = 5,
							decay_period = 0.5
						}
					},
					armor_piercing_add = 1, 
					rays = 12,
					bullet_class = "DOTBulletBase"
				}
			},
			t3 = {
				stats = {
					value = 5,
					damage = -37,
					spread = -1,
					moving_spread = -1
				},
				custom_stats = {
					ammo_pickup_min_mul = 0.667,
					ammo_pickup_max_mul = 0.667,
					dot_data = {
						type = "poison",
						custom_data = {
							damage = 90,
							dot_tick_period = 0.5,
							scale_damage = 60,
							damage_decay = 10,
							decay_period = 0.5
						}
					},
					armor_piercing_add = 1, 
					rays = 12,
					bullet_class = "DOTBulletBase"
				}
			},
			t2 = {
				stats = {
					value = 5,
					damage = -28,
					spread = -1,
					moving_spread = -1
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = 0.667,
					dot_data = {
						type = "poison",
						custom_data = {
							damage = 60,
							dot_tick_period = 0.5,
							scale_damage = 40,
							damage_decay = 5,
							decay_period = 0.5
						}
					},
					armor_piercing_add = 1, 
					rays = 12,
					bullet_class = "DOTBulletBase"
				}
			},
			t1 = {
				stats = {
					value = 5,
					damage = -12,
					spread = -1,
					moving_spread = -1
				},
				custom_stats = {
					ammo_pickup_min_mul = nil,
					ammo_pickup_max_mul = nil,
					dot_data = {
						type = "poison",
						custom_data = {
							damage = 30,
							dot_tick_period = 0.5,
							scale_damage = 30,
							damage_decay = 10,
							decay_period = 0.5
						}
					},
					armor_piercing_add = 1, 
					rays = 12,
					bullet_class = "DOTBulletBase"
				}
			}
		}
		
		--155 damage shotguns-----------------------------------------------------------
		
			--mosconi
			self.wpn_fps_shot_huntsman.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5)
			}
			local wpn_fps_shot_huntsman = {reload_modifier = 3}
			self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_shot_huntsman.reload_modifier
			self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_shot_huntsman.reload_modifier
			self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_shot_huntsman.reload_modifier
			self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_shot_huntsman.reload_modifier
			self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_shot_huntsman.reload_modifier
			self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_shot_huntsman.reload_modifier
		
			--joceline
			self.wpn_fps_shot_b682.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5)
			}
			local wpn_fps_shot_b682 = {reload_modifier = 3}
			self.wpn_fps_shot_b682.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_shot_b682.reload_modifier
			self.wpn_fps_shot_b682.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_shot_b682.reload_modifier
			self.wpn_fps_shot_b682.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_shot_b682.reload_modifier
			self.wpn_fps_shot_b682.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_shot_b682.reload_modifier
			self.wpn_fps_shot_b682.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_shot_b682.reload_modifier
			self.wpn_fps_shot_b682.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_shot_b682.reload_modifier
			
			--breaker
			self.wpn_fps_sho_boot.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5)
			}
			
			--akimbo judge
			self.wpn_fps_pis_x_judge.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5),
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
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5),
				wpn_fps_upg_ns_shot_shark = {parent = "slide"},
				wpn_fps_upg_ns_shot_thick = {parent = "slide"},
				wpn_fps_upg_shot_ns_king = {parent = "slide"},
				wpn_fps_upg_ns_sho_salvo_large = {parent = "slide"},
				wpn_fps_upg_ns_duck = {parent = "slide"}
			}
			
			--gsps
			self.wpn_fps_shot_m37.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5)
			}
			local wpn_fps_shot_m37 = {reload_modifier = 4}
			self.wpn_fps_shot_m37.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_shot_m37.reload_modifier
			self.wpn_fps_shot_m37.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_shot_m37.reload_modifier
			self.wpn_fps_shot_m37.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_shot_m37.reload_modifier
			self.wpn_fps_shot_m37.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_shot_m37.reload_modifier
			self.wpn_fps_shot_m37.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_shot_m37.reload_modifier
			self.wpn_fps_shot_m37.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_shot_m37.reload_modifier
			
			--claire
			self.wpn_fps_sho_coach.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t5),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t5),
				wpn_fps_upg_a_slug = deep_clone(slug.t5),
				wpn_fps_upg_a_explosive = deep_clone(he.t5),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t5),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t5)
			}
			local wpn_fps_sho_coach = {reload_modifier = 2}
			self.wpn_fps_sho_coach.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_sho_coach.reload_modifier
			self.wpn_fps_sho_coach.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_sho_coach.reload_modifier
			self.wpn_fps_sho_coach.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_sho_coach.reload_modifier
			self.wpn_fps_sho_coach.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_sho_coach.reload_modifier
			self.wpn_fps_sho_coach.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_sho_coach.reload_modifier
			self.wpn_fps_sho_coach.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_sho_coach.reload_modifier
		
		--110 damage shotguns------------------------------------------------------------
		
			--raven
			self.wpn_fps_sho_ksg.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t4),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t4),
				wpn_fps_upg_a_slug = deep_clone(slug.t4),
				wpn_fps_upg_a_explosive = deep_clone(he.t4),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t4),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t4)
			}
			local wpn_fps_sho_ksg = {reload_modifier = 3}
			self.wpn_fps_sho_ksg.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_sho_ksg.reload_modifier
			self.wpn_fps_sho_ksg.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_sho_ksg.reload_modifier
			self.wpn_fps_sho_ksg.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_sho_ksg.reload_modifier
			self.wpn_fps_sho_ksg.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_sho_ksg.reload_modifier
			self.wpn_fps_sho_ksg.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_sho_ksg.reload_modifier
			self.wpn_fps_sho_ksg.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_sho_ksg.reload_modifier

			--reinfeld 880
			self.wpn_fps_shot_r870.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t4),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t4),
				wpn_fps_upg_a_slug = deep_clone(slug.t4),
				wpn_fps_upg_a_explosive = deep_clone(he.t4),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t4),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t4)
			}
			local wpn_fps_shot_r870 = {reload_modifier = 3}
			self.wpn_fps_shot_r870.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_shot_r870.reload_modifier
			self.wpn_fps_shot_r870.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_shot_r870.reload_modifier
			self.wpn_fps_shot_r870.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_shot_r870.reload_modifier
			self.wpn_fps_shot_r870.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_shot_r870.reload_modifier
			self.wpn_fps_shot_r870.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_shot_r870.reload_modifier
			self.wpn_fps_shot_r870.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_shot_r870.reload_modifier
			
			--reinfeld 88
			self.wpn_fps_shot_m1897.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t4),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t4),
				wpn_fps_upg_a_slug = deep_clone(slug.t4),
				wpn_fps_upg_a_explosive = deep_clone(he.t4),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t4),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t4)
			}
			local wpn_fps_shot_m1897 = {reload_modifier = 3}
			self.wpn_fps_shot_m1897.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_shot_m1897.reload_modifier
			self.wpn_fps_shot_m1897.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_shot_m1897.reload_modifier
			self.wpn_fps_shot_m1897.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_shot_m1897.reload_modifier
			self.wpn_fps_shot_m1897.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_shot_m1897.reload_modifier
			self.wpn_fps_shot_m1897.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_shot_m1897.reload_modifier
			self.wpn_fps_shot_m1897.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_shot_m1897.reload_modifier
			
			--mosconi tactical
			self.wpn_fps_sho_m590.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t4),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t4),
				wpn_fps_upg_a_slug = deep_clone(slug.t4),
				wpn_fps_upg_a_explosive = deep_clone(he.t4),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t4),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t4)
			}
			
			--locomotive
			self.wpn_fps_shot_serbu.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t4),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t4),
				wpn_fps_upg_a_slug = deep_clone(slug.t4),
				wpn_fps_upg_a_explosive = deep_clone(he.t4),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t4),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t4)
			}
			local wpn_fps_shot_serbu = {reload_modifier = 3}
			self.wpn_fps_shot_serbu.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_shot_serbu.reload_modifier
			self.wpn_fps_shot_serbu.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_shot_serbu.reload_modifier
			self.wpn_fps_shot_serbu.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_shot_serbu.reload_modifier
			self.wpn_fps_shot_serbu.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_shot_serbu.reload_modifier
			self.wpn_fps_shot_serbu.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_shot_serbu.reload_modifier
			self.wpn_fps_shot_serbu.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_shot_serbu.reload_modifier

		--55 damage shotguns-----------------------------------------------------------
		
			--predator
			self.wpn_fps_sho_spas12.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t3),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t3),
				wpn_fps_upg_a_slug = deep_clone(slug.t3),
				wpn_fps_upg_a_explosive = deep_clone(he.t3),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t3),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t3)
			}
			local wpn_fps_sho_spas12 = {reload_modifier = 4}
			self.wpn_fps_sho_spas12.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_sho_spas12.reload_modifier
			self.wpn_fps_sho_spas12.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_sho_spas12.reload_modifier
			self.wpn_fps_sho_spas12.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_sho_spas12.reload_modifier
			self.wpn_fps_sho_spas12.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_sho_spas12.reload_modifier
			self.wpn_fps_sho_spas12.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_sho_spas12.reload_modifier
			self.wpn_fps_sho_spas12.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_sho_spas12.reload_modifier
			
			--m1014
			self.wpn_fps_sho_ben.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t3),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t3),
				wpn_fps_upg_a_slug = deep_clone(slug.t3),
				wpn_fps_upg_a_explosive = deep_clone(he.t3),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t3),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t3)
			}
			local wpn_fps_sho_ben = {reload_modifier = 4}
			self.wpn_fps_sho_ben.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_sho_ben.reload_modifier
			self.wpn_fps_sho_ben.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_sho_ben.reload_modifier
			self.wpn_fps_sho_ben.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_sho_ben.reload_modifier
			self.wpn_fps_sho_ben.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_sho_ben.reload_modifier
			self.wpn_fps_sho_ben.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_sho_ben.reload_modifier
			self.wpn_fps_sho_ben.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_sho_ben.reload_modifier
			
			--street sweeper
			self.wpn_fps_sho_striker.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t3),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t3),
				wpn_fps_upg_a_slug = deep_clone(slug.t3),
				wpn_fps_upg_a_explosive = deep_clone(he.t3),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t3),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t3)
			}
			local wpn_fps_sho_striker = {reload_modifier = 2}
			self.wpn_fps_sho_striker.override.wpn_fps_upg_a_slug.stats.reload = wpn_fps_sho_striker.reload_modifier
			self.wpn_fps_sho_striker.override.wpn_fps_upg_a_custom.stats.reload = wpn_fps_sho_striker.reload_modifier
			self.wpn_fps_sho_striker.override.wpn_fps_upg_a_custom_free.stats.reload = wpn_fps_sho_striker.reload_modifier
			self.wpn_fps_sho_striker.override.wpn_fps_upg_a_explosive.stats.reload = wpn_fps_sho_striker.reload_modifier
			self.wpn_fps_sho_striker.override.wpn_fps_upg_a_piercing.stats.reload = wpn_fps_sho_striker.reload_modifier
			self.wpn_fps_sho_striker.override.wpn_fps_upg_a_dragons_breath.stats.reload = wpn_fps_sho_striker.reload_modifier

		--42 damage shotguns-----------------------------------------------------------

			--izhma
			self.wpn_fps_shot_saiga.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t2),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t2),
				wpn_fps_upg_a_slug = deep_clone(slug.t2),
				wpn_fps_upg_a_explosive = deep_clone(he.t2),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t2),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t2)
			}
			
			--steakout
			self.wpn_fps_sho_aa12.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t2),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t2),
				wpn_fps_upg_a_slug = deep_clone(slug.t2),
				wpn_fps_upg_a_explosive = deep_clone(he.t2),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t2),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t2)
			}
			
			--akimbo goliath
			self.wpn_fps_sho_x_rota.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t2),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t2),
				wpn_fps_upg_a_slug = deep_clone(slug.t2),
				wpn_fps_upg_a_explosive = deep_clone(he.t2),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t2),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t2)
			}
			
			--goliath
			self.wpn_fps_sho_rota.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t2),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t2),
				wpn_fps_upg_a_slug = deep_clone(slug.t2),
				wpn_fps_upg_a_explosive = deep_clone(he.t2),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t2),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t2)
			}
		
		--18 damage shotguns-----------------------------------------------------------
		
			--brothers grimm
			self.wpn_fps_sho_x_basset.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t1),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t1),
				wpn_fps_upg_a_slug = deep_clone(slug.t1),
				wpn_fps_upg_a_explosive = deep_clone(he.t1),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t1),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t1)
			}
			
			--grimm
			self.wpn_fps_sho_basset.override = {
				wpn_fps_upg_a_custom = deep_clone(buckshot.t1),
				wpn_fps_upg_a_custom_free = deep_clone(buckshot.t1),
				wpn_fps_upg_a_slug = deep_clone(slug.t1),
				wpn_fps_upg_a_explosive = deep_clone(he.t1),
				wpn_fps_upg_a_dragons_breath = deep_clone(db.t1),
				wpn_fps_upg_a_piercing = deep_clone(flechette.t1)
			}

	--ATTACHMENTS/AMMO---------------------------------------------------------------------------------------------------------------

		--Attachments
			
			--Barrel Extensions
				
				--AR/MG
					-- Medium Suppressor
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.damage = -3
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.concealment = -2
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.suppression = 12
					
					-- Low Profile Suppressor
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.damage = -5
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.recoil = 0
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.concealment = 0
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.suppression = 12
					
					
					-- Stubby Compensator
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.recoil = 3
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.concealment = 0
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.suppression = -1
					
					
					-- The Tank Compensator
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.spread = 3
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.concealment = -1
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.suppression = -2
					
					
					-- Fire Breather Nozzle
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.spread = -1
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.recoil = 4
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.concealment = 0
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.suppression = -5
					
					
					-- The Bigger the Better Suppressor
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.damage = -1
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.spread = 2
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.concealment = -3
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.suppression = 12
					
					
					-- Competitior's Compensator
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.spread = 1
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.recoil = 3
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.concealment = -1
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.suppression = -1
					
					
					-- Funnel of Fun Nozzle
					self.parts.wpn_fps_upg_ass_ns_linear.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_linear.stats.spread = -2
					self.parts.wpn_fps_upg_ass_ns_linear.stats.recoil = 5
					self.parts.wpn_fps_upg_ass_ns_linear.stats.concealment = -1
					self.parts.wpn_fps_upg_ass_ns_linear.stats.suppression = -5
					
					
					-- Tactical Compensator
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.spread = 5
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.recoil = -2
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.concealment = -1
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.suppression = 0
					
					
					-- Ported Compensator
					self.parts.wpn_fps_upg_ass_ns_battle.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_battle.stats.spread = 1
					self.parts.wpn_fps_upg_ass_ns_battle.stats.recoil = 2
					self.parts.wpn_fps_upg_ass_ns_battle.stats.concealment = 0
					self.parts.wpn_fps_upg_ass_ns_battle.stats.suppression = 0
					
					
					-- Marmon Compensator
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.spread = 2
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.recoil = 2
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.concealment = -1
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.suppression = -3
					
					
					--Precision Barrel(Kross Vertex)
					self.parts.wpn_fps_smg_polymer_barrel_precision.stats.damage = 0
					self.parts.wpn_fps_smg_polymer_barrel_precision.stats.spread = 4
					self.parts.wpn_fps_smg_polymer_barrel_precision.stats.recoil = 2
					self.parts.wpn_fps_smg_polymer_barrel_precision.stats.concealment = -4
					self.parts.wpn_fps_smg_polymer_barrel_precision.stats.suppression = 0
					
					
					--HPS Suppressor(Kross Vertex)
					self.parts.wpn_fps_smg_polymer_ns_silencer.stats.damage = -3
					self.parts.wpn_fps_smg_polymer_ns_silencer.stats.spread = 0
					self.parts.wpn_fps_smg_polymer_ns_silencer.stats.recoil = 1
					self.parts.wpn_fps_smg_polymer_ns_silencer.stats.concealment = -1
					self.parts.wpn_fps_smg_polymer_ns_silencer.stats.suppression = 12
					
					
					--Futomaki Suppressor(Micro Uzi)
					self.parts.wpn_fps_smg_baka_b_longsupp.stats.damage = 0
					self.parts.wpn_fps_smg_baka_b_longsupp.stats.spread = 3
					self.parts.wpn_fps_smg_baka_b_longsupp.stats.recoil = 1
					self.parts.wpn_fps_smg_baka_b_longsupp.stats.concealment = -4
					self.parts.wpn_fps_smg_baka_b_longsupp.stats.suppression = 12
					
					
					--Maki Suppressor(Micro Uzi)
					self.parts.wpn_fps_smg_baka_b_midsupp.stats.damage = -2
					self.parts.wpn_fps_smg_baka_b_midsupp.stats.spread = 0
					self.parts.wpn_fps_smg_baka_b_midsupp.stats.recoil = 2
					self.parts.wpn_fps_smg_baka_b_midsupp.stats.concealment = -2
					self.parts.wpn_fps_smg_baka_b_midsupp.stats.suppression = 12
					
					
					--Suppressed Barrel(SpecOps)
					self.parts.wpn_fps_smg_mp7_b_suppressed.stats.damage = -1
					self.parts.wpn_fps_smg_mp7_b_suppressed.stats.spread = 2
					self.parts.wpn_fps_smg_mp7_b_suppressed.stats.recoil = 2
					self.parts.wpn_fps_smg_mp7_b_suppressed.stats.concealment = -2
					self.parts.wpn_fps_smg_mp7_b_suppressed.stats.suppression = 12
					
					
					--Silent Death(Uzi)
					self.parts.wpn_fps_smg_uzi_b_suppressed.stats.damage = 0
					self.parts.wpn_fps_smg_uzi_b_suppressed.stats.spread = -1
					self.parts.wpn_fps_smg_uzi_b_suppressed.stats.recoil = 1
					self.parts.wpn_fps_smg_uzi_b_suppressed.stats.concealment = -2
					self.parts.wpn_fps_smg_uzi_b_suppressed.stats.suppression = 12
					
					
					--Suppressor(Cobra)
					self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.damage = 0
					self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.spread = -1
					self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.recoil = 1
					self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.concealment = -2
					self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.suppression = 12
					
					
					--Tishina Suppressor(Heather)
					self.parts.wpn_fps_smg_sr2_ns_silencer.stats.damage = -2
					self.parts.wpn_fps_smg_sr2_ns_silencer.stats.spread = 0
					self.parts.wpn_fps_smg_sr2_ns_silencer.stats.recoil = 2
					self.parts.wpn_fps_smg_sr2_ns_silencer.stats.concealment = -2
					self.parts.wpn_fps_smg_sr2_ns_silencer.stats.suppression = 12
					
					
					--Slotted Barrel Extension(Jacket's Piece/Mark 10)
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.damage = 0
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.spread = 3
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.recoil = 2
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.concealment = -2
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.suppression = 0
					
					
					--Werbell's Suppressor(Jacket's Piece/Mark 10)
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.damage = -3
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.spread = 0
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.recoil = 1
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.concealment = -1
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.suppression = 12
					
					
					--PBS Suppressor(AKs)
					self.parts.wpn_fps_upg_ns_ass_pbs1.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_pbs1.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_pbs1.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_pbs1.stats.concealment = -4
					self.parts.wpn_fps_upg_ns_ass_pbs1.stats.suppression = 12
					
					
					--Silentgear Silencer(Jackal)
					self.parts.wpn_fps_smg_schakal_ns_silencer.stats.damage = -3
					self.parts.wpn_fps_smg_schakal_ns_silencer.stats.spread = 0
					self.parts.wpn_fps_smg_schakal_ns_silencer.stats.recoil = 1
					self.parts.wpn_fps_smg_schakal_ns_silencer.stats.concealment = -1
					self.parts.wpn_fps_smg_schakal_ns_silencer.stats.suppression = 12
					
					
					--Bootstrap Compensator(Bootleg/Little Friend)
					self.parts.wpn_fps_ass_tecci_ns_special.stats.damage = 0
					self.parts.wpn_fps_ass_tecci_ns_special.stats.spread = 2
					self.parts.wpn_fps_ass_tecci_ns_special.stats.recoil = 3
					self.parts.wpn_fps_ass_tecci_ns_special.stats.concealment = -2
					self.parts.wpn_fps_ass_tecci_ns_special.stats.suppression = 1
					
					
					
				--Shotgun
					--king's crown
					self.parts.wpn_fps_upg_shot_ns_king.stats.damage = 2
			
			
			--Magazines
				
				--Speed Pull Magazines
					local speed_pull = 2
					self.parts.wpn_fps_ass_tecci_ns_special.stats.reload = speed_pull
					self.parts.wpn_fps_ass_aug_m_quick.stats.reload = speed_pull
					self.parts.wpn_fps_ass_g36_m_quick.stats.reload = speed_pull
					self.parts.wpn_fps_m4_upg_m_quick.stats.reload = speed_pull
					self.parts.wpn_fps_smg_p90_m_strap.stats.reload = speed_pull
					self.parts.wpn_fps_upg_ak_m_quick.stats.reload = speed_pull
					self.parts.wpn_fps_smg_sr2_m_quick.stats.reload = speed_pull
					
					
			--Barrels
				
				--Thanatos
					--Tank Buster Barrel
					self.parts.wpn_fps_snp_m95_barrel_long.stats.damage = 500
					
					--CQB Barrel
					self.parts.wpn_fps_snp_m95_barrel_short.stats.damage = -500
					
					--Suppressed Barrel
					self.parts.wpn_fps_snp_m95_barrel_suppressed.stats.damage = 0
					self.parts.wpn_fps_snp_m95_barrel_suppressed.stats.recoil = -3
			
			-- --gecko cqb foregrip
			-- self.parts.wpn_fps_ass_galil_fg_mar.stats.concealment = 1
			
			--gecko sniper foregrip
			self.parts.wpn_fps_ass_galil_fg_sniper.stats.damage = 1
			
			--gecko fabulous foregrip
			self.parts.wpn_fps_ass_galil_fg_fab.stats.damage = 1
			
			-- -- queen's wrath diminutive barrel
			-- self.parts.wpn_fps_ass_l85a2_b_short.stats.concealment = 2
			
			-- --ak5 cqb barrel
			-- self.parts.wpn_fps_ass_ak5_b_short.stats.concealment = 0
			
			-- --car 4 short barrel
			-- self.parts.wpn_fps_m4_uupg_b_short.stats.concealment = 0
			
			-- --car 4 stealth barrel
			-- self.parts.wpn_fps_m4_uupg_b_sd.stats.concealment = 0
			
			-- --straight grip
			-- self.parts.wpn_fps_upg_m4_g_mgrip.stats.concealment = 1
			
			-- --car folding stock
			-- self.parts.wpn_fps_m4_uupg_s_fold.stats.concealment = 2
			
			-- --ak modern barrel
			-- self.parts.wpn_fps_upg_ak_b_draco.stats.concealment = 0
			
			-- --ak modern barrel
			-- self.parts.wpn_fps_upg_ak_b_ak105.stats.concealment = 0
			
			-- --ak battleproven handguard
			-- self.parts.wpn_fps_upg_ak_fg_tapco.stats.concealment = 1
			
			-- --ak crabs rail
			-- self.parts.wpn_fps_upg_ak_fg_krebs.stats.concealment = 1
			
			-- --ak rubber grip
			-- self.parts.wpn_fps_upg_ak_g_hgrip.stats.concealment = 1
			
			-- --ak low drag mag
			-- self.parts.wpn_fps_upg_ak_m_uspalm.stats.concealment = 0
			
			-- --ak speed pull mag
			-- self.parts.wpn_fps_upg_ak_m_quick.stats.concealment = -1
			
			-- --ak skeletal stock
			-- self.parts.wpn_upg_ak_s_skfoldable.stats.concealment = 1
			
			-- --eagle short barrel
			-- self.parts.wpn_fps_ass_scar_b_short.stats.concealment = 2
			
			-- --gewehr plastic foregrip
			-- self.parts.wpn_fps_ass_g3_fg_retro_plastic.stats.concealment = 3
			
			-- --falcon cqb foregrip
			-- self.parts.wpn_fps_ass_fal_fg_01.stats.concealment = 2
			
			-- --falcon tactical grip
			-- self.parts.wpn_fps_ass_fal_g_01.stats.concealment = 0
			
			-- --falcon cqb foregrip
			-- self.parts.wpn_fps_ass_fal_s_01.stats.concealment = 1
			
			
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
								damage = 65,
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
								damage = 106,
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
								damage = 62,
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
								damage = -42,
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
end)
