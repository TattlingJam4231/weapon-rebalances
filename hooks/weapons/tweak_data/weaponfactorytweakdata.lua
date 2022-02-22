

--AMMO TIERS-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		--shotgun ammo
			local buckshot = {
				double_barrel = {
					stats = {
						value = 5,
						damage = 48,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1400,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 1,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 12
					}
				},
				t5 = {
					stats = {
						value = 5,
						damage = 48,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1400,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 1,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 9
					}
				},
				pump_action = {
					stats = {
						value = 5,
						damage = 26,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1500,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 2,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 9
					}
				},
				t4 = {
					stats = {
						value = 5,
						damage = 26,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1200,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 1,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 9
					}
				},
				t3 = {
					stats = {
						value = 5,
						damage = 20,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1000,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 1,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 9
					}
				},
				t2 = {
					stats = {
						value = 5,
						damage = 17,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1000,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 1,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 9
					}
				},
				t1 = {
					stats = {
						value = 5,
						damage = 13,
						spread = nil
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 800,
						enemy_pen_energy_loss = 200,
						max_enemy_penetrations = 1,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 550,
						wall_pen_energy_loss = 100,
						rays = 9
					}
				}
			}
			
			local slug = {
				double_barrel = {
					stats = {
						value = 5,
						damage = 74,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2.67,
						far_damage_mul = 5,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 2400,
						shield_pen_energy_loss = 600,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 2400,
						wall_pen_energy_loss = 600,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2400,
						enemy_pen_energy_loss = 600,
						rays = 1
					}
				},
				t5 = {
					stats = {
						value = 5,
						damage = 74,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2,
						far_damage_mul = 5,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 2400,
						shield_pen_energy_loss = 600,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 2400,
						wall_pen_energy_loss = 600,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2400,
						enemy_pen_energy_loss = 600,
						rays = 1
					}
				},
				pump_action = {
					stats = {
						value = 5,
						damage = 61,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2,
						far_damage_mul = 3,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 3000,
						shield_pen_energy_loss = 400,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 3000,
						wall_pen_energy_loss = 400,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 3000,
						enemy_pen_energy_loss = 400,
						rays = 1
					}
				},
				t4 = {
					stats = {
						value = 5,
						damage = 61,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2,
						far_damage_mul = 5,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 2400,
						shield_pen_energy_loss = 600,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 2400,
						wall_pen_energy_loss = 600,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2400,
						enemy_pen_energy_loss = 600,
						rays = 1
					}
				},
				t3 = {
					stats = {
						value = 5,
						damage = 32,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2,
						far_damage_mul = 5,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 2000,
						shield_pen_energy_loss = 500,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 2000,
						wall_pen_energy_loss = 500,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2000,
						enemy_pen_energy_loss = 500,
						rays = 1
					}
				},
				t2 = {
					stats = {
						value = 5,
						damage = 30,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2,
						far_damage_mul = 5,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 2000,
						shield_pen_energy_loss = 500,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 2000,
						wall_pen_energy_loss = 500,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2000,
						enemy_pen_energy_loss = 500,
						rays = 1
					}
				},
				t1 = {
					stats = {
						value = 5,
						damage = 20,
						spread = 10
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 2,
						far_damage_mul = 5,
						armor_piercing_add = 1,
						can_shoot_through_shield = true,
						max_shield_penetration_distance = 1600,
						enemy_pen_energy_loss = 400,
						can_shoot_through_wall = true,
						max_wall_penetration_distance = 1600,
						enemy_pen_energy_loss = 400,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 1600,
						enemy_pen_energy_loss = 400,
						rays = 1
					}
				}
			}
			
			local he = {
				double_barrel = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 155,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.4,
						ignore_statistic = true,
						optimal_range_mul = 2.25,
						far_falloff_mul = 0,
						far_damage_mul = 0,
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				},
				t5 = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 155,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.4,
						ignore_statistic = true,
						optimal_range_mul = 1.75,
						far_falloff_mul = 0,
						far_damage_mul = 0,
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				},
				pump_action = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 110,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.3,
						ignore_statistic = true,
						optimal_range_mul = 2,
						far_falloff_mul = 0,
						far_damage_mul = 0,
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				},
				t4 = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 110,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.3,
						ignore_statistic = true,
						optimal_range_mul = 1.75,
						far_falloff_mul = 0,
						far_damage_mul = 0,
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				},
				t3 = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 55,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.3,
						ammo_pickup_max_mul = 0.334,
						ignore_statistic = true,
						optimal_range_mul = 1.75,
						far_falloff_mul = 0,
						far_damage_mul = 0,
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				},
				t2 = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 42,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.334,
						ignore_statistic = true,
						optimal_range_mul = 1.75,
						far_falloff_mul = 0,
						far_damage_mul = 0,
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				},
				t1 = {
					stats = {
						value = 5, 
						total_ammo_mod = -5,
						damage = 18,
						spread = 0
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.5,
						ignore_statistic = true,
						optimal_range_mul = 1.75,
						falloff_override = {
							far_falloff = 0,
							far_multiplier = 0
						},
						rays = 1, 
						bullet_class = "InstantExplosiveBulletBase"
					}
				}
			}
			
			local db = {
				double_barrel = {
					stats = {
						value = 5, 
						total_ammo_mod = 0, 
						damage = -60,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.533,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10,
								dot_tick_period = 0.5,
								damage_ticks = 22,
								add_ticks = 14,
								dot_trigger_max_distance = 2000,
								dot_can_stack = "extend",
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
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 16
					}
				},
				t5 = {
					stats = {
						value = 5, 
						total_ammo_mod = 0, 
						damage = -60,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.533,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10,
								dot_tick_period = 0.5,
								damage_ticks = 22,
								add_ticks = 14,
								dot_trigger_max_distance = 2000,
								dot_can_stack = "extend",
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
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				},
				pump_action = {
					stats = {
						value = 5, 
						total_ammo_mod = 0, 
						damage = -30,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.5,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10,
								dot_tick_period = 0.5,
								damage_ticks = 18,
								add_ticks = 12,
								dot_trigger_max_distance = 2700,
								dot_can_stack = "extend",
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
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
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.5,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10,
								dot_tick_period = 0.5,
								damage_ticks = 18,
								add_ticks = 12,
								dot_trigger_max_distance = 2000,
								dot_can_stack = "extend",
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
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
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.667,
						ammo_pickup_max_mul = 0.333,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10,
								dot_tick_period = 0.5,
								damage_ticks = 14,
								add_ticks = 10,
								dot_trigger_max_distance = 2000,
								dot_can_stack = "extend",
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
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
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.6,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10, 
								dot_tick_period = 0.5,
								damage_ticks = 10,
								add_ticks = 8,
								dot_trigger_max_distance = 2000,
								dot_can_stack = "extend",
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
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
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.333,
						ammo_pickup_max_mul = 0.333,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 10,
								dot_tick_period = 0.5,
								damage_ticks = 6,
								add_ticks = 6,
								dot_trigger_max_distance = 2000,
								dot_can_stack = "extend",
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				}
			}
			
			local flechette = {
				double_barrel = {
					stats = {
						value = 5,
						damage = -90,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.4,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 70,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2500,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						rays = 16,
						bullet_class = "DOTBulletBase"
					}
				},
				t5 = {
					stats = {
						value = 5,
						damage = -90,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.4,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 70,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2500,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						rays = 12,
						bullet_class = "DOTBulletBase"
					}
				},
				pump_action = {
					stats = {
						value = 5,
						damage = -77,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.8,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 50,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 3200,
								dot_can_stack = true,
								dot_can_crit = true
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
						damage = -77,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.4,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 50,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2500,
								dot_can_stack = true,
								dot_can_crit = true
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
						damage = -34,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.4,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 40,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2500,
								dot_can_stack = true,
								dot_can_crit = true
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
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.4,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 25,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2500,
								dot_can_stack = true,
								dot_can_crit = true
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
						damage = -11,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						optimal_range_mul = 1.4,
						dot_data = {
							type = "bleed",
							custom_data = {
								damage = 15,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2500,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						rays = 12,
						bullet_class = "DOTBulletBase"
					}
				}
			}
			local dragons_breath_alt = {
				double_barrel = {
					stats = {
						value = 5, 
						total_ammo_mod = 0,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.533,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 50,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2000,
								dot_can_stack = true,
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
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 16
					}
				},
				t5 = {
					stats = {
						value = 5, 
						total_ammo_mod = 0,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.533,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 50,
								dot_tick_period = 0.5,
								damage_ticks = 10,
								dot_trigger_max_distance = 2000,
								dot_can_stack = true,
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
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				},
				pump_action = {
					stats = {
						value = 5, 
						total_ammo_mod = 0,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.5,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 35,
								dot_tick_period = 0.5,
								damage_ticks = 8,
								dot_trigger_max_distance = 2700,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				},
				t4 = {
					stats = {
						value = 5, 
						total_ammo_mod = 0,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.4,
						ammo_pickup_max_mul = 0.5,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 35,
								dot_tick_period = 0.5,
								damage_ticks = 8,
								dot_trigger_max_distance = 2000,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				},
				t3 = {
					stats = {
						value = 5, 
						total_ammo_mod = 0,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.667,
						ammo_pickup_max_mul = 0.333,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 20,
								dot_tick_period = 0.5,
								damage_ticks = 6,
								dot_trigger_max_distance = 2000,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				},
				t2 = {
					stats = {
						value = 5, 
						total_ammo_mod = 0,
						spread = -3
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.667,
						ammo_pickup_max_mul = 0.333,
						dot_data = {
							type = "fire",
							custom_data = {
								damage = 15,
								dot_tick_period = 0.5,
								damage_ticks = 6,
								dot_trigger_max_distance = 2000,
								dot_can_stack = true,
								dot_can_crit = true
							}
						},
						armor_piercing_add = 1, 
						ignore_statistic = true,  
						muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath", 
						far_falloff_mul = 0.7,
						can_shoot_through_shield = true, 
						bullet_class = "FlameBulletBase",
						rays = 12
					}
				}
			}
			local flechette_alt = {
				double_barrel = {
					stats = {
						value = 5,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						add_head_shot_mul = 0.6,
						optimal_range_mul = 1.33,
						far_damage_mul = 2.5,
						armor_piercing_add = 1, 
						rays = 16
					}
				},
				t5 = {
					stats = {
						value = 5,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						add_head_shot_mul = 0.6,
						optimal_range_mul = 1.33,
						far_damage_mul = 2.5,
						armor_piercing_add = 1, 
						rays = 12
					}
				},
				pump_action = {
					stats = {
						value = 5,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						add_head_shot_mul = 0.6,
						optimal_range_mul = 1.33,
						far_damage_mul = 2.5,
						armor_piercing_add = 1, 
						rays = 12
					}
				},
				t4 = {
					stats = {
						value = 5,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						add_head_shot_mul = 0.6,
						optimal_range_mul = 1.33,
						far_damage_mul = 2.5,
						armor_piercing_add = 1, 
						rays = 12
					}
				},
				t3 = {
					stats = {
						value = 5,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						add_head_shot_mul = 0.6,
						optimal_range_mul = 1.33,
						far_damage_mul = 2.5,
						armor_piercing_add = 1, 
						rays = 12
					}
				},
				t2 = {
					stats = {
						value = 5,
						spread = 1
					},
					custom_stats = {
						ammo_pickup_min_mul = nil,
						ammo_pickup_max_mul = nil,
						add_head_shot_mul = 0.60,
						optimal_range_mul = 1.33,
						far_damage_mul = 2.5,
						armor_piercing_add = 1, 
						rays = 12
					}
				}
			}

		--ar ammo
			local fmj = {
				t4 = {
					custom_stats = {
						can_shoot_through_shield = false,
						can_shoot_through_wall = false,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2000,
						max_enemy_penetrations = 1,
						enemy_pen_energy_loss = 1000,
						optimal_distance_mul = 2000,
						optimal_range_mul = 0,
						near_falloff_mul = 0,
						far_falloff_mul = 0,
						near_damage_mul = 1,
						far_damage_mul = 1.5,
					}
				},
				t3 = {
					custom_stats = {
						can_shoot_through_shield = false,
						can_shoot_through_wall = false,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2000,
						max_enemy_penetrations = 1,
						enemy_pen_energy_loss = 1000,
						optimal_distance_mul = 2000,
						optimal_range_mul = 0,
						near_falloff_mul = 0,
						far_falloff_mul = 0,
						near_damage_mul = 1,
						far_damage_mul = 1.2,
					},
					overrides = {
						{
							depends_on = "wpn_fps_upg_ass_ak_b_zastava",
							custom_stats = {
								can_shoot_through_shield = false,
								can_shoot_through_wall = false,
								can_shoot_through_enemy = true,
								max_enemy_penetration_distance = 2000,
								max_enemy_penetrations = 1,
								enemy_pen_energy_loss = 1000,
								optimal_distance_mul = 2000,
								optimal_range_mul = 0,
								near_falloff_mul = 0,
								far_falloff_mul = 0,
								near_damage_mul = 1,
								far_damage_mul = 1.5,
							}
						},
						{
							depends_on = "wpn_fps_upg_ass_m4_b_beowulf",
							custom_stats = {
								can_shoot_through_shield = false,
								can_shoot_through_wall = false,
								can_shoot_through_enemy = true,
								max_enemy_penetration_distance = 2000,
								max_enemy_penetrations = 1,
								enemy_pen_energy_loss = 1000,
								optimal_distance_mul = 2000,
								optimal_range_mul = 0,
								near_falloff_mul = 0,
								far_falloff_mul = 0,
								near_damage_mul = 1,
								far_damage_mul = 1.5,
							}
						},
						{
							depends_on = "wpn_fps_ass_g3_b_sniper",
							custom_stats = {
								can_shoot_through_shield = false,
								can_shoot_through_wall = false,
								can_shoot_through_enemy = true,
								max_enemy_penetration_distance = 2000,
								max_enemy_penetrations = 1,
								enemy_pen_energy_loss = 1000,
								optimal_distance_mul = 2000,
								optimal_range_mul = 0,
								near_falloff_mul = 0,
								far_falloff_mul = 0,
								near_damage_mul = 1,
								far_damage_mul = 1.5,
							}
						}
					}
				},
				t2 = {
					custom_stats = {
						can_shoot_through_shield = false,
						can_shoot_through_wall = false,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2000,
						max_enemy_penetrations = 1,
						enemy_pen_energy_loss = 1000,
						optimal_distance_mul = 2000,
						optimal_range_mul = 0,
						near_falloff_mul = 0,
						far_falloff_mul = 0,
						near_damage_mul = 1,
						far_damage_mul = 1.2,
					},
					overrides = {
						{
							depends_on = "wpn_fps_upg_ass_ak_b_zastava",
							custom_stats = {
								can_shoot_through_shield = false,
								can_shoot_through_wall = false,
								can_shoot_through_enemy = true,
								max_enemy_penetration_distance = 2000,
								max_enemy_penetrations = 1,
								enemy_pen_energy_loss = 1000,
								optimal_distance_mul = 2000,
								optimal_range_mul = 0,
								near_falloff_mul = 0,
								far_falloff_mul = 0,
								near_damage_mul = 1,
								far_damage_mul = 1.5,
							}
						},
						{
							depends_on = "wpn_fps_upg_ass_m4_b_beowulf",
							custom_stats = {
								can_shoot_through_shield = false,
								can_shoot_through_wall = false,
								can_shoot_through_enemy = true,
								max_enemy_penetration_distance = 2000,
								max_enemy_penetrations = 1,
								enemy_pen_energy_loss = 1000,
								optimal_distance_mul = 2000,
								optimal_range_mul = 0,
								near_falloff_mul = 0,
								far_falloff_mul = 0,
								near_damage_mul = 1,
								far_damage_mul = 1.5,
							}
						}
					}
				},
				t1 = {
					custom_stats = {
						can_shoot_through_shield = false,
						can_shoot_through_wall = false,
						can_shoot_through_enemy = true,
						max_enemy_penetration_distance = 2000,
						max_enemy_penetrations = 1,
						enemy_pen_energy_loss = 1000,
						optimal_distance_mul = 2000,
						optimal_range_mul = 0,
						near_falloff_mul = 0,
						far_falloff_mul = 0,
						near_damage_mul = 1,
						far_damage_mul = 1.2,
					}
				}
			}
			local ballistic_tip = {
				t4 = {
					stats = {
						value = 5,
						damage = 80
					},
					custom_stats = {
						ammo_pickup_min_mul = 0.5,
						ammo_pickup_max_mul = 0.667
					}
				},
				t3 = {
					stats = {
						value = 5,
						damage = 20
					},
					overrides = {
						{
							depends_on = "wpn_fps_upg_ass_ak_b_zastava",
							stats = {
								value = 5,
								damage = 80
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.5,
								ammo_pickup_max_mul = 0.667
							}
						},
						{
							depends_on = "wpn_fps_upg_ass_m4_b_beowulf",
							stats = {
								value = 5,
								damage = 80
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.5,
								ammo_pickup_max_mul = 0.667
							}
						},
						{
							depends_on = "wpn_fps_ass_g3_b_sniper",
							stats = {
								value = 5,
								damage = 80
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.5,
								ammo_pickup_max_mul = 0.667
							}
						},
						{
							depends_on = "wpn_fps_ass_g3_b_short",
							stats = {
								value = 5,
								damage = 12
							}
						}
					}
				},
				t2 = {
					stats = {
						value = 5,
						damage = 12
					},
					overrides = {
						{
							depends_on = "wpn_fps_upg_ass_ak_b_zastava",
							stats = {
								value = 5,
								damage = 80
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.5,
								ammo_pickup_max_mul = 0.667
							}
						},
						{
							depends_on = "wpn_fps_upg_ass_m4_b_beowulf",
							stats = {
								value = 5,
								damage = 80
							},
							custom_stats = {
								ammo_pickup_min_mul = 0.5,
								ammo_pickup_max_mul = 0.667
							}
						}
					}
				},
				t1 = {
					stats = {
						value = 5,
						damage = 8
					}
				}
			}

--AMMO OVERRIDES---------------------------------------------------------------------------------------------------------------------------------------------------------------

		local ammo_override = {
			shotgun = {
				double_barrel = {
					wpn_fps_upg_a_custom = buckshot.double_barrel,
					wpn_fps_upg_a_custom_free = buckshot.double_barrel,
					wpn_fps_upg_a_slug = slug.double_barrel,
					wpn_fps_upg_a_explosive = he.double_barrel,
					wpn_fps_upg_a_dragons_breath = db.double_barrel,
					wpn_fps_upg_a_piercing = flechette.double_barrel,
					wpn_fps_upg_a_dragons_breath_alt = dragons_breath_alt.double_barrel,
					wpn_fps_upg_a_piercing_alt = flechette_alt.double_barrel
				},
				t5 = {
					wpn_fps_upg_a_custom = buckshot.t5,
					wpn_fps_upg_a_custom_free = buckshot.t5,
					wpn_fps_upg_a_slug = slug.t5,
					wpn_fps_upg_a_explosive = he.t5,
					wpn_fps_upg_a_dragons_breath = db.t5,
					wpn_fps_upg_a_piercing = flechette.t5,
					wpn_fps_upg_a_dragons_breath_alt = dragons_breath_alt.t5,
					wpn_fps_upg_a_piercing_alt = flechette_alt.t5
				},
				pump_action = {
					wpn_fps_upg_a_custom = buckshot.pump_action,
					wpn_fps_upg_a_custom_free = buckshot.pump_action,
					wpn_fps_upg_a_slug = slug.pump_action,
					wpn_fps_upg_a_explosive = he.pump_action,
					wpn_fps_upg_a_dragons_breath = db.pump_action,
					wpn_fps_upg_a_piercing = flechette.pump_action,
					wpn_fps_upg_a_dragons_breath_alt = dragons_breath_alt.pump_action,
					wpn_fps_upg_a_piercing_alt = flechette_alt.pump_action
				},
				t4 = {
					wpn_fps_upg_a_custom = buckshot.t4,
					wpn_fps_upg_a_custom_free = buckshot.t4,
					wpn_fps_upg_a_slug = slug.t4,
					wpn_fps_upg_a_explosive = he.t4,
					wpn_fps_upg_a_dragons_breath = db.t4,
					wpn_fps_upg_a_piercing = flechette.t4,
					wpn_fps_upg_a_dragons_breath_alt = dragons_breath_alt.t4,
					wpn_fps_upg_a_piercing_alt = flechette_alt.t4
				},
				t3 = {
					wpn_fps_upg_a_custom = buckshot.t3,
					wpn_fps_upg_a_custom_free = buckshot.t3,
					wpn_fps_upg_a_slug = slug.t3,
					wpn_fps_upg_a_explosive = he.t3,
					wpn_fps_upg_a_dragons_breath = db.t3,
					wpn_fps_upg_a_piercing = flechette.t3,
					wpn_fps_upg_a_dragons_breath_alt = dragons_breath_alt.t3,
					wpn_fps_upg_a_piercing_alt = flechette_alt.t3
				},
				t2 = {
					wpn_fps_upg_a_custom = buckshot.t2,
					wpn_fps_upg_a_custom_free = buckshot.t2,
					wpn_fps_upg_a_slug = slug.t2,
					wpn_fps_upg_a_explosive = he.t2,
					wpn_fps_upg_a_dragons_breath = db.t2,
					wpn_fps_upg_a_piercing = flechette.t2,
					wpn_fps_upg_a_dragons_breath_alt = dragons_breath_alt.t2,
					wpn_fps_upg_a_piercing_alt = flechette_alt.t2
				},
				t1 = {
					wpn_fps_upg_a_custom = buckshot.t1,
					wpn_fps_upg_a_custom_free = buckshot.t1,
					wpn_fps_upg_a_slug = slug.t1,
					wpn_fps_upg_a_explosive = he.t1,
					wpn_fps_upg_a_dragons_breath = db.t1,
					wpn_fps_upg_a_piercing = flechette.t1
				}
			},
			ar = {
				t4 = {
					wpn_upg_a_fmj = fmj.t4,
					wpn_upg_a_ballistic_tip = ballistic_tip.t4
				},
				t3 = {
					wpn_upg_a_fmj = fmj.t3,
					wpn_upg_a_ballistic_tip = ballistic_tip.t3
				},
				t2 = {
					wpn_upg_a_fmj = fmj.t2,
					wpn_upg_a_ballistic_tip = ballistic_tip.t2
				},
				t1 = {
					wpn_upg_a_fmj = fmj.t1,
					wpn_upg_a_ballistic_tip = ballistic_tip.t1
				}
			}
		}

function WeaponFactoryTweakData:insert_ammo_overrides(factory_id, ammo_override)
	self[factory_id].override = self[factory_id].override or {}
	for ammo_id, ammo_stats in pairs(ammo_override) do
		self[factory_id].override[ammo_id] = deep_clone(ammo_stats)
	end
end
			
function WeaponFactoryTweakData:_init_attachments()
	--Barrels

			--AKs

					--AK Slavic Dragon Barrel
					self.parts.wpn_fps_upg_ak_b_draco.stats.damage = 0
					self.parts.wpn_fps_upg_ak_b_draco.stats.spread = 1
					self.parts.wpn_fps_upg_ak_b_draco.stats.recoil = 0
					self.parts.wpn_fps_upg_ak_b_draco.stats.concealment = 1
					

					--Modern Barrel
					self.parts.wpn_fps_upg_ak_b_ak105.stats.damage = 2
					self.parts.wpn_fps_upg_ak_b_ak105.stats.spread = -1
					self.parts.wpn_fps_upg_ak_b_ak105.stats.recoil = 1
					self.parts.wpn_fps_upg_ak_b_ak105.stats.concealment = -1


			--Long Barrel(CARs)
			self.parts.wpn_fps_m4_uupg_b_long.stats.damage = 1
			self.parts.wpn_fps_m4_uupg_b_long.stats.spread = 1
			self.parts.wpn_fps_m4_uupg_b_long.stats.recoil = 0
			self.parts.wpn_fps_m4_uupg_b_long.stats.concealment = -2

		
			--Thanatos

					--Tank Buster Barrel
					self.parts.wpn_fps_snp_m95_barrel_long.stats.damage = 500
					
					--CQB Barrel
					self.parts.wpn_fps_snp_m95_barrel_short.stats.damage = -500
					
					--Suppressed Barrel
					self.parts.wpn_fps_snp_m95_barrel_suppressed.stats.damage = 0
					self.parts.wpn_fps_snp_m95_barrel_suppressed.stats.recoil = -3
				
	
	--Barrel Extensions
		
			--AR/MG

					-- Medium Suppressor
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.damage = -4
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.concealment = -2
					self.parts.wpn_fps_upg_ns_ass_smg_medium.stats.suppression = 12
					
					-- Low Profile Suppressor
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.damage = -4
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.recoil = 0
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.concealment = 1
					self.parts.wpn_fps_upg_ns_ass_smg_small.stats.suppression = 12
					
					
					-- Stubby Compensator
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.spread = 0
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.concealment = 0
					self.parts.wpn_fps_upg_ns_ass_smg_stubby.stats.suppression = -1
					
					
					-- The Tank Compensator
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.spread = 2
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.recoil = 0
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.concealment = -1
					self.parts.wpn_fps_upg_ns_ass_smg_tank.stats.suppression = -2
					
					
					-- Fire Breather Nozzle
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.spread = -1
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.recoil = 2
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.concealment = 0
					self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats.suppression = -5
					
					
					-- The Bigger the Better Suppressor
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.damage = -6
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.spread = 2
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.concealment = -4
					self.parts.wpn_fps_upg_ns_ass_smg_large.stats.suppression = 12
					
					
					-- Competitior's Compensator
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.spread = 0
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.recoil = 2
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.concealment = -1
					self.parts.wpn_fps_upg_ass_ns_jprifles.stats.suppression = -1
					
					
					-- Funnel of Fun Nozzle
					self.parts.wpn_fps_upg_ass_ns_linear.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_linear.stats.spread = -2
					self.parts.wpn_fps_upg_ass_ns_linear.stats.recoil = 3
					self.parts.wpn_fps_upg_ass_ns_linear.stats.concealment = -1
					self.parts.wpn_fps_upg_ass_ns_linear.stats.suppression = -5
					
					
					-- Tactical Compensator
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.spread = 3
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.recoil = -2
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.concealment = -1
					self.parts.wpn_fps_upg_ass_ns_surefire.stats.suppression = 0
					
					
					-- Ported Compensator
					self.parts.wpn_fps_upg_ass_ns_battle.stats.damage = 0
					self.parts.wpn_fps_upg_ass_ns_battle.stats.spread = 1
					self.parts.wpn_fps_upg_ass_ns_battle.stats.recoil = 0
					self.parts.wpn_fps_upg_ass_ns_battle.stats.concealment = 0
					self.parts.wpn_fps_upg_ass_ns_battle.stats.suppression = 0
					
					
					-- Marmon Compensator
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.damage = 0
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.spread = 1
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.recoil = 1
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.concealment = -1
					self.parts.wpn_fps_upg_ns_ass_smg_v6.stats.suppression = -3
					
					
					--Slotted Barrel Extension(Jacket's Piece/Mark 10)
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.damage = 0
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.spread = 3
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.recoil = 0
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.concealment = -2
					self.parts.wpn_fps_smg_cobray_ns_barrelextension.stats.suppression = 0
					
					
					--Werbell's Suppressor(Jacket's Piece/Mark 10)
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.damage = 0
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.spread = 0
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.recoil = 1
					self.parts.wpn_fps_smg_cobray_ns_silencer.stats.concealment = -3
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
				
				
			--Shotgun

					--Shark Teeth Nozzle
					self.parts.wpn_fps_upg_ns_shot_shark.stats.damage = 0
					self.parts.wpn_fps_upg_ns_shot_shark.stats.spread_multi = {1, 0.75}

					
					--King's Crown
					self.parts.wpn_fps_upg_shot_ns_king.stats.damage = 0

					
					--Donalds Horizontal Leveller
					self.parts.wpn_fps_upg_ns_duck.stats.damage = 0
					self.parts.wpn_fps_upg_ns_duck.stats.spread_multi = {1.4, 0.25}


	--Custom

			--Single Fire
			self.parts.wpn_fps_upg_i_singlefire.stats.damage = 0
			self.parts.wpn_fps_upg_i_singlefire.stats.spread = 1
			self.parts.wpn_fps_upg_i_singlefire.stats.recoil = 0

			--Auto Fire
			self.parts.wpn_fps_upg_i_autofire.stats.damage = 0
			self.parts.wpn_fps_upg_i_autofire.stats.spread = -1
			self.parts.wpn_fps_upg_i_autofire.stats.recoil = 1


	--Extras
			
			--Scope Mount(AKs)
			self.parts.wpn_fps_upg_o_ak_scopemount.stats.spread = 1
			self.parts.wpn_fps_upg_o_ak_scopemount.stats.recoil = 0
			self.parts.wpn_fps_upg_o_ak_scopemount.stats.concealment = -1


	--Foregrips
			
			
			--AKs

					--Railed Wooden Grip
					self.parts.wpn_upg_ak_fg_combo2.stats.spread = 1
					self.parts.wpn_upg_ak_fg_combo2.stats.recoil = 1
					self.parts.wpn_upg_ak_fg_combo2.stats.concealment = 0
					

					--The Tactical Russian Handguard
					self.parts.wpn_upg_ak_fg_combo3.stats.spread = 1
					self.parts.wpn_upg_ak_fg_combo3.stats.recoil = 2
					self.parts.wpn_upg_ak_fg_combo3.stats.concealment = -1
					

					--Battleproven Handguard
					self.parts.wpn_fps_upg_ak_fg_tapco.stats.spread = 0
					self.parts.wpn_fps_upg_ak_fg_tapco.stats.recoil = 1
					self.parts.wpn_fps_upg_ak_fg_tapco.stats.concealment = 3
					

					--Lightweight Rail
					self.parts.wpn_fps_upg_fg_midwest.stats.spread = 3
					self.parts.wpn_fps_upg_fg_midwest.stats.recoil = 1
					self.parts.wpn_fps_upg_fg_midwest.stats.concealment = -2
					

					--Crabs Rail
					self.parts.wpn_fps_upg_ak_fg_krebs.stats.spread = 1
					self.parts.wpn_fps_upg_ak_fg_krebs.stats.recoil = 0
					self.parts.wpn_fps_upg_ak_fg_krebs.stats.concealment = 3
					

					--Keymod Rail
					self.parts.wpn_fps_upg_ak_fg_trax.stats.spread = 2
					self.parts.wpn_fps_upg_ak_fg_trax.stats.recoil = 2
					self.parts.wpn_fps_upg_ak_fg_trax.stats.concealment = -2


	--Gadgets
			
			--Riktpunkt 45 Degree Sight
			self.parts.wpn_fps_upg_o_45rds_v2.stats.spread = 1
			self.parts.wpn_fps_upg_o_45rds_v2.stats.recoil = 0
			self.parts.wpn_fps_upg_o_45rds_v2.stats.concealment = 0
			self.parts.wpn_fps_upg_o_45rds_v2.stats.gadget_zoom = 1

			--Riktpunkt Magnifier Gadget
			self.parts.wpn_fps_upg_o_xpsg33_magnifier.stats.spread = 1
			self.parts.wpn_fps_upg_o_xpsg33_magnifier.stats.recoil = 0
			self.parts.wpn_fps_upg_o_xpsg33_magnifier.stats.concealment = 0
			self.parts.wpn_fps_upg_o_xpsg33_magnifier.stats.gadget_zoom = 9


			--Assualt Light
			self.parts.wpn_fps_upg_fl_ass_smg_sho_surefire.stats.recoil = 1
			self.parts.wpn_fps_upg_fl_ass_smg_sho_surefire.stats.concealment = -1


			--Tactical Laser Module
			self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.stats.recoil = 1
			self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.stats.concealment = -1


			--Compact Laser Module
			self.parts.wpn_fps_upg_fl_ass_laser.stats.recoil = 0
			self.parts.wpn_fps_upg_fl_ass_laser.stats.concealment = 0


			--Military Laser Module
			self.parts.wpn_fps_upg_fl_ass_peq15.stats.recoil = 1
			self.parts.wpn_fps_upg_fl_ass_peq15.stats.concealment = -2


			--LED Combo
			self.parts.wpn_fps_upg_fl_ass_utg.stats.recoil = 1
			self.parts.wpn_fps_upg_fl_ass_utg.stats.concealment = -2


			--45 Degree Red Dot Sight
			self.parts.wpn_fps_upg_o_45rds.stats.spread = 1
			self.parts.wpn_fps_upg_o_45rds.stats.recoil = 0
			self.parts.wpn_fps_upg_o_45rds.stats.concealment = 0
			self.parts.wpn_fps_upg_o_45rds.stats.gadget_zoom = 1


			--45 Degree Ironights
			self.parts.wpn_fps_upg_o_45steel.stats.spread = 0
			self.parts.wpn_fps_upg_o_45steel.stats.recoil = 0
			self.parts.wpn_fps_upg_o_45steel.stats.concealment = 1
			self.parts.wpn_fps_upg_o_45steel.stats.gadget_zoom = 1


			--Signature Magnifier Gadget
			self.parts.wpn_fps_upg_o_sig.stats.spread = 1
			self.parts.wpn_fps_upg_o_sig.stats.recoil = 0
			self.parts.wpn_fps_upg_o_sig.stats.concealment = 0
			self.parts.wpn_fps_upg_o_sig.stats.gadget_zoom = 9

			--Pistols

					--Micro Laser
					self.parts.wpn_fps_upg_fl_pis_crimson.stats.recoil = 0
					self.parts.wpn_fps_upg_fl_pis_crimson.stats.concealment = 0


					--Combined Module
					self.parts.wpn_fps_upg_fl_pis_x400v.stats.recoil = 1
					self.parts.wpn_fps_upg_fl_pis_x400v.stats.concealment = -2


					--Tactical Pistol Light
					self.parts.wpn_fps_upg_fl_pis_tlr1.stats.recoil = 1
					self.parts.wpn_fps_upg_fl_pis_tlr1.stats.concealment = -1


					--Pocket Laser
					self.parts.wpn_fps_upg_fl_pis_laser.stats.recoil = 1
					self.parts.wpn_fps_upg_fl_pis_laser.stats.concealment = -1


					--Polymer Flashlight
					self.parts.wpn_fps_upg_fl_pis_m3x.stats.recoil = 1
					self.parts.wpn_fps_upg_fl_pis_m3x.stats.concealment = -1


	--Grips

			--AKs

					--AK Rubber Grip
					self.parts.wpn_fps_upg_ak_g_hgrip.stats.spread = 0
					self.parts.wpn_fps_upg_ak_g_hgrip.stats.recoil = 1
					self.parts.wpn_fps_upg_ak_g_hgrip.stats.concealment = 1


					--AK Plastic Grip
					self.parts.wpn_fps_upg_ak_g_pgrip.stats.spread = 2
					self.parts.wpn_fps_upg_ak_g_pgrip.stats.recoil = -2
					self.parts.wpn_fps_upg_ak_g_pgrip.stats.concealment = 0


					--AK Wood Grip
					self.parts.wpn_fps_upg_ak_g_wgrip.stats.spread = 1
					self.parts.wpn_fps_upg_ak_g_wgrip.stats.recoil = 2
					self.parts.wpn_fps_upg_ak_g_wgrip.stats.concealment = -1


					--Aluminum Grip
					self.parts.wpn_fps_upg_ak_g_rk3.stats.spread = 1
					self.parts.wpn_fps_upg_ak_g_rk3.stats.recoil = 0
					self.parts.wpn_fps_upg_ak_g_rk3.stats.concealment = 1

			
			--CARs
					--Ergo Grip
					self.parts.wpn_fps_upg_m4_g_ergo.stats.spread = 0
					self.parts.wpn_fps_upg_m4_g_ergo.stats.recoil = 1
					self.parts.wpn_fps_upg_m4_g_ergo.stats.concealment = 0
					

					--Pro Grip
					self.parts.wpn_fps_upg_m4_g_sniper.stats.spread = 2
					self.parts.wpn_fps_upg_m4_g_sniper.stats.recoil = 0
					self.parts.wpn_fps_upg_m4_g_sniper.stats.concealment = -1
					
					
					--Rubber Grip
					self.parts.wpn_fps_upg_m4_g_hgrip.stats.spread = 1
					self.parts.wpn_fps_upg_m4_g_hgrip.stats.recoil = 1
					self.parts.wpn_fps_upg_m4_g_hgrip.stats.concealment = -1
					
					
					--Straight Grip
					self.parts.wpn_fps_upg_m4_g_mgrip.stats.spread = 0
					self.parts.wpn_fps_upg_m4_g_mgrip.stats.recoil = 0
					self.parts.wpn_fps_upg_m4_g_mgrip.stats.concealment = 1
					
					
					--Titanium Skeleton Grip
					self.parts.wpn_fps_upg_g_m4_surgeon.stats.spread = 0
					self.parts.wpn_fps_upg_g_m4_surgeon.stats.recoil = -1
					self.parts.wpn_fps_upg_g_m4_surgeon.stats.concealment = 2
				
					
					--Contractor Grip
					self.parts.wpn_fps_snp_tti_g_grippy.stats.spread = 1
					self.parts.wpn_fps_snp_tti_g_grippy.stats.recoil = -1
					self.parts.wpn_fps_snp_tti_g_grippy.stats.concealment = 1


	--Lower Receivers
			
			--THRUST Lower Receiver(CARs)
			self.parts.wpn_fps_upg_ass_m4_lower_reciever_core.stats.damage = 0
			self.parts.wpn_fps_upg_ass_m4_lower_reciever_core.stats.spread = 1
			self.parts.wpn_fps_upg_ass_m4_lower_reciever_core.stats.recoil = 0
			self.parts.wpn_fps_upg_ass_m4_lower_reciever_core.stats.concealment = -1

			
	--Magazines
			
			--AKs

					--AK Quadstacked Mag
					self.parts.wpn_fps_upg_ak_m_quad.stats.extra_ammo = 15
					self.parts.wpn_fps_upg_ak_m_quad.stats.spread = -1
					self.parts.wpn_fps_upg_ak_m_quad.stats.recoil = 1
					self.parts.wpn_fps_upg_ak_m_quad.stats.concealment = -3
					self.parts.wpn_fps_upg_ak_m_quad.stats.reload = 0

					
					--Low Drag Magazine
					self.parts.wpn_fps_upg_ak_m_uspalm.stats.extra_ammo = 2
					self.parts.wpn_fps_upg_ak_m_uspalm.stats.spread = 0
					self.parts.wpn_fps_upg_ak_m_uspalm.stats.recoil = 1
					self.parts.wpn_fps_upg_ak_m_uspalm.stats.concealment = 1
					self.parts.wpn_fps_upg_ak_m_uspalm.stats.reload = 0

					
					--Speed Pull Magazine
					self.parts.wpn_fps_upg_ak_m_quick.stats.concealment = -2
					self.parts.wpn_fps_upg_ak_m_quick.stats.reload = 2


			--CARs

					--Vintage Mag.
					self.parts.wpn_fps_upg_m4_m_straight.stats.extra_ammo = -4
					self.parts.wpn_fps_upg_m4_m_straight.stats.spread = 0
					self.parts.wpn_fps_upg_m4_m_straight.stats.recoil = 0
					self.parts.wpn_fps_upg_m4_m_straight.stats.concealment = 1
					self.parts.wpn_fps_upg_m4_m_straight.stats.reload = 0


					--Millspec Mag.
					self.parts.wpn_fps_m4_uupg_m_std.stats.extra_ammo = 5
					self.parts.wpn_fps_m4_uupg_m_std.stats.spread = 0
					self.parts.wpn_fps_m4_uupg_m_std.stats.recoil = 0
					self.parts.wpn_fps_m4_uupg_m_std.stats.concealment = 0
					self.parts.wpn_fps_m4_uupg_m_std.stats.reload = 0
					

					--Tactical Mag.
					self.parts.wpn_fps_upg_m4_m_pmag.stats.extra_ammo = 2
					self.parts.wpn_fps_upg_m4_m_pmag.stats.spread = 0
					self.parts.wpn_fps_upg_m4_m_pmag.stats.recoil = 0
					self.parts.wpn_fps_upg_m4_m_pmag.stats.concealment = -1
					self.parts.wpn_fps_upg_m4_m_pmag.stats.reload = 1
					

					--Car Quadstacked Mag
					self.parts.wpn_fps_upg_m4_m_quad.stats.extra_ammo = 15
					self.parts.wpn_fps_upg_m4_m_quad.stats.spread = -1
					self.parts.wpn_fps_upg_m4_m_quad.stats.recoil = 1
					self.parts.wpn_fps_upg_m4_m_quad.stats.concealment = -3
					self.parts.wpn_fps_upg_m4_m_quad.stats.reload = 0
					

					--Expert Mag
					self.parts.wpn_fps_ass_l85a2_m_emag.stats.extra_ammo = 3
					self.parts.wpn_fps_ass_l85a2_m_emag.stats.spread = 0
					self.parts.wpn_fps_ass_l85a2_m_emag.stats.recoil = 1
					self.parts.wpn_fps_ass_l85a2_m_emag.stats.concealment = 0
					self.parts.wpn_fps_ass_l85a2_m_emag.stats.reload = 0


					--L5 Magazine
					self.parts.wpn_fps_upg_m4_m_l5.stats.extra_ammo = 0
					self.parts.wpn_fps_upg_m4_m_l5.stats.spread = 0
					self.parts.wpn_fps_upg_m4_m_l5.stats.recoil = 1
					self.parts.wpn_fps_upg_m4_m_l5.stats.concealment = -1
					self.parts.wpn_fps_upg_m4_m_l5.stats.reload = 1
					

					--Speed Pull Magazine
					self.parts.wpn_fps_m4_upg_m_quick.stats.concealment = -2
					self.parts.wpn_fps_m4_upg_m_quick.stats.reload = 2


			--KA-ZDM2 Extended Magazine(Kang Arms X1)
				self.parts.wpn_fps_snp_qbu88_m_extended.stats.extra_ammo = 3


	--Sights	

			--Holographic Sight
			self.parts.wpn_fps_upg_o_eotech.stats.spread = 0
			self.parts.wpn_fps_upg_o_eotech.stats.recoil = 1
			self.parts.wpn_fps_upg_o_eotech.stats.concealment = -1
			self.parts.wpn_fps_upg_o_eotech.stats.zoom = 3
			

			--The Professional's Choice Sight
			self.parts.wpn_fps_upg_o_t1micro.stats.spread = 0
			self.parts.wpn_fps_upg_o_t1micro.stats.recoil = 1
			self.parts.wpn_fps_upg_o_t1micro.stats.concealment = -1
			self.parts.wpn_fps_upg_o_t1micro.stats.zoom = 3
			

			--Surgeon Sight
			self.parts.wpn_fps_upg_o_docter.stats.spread = 0
			self.parts.wpn_fps_upg_o_docter.stats.recoil = 0
			self.parts.wpn_fps_upg_o_docter.stats.concealment = 0
			self.parts.wpn_fps_upg_o_docter.stats.zoom = 2
			

			--Acough Optic Scope
			self.parts.wpn_fps_upg_o_acog.stats.spread = 1
			self.parts.wpn_fps_upg_o_acog.stats.recoil = 1
			self.parts.wpn_fps_upg_o_acog.stats.concealment = -3
			self.parts.wpn_fps_upg_o_acog.stats.zoom = 6
			

			--Military Red Dot Sight
			self.parts.wpn_fps_upg_o_aimpoint.stats.spread = 1
			self.parts.wpn_fps_upg_o_aimpoint.stats.recoil = 1
			self.parts.wpn_fps_upg_o_aimpoint.stats.concealment = -3
			self.parts.wpn_fps_upg_o_aimpoint.stats.zoom = 4
			

			--Milspec Scope
			self.parts.wpn_fps_upg_o_specter.stats.spread = 1
			self.parts.wpn_fps_upg_o_specter.stats.recoil = 1
			self.parts.wpn_fps_upg_o_specter.stats.concealment = -3
			self.parts.wpn_fps_upg_o_specter.stats.zoom = 4
			

			--See More Sight
			self.parts.wpn_fps_upg_o_cmore.stats.spread = 0
			self.parts.wpn_fps_upg_o_cmore.stats.recoil = 1
			self.parts.wpn_fps_upg_o_cmore.stats.concealment = -1
			self.parts.wpn_fps_upg_o_cmore.stats.zoom = 3
			

			--Combat Sight
			self.parts.wpn_fps_upg_o_cs.stats.spread = 1
			self.parts.wpn_fps_upg_o_cs.stats.recoil = 1
			self.parts.wpn_fps_upg_o_cs.stats.concealment = -3
			self.parts.wpn_fps_upg_o_cs.stats.zoom = 4
			

			--Compact Holosight
			self.parts.wpn_fps_upg_o_eotech_xps.stats.spread = 0
			self.parts.wpn_fps_upg_o_eotech_xps.stats.recoil = 1
			self.parts.wpn_fps_upg_o_eotech_xps.stats.concealment = -1
			self.parts.wpn_fps_upg_o_eotech_xps.stats.zoom = 3
			

			--Speculator Sight
			self.parts.wpn_fps_upg_o_reflex.stats.spread = 0
			self.parts.wpn_fps_upg_o_reflex.stats.recoil = 1
			self.parts.wpn_fps_upg_o_reflex.stats.concealment = -1
			self.parts.wpn_fps_upg_o_reflex.stats.zoom = 3
			

			--Trigonom Sight
			self.parts.wpn_fps_upg_o_rx01.stats.spread = 0
			self.parts.wpn_fps_upg_o_rx01.stats.recoil = 1
			self.parts.wpn_fps_upg_o_rx01.stats.concealment = -1
			self.parts.wpn_fps_upg_o_rx01.stats.zoom = 3
			

			--Solar Sight
			self.parts.wpn_fps_upg_o_rx30.stats.spread = 0
			self.parts.wpn_fps_upg_o_rx30.stats.recoil = 1
			self.parts.wpn_fps_upg_o_rx30.stats.concealment = -1
			self.parts.wpn_fps_upg_o_rx30.stats.zoom = 3
			

			--Theia Magnified Scope
			self.parts.wpn_fps_upg_o_leupold.stats.spread = 1
			self.parts.wpn_fps_upg_o_leupold.stats.recoil = 1
			self.parts.wpn_fps_upg_o_leupold.stats.concealment = -3
			self.parts.wpn_fps_upg_o_leupold.stats.zoom = 10
			

			--Box Buddy Sight
			self.parts.wpn_fps_upg_o_box.stats.spread = 1
			self.parts.wpn_fps_upg_o_box.stats.recoil = 1
			self.parts.wpn_fps_upg_o_box.stats.concealment = -3
			self.parts.wpn_fps_upg_o_box.stats.zoom = 10
			

			--Reconnaissance Sight
			self.parts.wpn_fps_upg_o_spot.stats.spread = 1
			self.parts.wpn_fps_upg_o_spot.stats.recoil = 1
			self.parts.wpn_fps_upg_o_spot.stats.concealment = -3
			self.parts.wpn_fps_upg_o_spot.stats.zoom = 4
			

			--Compact Tactical Box Sight
			self.parts.wpn_fps_upg_o_tf90.stats.spread = 1
			self.parts.wpn_fps_upg_o_tf90.stats.recoil = 1
			self.parts.wpn_fps_upg_o_tf90.stats.concealment = -3
			self.parts.wpn_fps_upg_o_tf90.stats.zoom = 5
			

			--Compact Profile Sight
			self.parts.wpn_fps_upg_o_fc1.stats.spread = 0
			self.parts.wpn_fps_upg_o_fc1.stats.recoil = 0
			self.parts.wpn_fps_upg_o_fc1.stats.concealment = 0
			self.parts.wpn_fps_upg_o_fc1.stats.zoom = 3
			

			--Maelstrom Sight
			self.parts.wpn_fps_upg_o_uh.stats.spread = 0
			self.parts.wpn_fps_upg_o_uh.stats.recoil = 1
			self.parts.wpn_fps_upg_o_uh.stats.concealment = -1
			self.parts.wpn_fps_upg_o_uh.stats.zoom = 3
			

			--Advanced Combat Sight
			self.parts.wpn_fps_upg_o_bmg.stats.spread = 1
			self.parts.wpn_fps_upg_o_bmg.stats.recoil = 1
			self.parts.wpn_fps_upg_o_bmg.stats.concealment = -3
			self.parts.wpn_fps_upg_o_bmg.stats.zoom = 3

	--Stocks

			--AKs

					--Standard Stock
					self.parts.wpn_fps_upg_m4_s_standard.stats.spread = 0
					self.parts.wpn_fps_upg_m4_s_standard.stats.recoil = 0
					self.parts.wpn_fps_upg_m4_s_standard.stats.concealment = 2

					--Standard Stock
					self.parts.wpn_upg_ak_s_skfoldable.stats.spread = 0
					self.parts.wpn_upg_ak_s_skfoldable.stats.recoil = -1
					self.parts.wpn_upg_ak_s_skfoldable.stats.concealment = 3


					--Folding Stock
					self.parts.wpn_upg_ak_s_folding.stats.spread = 0
					self.parts.wpn_upg_ak_s_folding.stats.recoil = -2
					self.parts.wpn_upg_ak_s_folding.stats.concealment = 4


					--Wooden Sniper Stock
					self.parts.wpn_upg_ak_s_psl.stats.spread = 4
					self.parts.wpn_upg_ak_s_psl.stats.recoil = -1
					self.parts.wpn_upg_ak_s_psl.stats.concealment = -4


					--Classic Stock
					self.parts.wpn_fps_upg_ak_s_solidstock.stats.spread = 1
					self.parts.wpn_fps_upg_ak_s_solidstock.stats.recoil = 2
					self.parts.wpn_fps_upg_ak_s_solidstock.stats.concealment = -4

			--Shotguns

					--Muldon Stock
					self.parts.wpn_fps_shot_r870_s_folding.stats.spread = -1
					self.parts.wpn_fps_shot_r870_s_folding.stats.recoil = -1
					self.parts.wpn_fps_shot_r870_s_folding.stats.concealment = 1


			--Tactical Stock
			self.parts.wpn_fps_upg_m4_s_pts.stats.spread = 0
			self.parts.wpn_fps_upg_m4_s_pts.stats.recoil = 2
			self.parts.wpn_fps_upg_m4_s_pts.stats.concealment = -1


			--Folding Stock
			self.parts.wpn_fps_m4_uupg_s_fold.stats.spread = 0
			self.parts.wpn_fps_m4_uupg_s_fold.stats.recoil = -1
			self.parts.wpn_fps_m4_uupg_s_fold.stats.concealment = 3


			--Wide Stock
			self.parts.wpn_fps_upg_m4_s_crane.stats.spread = 0
			self.parts.wpn_fps_upg_m4_s_crane.stats.recoil = 1
			self.parts.wpn_fps_upg_m4_s_crane.stats.concealment = 1


			--War-Torn Stock
			self.parts.wpn_fps_upg_m4_s_mk46.stats.spread = 2
			self.parts.wpn_fps_upg_m4_s_mk46.stats.recoil = -1
			self.parts.wpn_fps_upg_m4_s_mk46.stats.concealment = -2


			--2-Piece Stock
			self.parts.wpn_fps_upg_m4_s_ubr.stats.spread = 1
			self.parts.wpn_fps_upg_m4_s_ubr.stats.recoil = 1
			self.parts.wpn_fps_upg_m4_s_ubr.stats.concealment = -2


			--Contractor Stock
			self.parts.wpn_fps_snp_tti_s_vltor.stats.spread = 1
			self.parts.wpn_fps_snp_tti_s_vltor.stats.recoil = 0
			self.parts.wpn_fps_snp_tti_s_vltor.stats.concealment = 0


	--Upper Receivers


			--CARs

					--Exotique Receiver
					self.parts.wpn_fps_m4_upper_reciever_edge.stats.damage = 1
					self.parts.wpn_fps_m4_upper_reciever_edge.stats.spread = 0
					self.parts.wpn_fps_m4_upper_reciever_edge.stats.recoil = 1
					self.parts.wpn_fps_m4_upper_reciever_edge.stats.concealment = 0
					

					--LW Upper Receiver
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.stats.damage = 0
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.stats.spread = 1
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.stats.recoil = 2
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.stats.concealment = 0
					

					--THRUST Upper Receiver
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_core.stats.damage = 1
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_core.stats.spread = -2
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_core.stats.recoil = 0
					self.parts.wpn_fps_upg_ass_m4_upper_reciever_core.stats.concealment = 0

			--Shotguns

					--Upper Receivers

							--Shell Rack
							self.parts.wpn_fps_shot_r870_body_rack.stats.extra_ammo = 0
							self.parts.wpn_fps_shot_r870_body_rack.stats.total_ammo_mod = 0
							self.parts.wpn_fps_shot_r870_body_rack.stats.total_ammo_add = 5
							self.parts.wpn_fps_shot_r870_body_rack.stats.concealment = -2

end

function WeaponFactoryTweakData:_init_shotgun_attachments()
	--T5 Shotguns-----------------------------------------------------------
			
			--Breaker 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_boot", ammo_override.shotgun.t5)
		
			--Joceline O/U 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_b682", ammo_override.shotgun.double_barrel)
			
					--Stocks

							--Short Enough Stock
							self.parts.wpn_fps_shot_b682_s_ammopouch.stats.total_ammo_mod = 0
							self.parts.wpn_fps_shot_b682_s_ammopouch.stats.total_ammo_add = 6
							self.parts.wpn_fps_shot_b682_s_ammopouch.stats.concealment = -1
		
			--Mosconi 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_huntsman", ammo_override.shotgun.double_barrel)
			
			--Claire 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_coach", ammo_override.shotgun.double_barrel)
			
			--GSPS 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_m37", ammo_override.shotgun.t5)

	
	--T4 Shotguns-----------------------------------------------------------
			
			--Mosconi 12G Tactical Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_m590", ammo_override.shotgun.pump_action)
		
			--Raven Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_ksg", ammo_override.shotgun.pump_action)
			
			--Reinfeld 88 Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_m1897", ammo_override.shotgun.pump_action)

			--Reinfeld 880 Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_r870", ammo_override.shotgun.pump_action)

					--Stocks

							--Short Enough Stock
							self.parts.wpn_fps_shot_r870_s_nostock.stats.spread = -1
							self.parts.wpn_fps_shot_r870_s_nostock.stats.recoil = -3
							self.parts.wpn_fps_shot_r870_s_nostock.stats.concealment = 3

							--Short Enough Tactical Stock
							self.parts.wpn_fps_shot_r870_s_nostock_big.stats.spread = -1
							self.parts.wpn_fps_shot_r870_s_nostock_big.stats.recoil = -1
							self.parts.wpn_fps_shot_r870_s_nostock_big.stats.concealment = 2

							--Government Issue Tactical Stock
							self.parts.wpn_fps_shot_r870_s_solid_big.stats.spread = 0
							self.parts.wpn_fps_shot_r870_s_solid_big.stats.recoil = 2
							self.parts.wpn_fps_shot_r870_s_solid_big.stats.concealment = -2
			
			--The Judge Shotgun
			self:insert_ammo_overrides("wpn_fps_pis_judge", ammo_override.shotgun.t4)
			self.wpn_fps_pis_judge.override.wpn_fps_upg_a_custom.custom_stats.rays = 9
			self.wpn_fps_pis_judge.override.wpn_fps_upg_a_custom_free.custom_stats.rays = 9
			self.wpn_fps_pis_judge.override.wpn_fps_upg_a_dragons_breath.custom_stats.rays = 12
			self.wpn_fps_pis_judge.override.wpn_fps_upg_a_piercing.custom_stats.rays = 12
			
			--Akimbo Judge Shotguns
			self:insert_ammo_overrides("wpn_fps_pis_x_judge", ammo_override.shotgun.t4)
			self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_custom.custom_stats.rays = 7
			self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_custom_free.custom_stats.rays = 7
			self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_dragons_breath.custom_stats.rays = 9
			self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_piercing.custom_stats.rays = 9
			
			--Goliath 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_rota", ammo_override.shotgun.t4)
			
			--Akimbo Goliath 12G Shotguns
			self:insert_ammo_overrides("wpn_fps_sho_x_rota", ammo_override.shotgun.t4)
			
			--Locomotive 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_serbu", ammo_override.shotgun.pump_action)

					--Stocks

							--Standard Stock
							self.parts.wpn_fps_shot_r870_s_solid.stats.spread = 0
							self.parts.wpn_fps_shot_r870_s_solid.stats.recoil = 3
							self.parts.wpn_fps_shot_r870_s_solid.stats.concealment = -2

							--Police Shorty Stock
							self.parts.wpn_fps_shot_shorty_s_solid_short.stats.spread = -1
							self.parts.wpn_fps_shot_shorty_s_solid_short.stats.recoil = 2
							self.parts.wpn_fps_shot_shorty_s_solid_short.stats.concealment = -3

							--Tactical Shorty Stock
							self.parts.wpn_fps_shot_shorty_s_nostock_short.stats.spread = -2
							self.parts.wpn_fps_shot_shorty_s_nostock_short.stats.recoil = -4
							self.parts.wpn_fps_shot_shorty_s_nostock_short.stats.concealment = 3
			
			--Argos III Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_ultima", ammo_override.shotgun.t4)


	--T3 Shotguns-----------------------------------------------------------
			
			--M1014 Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_ben", ammo_override.shotgun.t3)
					
					--Barrels

							--Short Barrel
							self.parts.wpn_fps_sho_ben_b_short.stats.extra_ammo = -1
							self.parts.wpn_fps_sho_ben_b_short.stats.damage = 0
							self.parts.wpn_fps_sho_ben_b_short.stats.spread = -2
							self.parts.wpn_fps_sho_ben_b_short.stats.recoil = -2
							self.parts.wpn_fps_sho_ben_b_short.stats.concealment = 6
		
			--Predator 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_spas12", ammo_override.shotgun.t3)
					
					--Stocks

							--Folded Stock
							self.parts.wpn_fps_sho_s_spas12_folded.stats.spread = -1
							self.parts.wpn_fps_sho_s_spas12_folded.stats.recoil = -1
							self.parts.wpn_fps_sho_s_spas12_folded.stats.concealment = 4

							--Solid Stock
							self.parts.wpn_fps_sho_s_spas12_solid.stats.spread = 1
							self.parts.wpn_fps_sho_s_spas12_solid.stats.recoil = 1
							self.parts.wpn_fps_sho_s_spas12_solid.stats.concealment = 0

							--No Stock
							self.parts.wpn_fps_sho_s_spas12_nostock.stats.spread = 0
							self.parts.wpn_fps_sho_s_spas12_nostock.stats.recoil = -2
							self.parts.wpn_fps_sho_s_spas12_nostock.stats.concealment = 6
			
			--Street Sweeper Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_striker", ammo_override.shotgun.t3)


	--T2 Shotguns-----------------------------------------------------------

			--Izhma 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_shot_saiga", ammo_override.shotgun.t2)

			
			--Steakout 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_aa12", ammo_override.shotgun.t2)

	
	--T1 Shotguns-----------------------------------------------------------
			
			--Grimm 12G Shotgun
			self:insert_ammo_overrides("wpn_fps_sho_basset", ammo_override.shotgun.t2)
		
			--Brothers Grimm 12G Shotguns
			self:insert_ammo_overrides("wpn_fps_sho_x_basset", ammo_override.shotgun.t2)
end

function WeaponFactoryTweakData:_init_assault_rifle_attachments()
	--T4 ARs----------------------------------------------------------------
						
			--Cavity 9mm
			self:insert_ammo_overrides("wpn_fps_ass_sub2000", ammo_override.ar.t4)
					
					--Foregrips

							--Appalachian Foregrip
							self.parts.wpn_fps_ass_sub2000_fg_gen2.stats.spread = 0
							self.parts.wpn_fps_ass_sub2000_fg_gen2.stats.recoil = -4
							self.parts.wpn_fps_ass_sub2000_fg_gen2.stats.concealment = 3

							--Delabarre Foregrip
							self.parts.wpn_fps_ass_sub2000_fg_railed.stats.spread = 0
							self.parts.wpn_fps_ass_sub2000_fg_railed.stats.recoil = 2
							self.parts.wpn_fps_ass_sub2000_fg_railed.stats.concealment = -2

							--Tooth Fairy Suppressor
							self.parts.wpn_fps_ass_sub2000_fg_suppressed.stats.damage = -1
							self.parts.wpn_fps_ass_sub2000_fg_suppressed.stats.spread = 1
							self.parts.wpn_fps_ass_sub2000_fg_suppressed.stats.recoil = -2
							self.parts.wpn_fps_ass_sub2000_fg_suppressed.stats.concealment = -2


			--Galant Rifle
			self:insert_ammo_overrides("wpn_fps_ass_ching", ammo_override.ar.t4)

					--Barrels

							--Tanker Barrel
							self.parts.wpn_fps_ass_ching_b_short.stats.spread = 0
							self.parts.wpn_fps_ass_ching_b_short.stats.recoil = -4
							self.parts.wpn_fps_ass_ching_b_short.stats.concealment = 4
					
					--Foregrips

							--Custom Foregrip
							self.parts.wpn_fps_ass_ching_fg_railed.stats.spread = 0
							self.parts.wpn_fps_ass_ching_fg_railed.stats.recoil = 1
							self.parts.wpn_fps_ass_ching_fg_railed.stats.concealment = -1
					
					--Stocks

							--Magpouch Stock
							self.parts.wpn_fps_ass_ching_s_pouch.stats.spread = 0
							self.parts.wpn_fps_ass_ching_s_pouch.stats.recoil = 0
							self.parts.wpn_fps_ass_ching_s_pouch.stats.concealment = 0
							self.parts.wpn_fps_ass_ching_s_pouch.stats.total_ammo_mod = 3


			--Little Friend 7.62 Assault Rifle
			self:insert_ammo_overrides("wpn_fps_ass_contraband", ammo_override.ar.t4)


			--M308 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_m14", ammo_override.ar.t4)

					--Extras

							--Scope Mount
							self.parts.wpn_fps_upg_o_m14_scopemount.stats.spread = 1
							self.parts.wpn_fps_upg_o_m14_scopemount.stats.recoil = 0
							self.parts.wpn_fps_upg_o_m14_scopemount.stats.concealment = -1

					--Stocks

							--Abraham Body
							self.parts.wpn_fps_ass_m14_body_ebr.stats.spread = 0
							self.parts.wpn_fps_ass_m14_body_ebr.stats.recoil = 0
							self.parts.wpn_fps_ass_m14_body_ebr.stats.concealment = 2
							
							--Jaeger Body
							self.parts.wpn_fps_ass_m14_body_jae.stats.spread = 1
							self.parts.wpn_fps_ass_m14_body_jae.stats.recoil = 1
							self.parts.wpn_fps_ass_m14_body_jae.stats.concealment = -2
							
							--B-Team Stock
							self.parts.wpn_fps_ass_m14_body_ruger.stats.spread = -1
							self.parts.wpn_fps_ass_m14_body_ruger.stats.recoil = -5
							self.parts.wpn_fps_ass_m14_body_ruger.stats.concealment = 19
							self.parts.wpn_fps_ass_m14_body_ruger.stats.total_ammo_mod = 3

	
	--T3 ARs-----------------------------------------------------------

			--AK17 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_flint", ammo_override.ar.t3)


			--AK.762 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_akm", ammo_override.ar.t3)

					--Barrels

							--DMR Kit
							self.wpn_fps_ass_akm.override.wpn_fps_upg_ass_ak_b_zastava = {
								stats = {
									spread = 2,
									total_ammo_mod = -10,
									damage = 62,
									concealment = -4,
									value = 1,
									recoil = -3
								},
								custom_stats = {
									ammo_pickup_min_mul = 0.5,
									ammo_pickup_max_mul = 0.5
								}
							}


			--Golden AK.762 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_akm_gold", ammo_override.ar.t3)

					--Barrels

							--DMR Kit
							self.wpn_fps_ass_akm_gold.override.wpn_fps_upg_ass_ak_b_zastava = {
								stats = {
									spread = 2,
									total_ammo_mod = -10,
									damage = 62,
									concealment = -4,
									value = 1,
									recoil = -3
								},
								custom_stats = {
									ammo_pickup_min_mul = 0.5,
									ammo_pickup_max_mul = 0.5
								}
							}


			--AMR-16 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_m16", ammo_override.ar.t3)

					--Foregrips

							--Tactical Handguard
							self.parts.wpn_fps_m16_fg_railed.stats.spread = 2
							self.parts.wpn_fps_m16_fg_railed.stats.recoil = 0
							self.parts.wpn_fps_m16_fg_railed.stats.concealment = -2
					
							--Blast From The Past Handguard
							self.parts.wpn_fps_m16_fg_vietnam.stats.spread = 0
							self.parts.wpn_fps_m16_fg_vietnam.stats.recoil = 1
							self.parts.wpn_fps_m16_fg_vietnam.stats.concealment = 1

							--Long Ergo Foregrip
							self.parts.wpn_fps_upg_ass_m16_fg_stag.stats.spread = 1
							self.parts.wpn_fps_upg_ass_m16_fg_stag.stats.recoil = 2
							self.parts.wpn_fps_upg_ass_m16_fg_stag.stats.concealment = -3

					--Barrels

							--DMR Kit
							self.wpn_fps_ass_m16.override.wpn_fps_upg_ass_m4_b_beowulf = {
								stats = {
									spread = 4,
									total_ammo_mod = -10,
									damage = 62,
									concealment = -4,
									value = 1,
									recoil = -4
								},
								custom_stats = {
									ammo_pickup_min_mul = 0.5,
									ammo_pickup_max_mul = 0.5
								}
							}


			--Eagle Heavy Rifle
			self:insert_ammo_overrides("wpn_fps_ass_scar", ammo_override.ar.t3)
	
					--Barrels
							
							--Short Barrel
							self.parts.wpn_fps_ass_l85a2_b_long.stats.damage = 2
							self.parts.wpn_fps_ass_l85a2_b_long.stats.spread = -2
							self.parts.wpn_fps_ass_l85a2_b_long.stats.recoil = 0
							self.parts.wpn_fps_ass_l85a2_b_long.stats.concealment = 3

							--Long Barrel
							self.parts.wpn_fps_ass_l85a2_b_short.stats.damage = 0
							self.parts.wpn_fps_ass_l85a2_b_short.stats.spread = 1
							self.parts.wpn_fps_ass_l85a2_b_short.stats.recoil = 1
							self.parts.wpn_fps_ass_l85a2_b_short.stats.concealment = -3

					--Foregrips
	
							--Rail Extension
							self.parts.wpn_fps_ass_scar_fg_railext.stats.spread = 0
							self.parts.wpn_fps_ass_scar_fg_railext.stats.recoil = 1
							self.parts.wpn_fps_ass_scar_fg_railext.stats.concealment = -1

					--Stocks

							--Sniper Stock
							self.parts.wpn_fps_ass_scar_s_sniper.stats.spread = 0
							self.parts.wpn_fps_ass_scar_s_sniper.stats.recoil = 2
							self.parts.wpn_fps_ass_scar_s_sniper.stats.concealment = -3


			--Falcon Rifle
			self:insert_ammo_overrides("wpn_fps_ass_fal", ammo_override.ar.t3)

					--Barrels
							
							--CQB Foregrip
							self.parts.wpn_fps_ass_fal_fg_01.stats.damage = 2
							self.parts.wpn_fps_ass_fal_fg_01.stats.spread = -1
							self.parts.wpn_fps_ass_fal_fg_01.stats.recoil = -1
							self.parts.wpn_fps_ass_fal_fg_01.stats.concealment = 6

							--Retro Foregrip
							self.parts.wpn_fps_ass_fal_fg_03.stats.damage = 2
							self.parts.wpn_fps_ass_fal_fg_03.stats.spread = 0
							self.parts.wpn_fps_ass_fal_fg_03.stats.recoil = 2
							self.parts.wpn_fps_ass_fal_fg_03.stats.concealment = -1
							
							--Marksman Foregrip
							self.parts.wpn_fps_ass_fal_fg_04.stats.damage = 0
							self.parts.wpn_fps_ass_fal_fg_04.stats.spread = 2
							self.parts.wpn_fps_ass_fal_fg_04.stats.recoil = -1
							self.parts.wpn_fps_ass_fal_fg_04.stats.concealment = -2

							--Wooden Foregrip
							self.parts.wpn_fps_ass_fal_fg_wood.stats.damage = 0
							self.parts.wpn_fps_ass_fal_fg_wood.stats.spread = 1
							self.parts.wpn_fps_ass_fal_fg_wood.stats.recoil = 1
							self.parts.wpn_fps_ass_fal_fg_wood.stats.concealment = -2
	
					--Grips

							--Tactical Grip
							self.parts.wpn_fps_ass_fal_g_01.stats.spread = -1
							self.parts.wpn_fps_ass_fal_g_01.stats.recoil = 1
							self.parts.wpn_fps_ass_fal_g_01.stats.concealment = 2

					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_ass_fal_m_01.stats.extra_ammo = 10
							self.parts.wpn_fps_ass_fal_m_01.stats.spread = -1
							self.parts.wpn_fps_ass_fal_m_01.stats.recoil = 1
							self.parts.wpn_fps_ass_fal_m_01.stats.concealment = -2
							self.parts.wpn_fps_ass_fal_m_01.stats.reload = 0
	
					--Stocks
		
							--CQB Stock
							self.parts.wpn_fps_ass_fal_s_01.stats.spread = 0
							self.parts.wpn_fps_ass_fal_s_01.stats.recoil = 0
							self.parts.wpn_fps_ass_fal_s_01.stats.concealment = 5

							--Marksman Stock
							self.parts.wpn_fps_ass_fal_s_03.stats.spread = 2
							self.parts.wpn_fps_ass_fal_s_03.stats.recoil = 1
							self.parts.wpn_fps_ass_fal_s_03.stats.concealment = -2

							--Wooden Stock
							self.parts.wpn_fps_ass_fal_s_wood.stats.spread = 0
							self.parts.wpn_fps_ass_fal_s_wood.stats.recoil = 3
							self.parts.wpn_fps_ass_fal_s_wood.stats.concealment = 0


			--Gewehr 3 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_g3", ammo_override.ar.t3)

					--Barrels

							--Conversion Kits

									--Assault Kit
									self.wpn_fps_ass_g3.override.wpn_fps_ass_g3_b_short = {
										stats = {
											total_ammo_mod = 10,
											damage = -42,
											spread = -3,
											recoil = 6,
											concealment = 1,
											value = 2
										},
										custom_stats = {
											ammo_pickup_min_mul = 1.75,
											ammo_pickup_max_mul = 2
										},
										adds = {}
									}

									--DMR Kit
									self.wpn_fps_ass_g3.override.wpn_fps_ass_g3_b_sniper = {
										stats = {
											extra_ammo = -5,
											total_ammo_mod = -8,
											damage = 62,
											value = 2,
											concealment = -2,
											recoil = -1,
											spread = 2
										},
										custom_stats = {
											ammo_pickup_min_mul = 0.5,
											ammo_pickup_max_mul = 0.5
										},
										adds = {}
									}

					--Foregrips
		
							--Precision Foregrip
							self.parts.wpn_fps_ass_g3_fg_psg.stats.damage = 2
							self.parts.wpn_fps_ass_g3_fg_psg.stats.spread = 1
							self.parts.wpn_fps_ass_g3_fg_psg.stats.recoil = -2
							self.parts.wpn_fps_ass_g3_fg_psg.stats.concealment = -2

							--Tactical Foregrip
							self.parts.wpn_fps_ass_g3_fg_railed.stats.spread = 0
							self.parts.wpn_fps_ass_g3_fg_railed.stats.recoil = 2
							self.parts.wpn_fps_ass_g3_fg_railed.stats.concealment = -2

							--Wooden Foregrip
							self.parts.wpn_fps_ass_g3_fg_retro.stats.spread = -1
							self.parts.wpn_fps_ass_g3_fg_retro.stats.recoil = 3
							self.parts.wpn_fps_ass_g3_fg_retro.stats.concealment = 2

							--Plastic Foregrip
							self.parts.wpn_fps_ass_g3_fg_retro_plastic.stats.spread = -1
							self.parts.wpn_fps_ass_g3_fg_retro_plastic.stats.recoil = 0
							self.parts.wpn_fps_ass_g3_fg_retro_plastic.stats.concealment = 4

					--Grips
		
							--Retro Grip
							self.parts.wpn_fps_ass_g3_g_retro.stats.spread = 0
							self.parts.wpn_fps_ass_g3_g_retro.stats.recoil = 2
							self.parts.wpn_fps_ass_g3_g_retro.stats.concealment = 0

							--Precision Grip
							self.parts.wpn_fps_ass_g3_g_sniper.stats.spread = 2
							self.parts.wpn_fps_ass_g3_g_sniper.stats.recoil = -1
							self.parts.wpn_fps_ass_g3_g_sniper.stats.concealment = -1

					--Stocks
		
							--Precision Stock
							self.parts.wpn_fps_ass_g3_s_sniper.stats.spread = 2
							self.parts.wpn_fps_ass_g3_s_sniper.stats.recoil = -1
							self.parts.wpn_fps_ass_g3_s_sniper.stats.concealment = -1

							--Wooden Stock
							self.parts.wpn_fps_ass_g3_s_wood.stats.spread = 0
							self.parts.wpn_fps_ass_g3_s_wood.stats.recoil = 3
							self.parts.wpn_fps_ass_g3_s_wood.stats.concealment = -1


			--KETCHNOV Byk-1 Assault Rifle
			self:insert_ammo_overrides("wpn_fps_ass_groza", ammo_override.ar.t3)

					--Barrels

							--K-B100 Suppressor
							self.parts.wpn_fps_ass_groza_b_supressor.stats.damage = 1
							self.parts.wpn_fps_ass_groza_b_supressor.stats.spread = -1
							self.parts.wpn_fps_ass_groza_b_supressor.stats.recoil = -1
							self.parts.wpn_fps_ass_groza_b_supressor.stats.concealment = 1
					
					--Magazines

							--K-B1 Speedmag
							self.parts.wpn_fps_ass_groza_m_speed.stats.extra_ammo = 5
							self.parts.wpn_fps_ass_groza_m_speed.stats.spread = -1
							self.parts.wpn_fps_ass_groza_m_speed.stats.recoil = 0
							self.parts.wpn_fps_ass_groza_m_speed.stats.concealment = -3
							self.parts.wpn_fps_ass_groza_m_speed.stats.reload = 2


			--KS12 Urban Rifle
			self:insert_ammo_overrides("wpn_fps_ass_shak12", ammo_override.ar.t3)

	
	--T2 ARs-----------------------------------------------------------
			
			--AK Rifle
			self:insert_ammo_overrides("wpn_fps_ass_74", ammo_override.ar.t2)

					--Barrels

							--DMR Kit
							self.wpn_fps_ass_74.override.wpn_fps_upg_ass_ak_b_zastava = {
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


			--AK5 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_ak5", ammo_override.ar.t2)
			
					--Barrels
					
							--CQB Barrel
							self.parts.wpn_fps_ass_ak5_b_short.stats.damage = 1
							self.parts.wpn_fps_ass_ak5_b_short.stats.spread = -1
							self.parts.wpn_fps_ass_ak5_b_short.stats.recoil = -1
							self.parts.wpn_fps_ass_ak5_b_short.stats.concealment = 1

					--Foregrips

							--Karbin Ceres Handguard
							self.parts.wpn_fps_ass_ak5_fg_ak5c.stats.damage = 1
							self.parts.wpn_fps_ass_ak5_fg_ak5c.stats.spread = -1
							self.parts.wpn_fps_ass_ak5_fg_ak5c.stats.recoil = 1
							self.parts.wpn_fps_ass_ak5_fg_ak5c.stats.concealment = -2
					
							--Polizei Special Foregrip
							self.parts.wpn_fps_ass_ak5_fg_fnc.stats.damage = 0
							self.parts.wpn_fps_ass_ak5_fg_fnc.stats.spread = 0
							self.parts.wpn_fps_ass_ak5_fg_fnc.stats.recoil = -1
							self.parts.wpn_fps_ass_ak5_fg_fnc.stats.concealment = 1

					--Stocks

							--Bertil Stock
							self.parts.wpn_fps_ass_ak5_s_ak5b.stats.spread = 2
							self.parts.wpn_fps_ass_ak5_s_ak5b.stats.recoil = 0
							self.parts.wpn_fps_ass_ak5_s_ak5b.stats.concealment = -2

							--Caesar Stock
							self.parts.wpn_fps_ass_ak5_s_ak5c.stats.spread = 0
							self.parts.wpn_fps_ass_ak5_s_ak5c.stats.recoil = 2
							self.parts.wpn_fps_ass_ak5_s_ak5c.stats.concealment = 2


			--CAR-4 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_m4", ammo_override.ar.t2)
	
					--Barrels

							--Short Barrel
							self.parts.wpn_fps_m4_uupg_b_short.stats.damage = 0
							self.parts.wpn_fps_m4_uupg_b_short.stats.spread = -1
							self.parts.wpn_fps_m4_uupg_b_short.stats.recoil = 0
							self.parts.wpn_fps_m4_uupg_b_short.stats.concealment = 2
							
							--Stealth Barrel
							self.parts.wpn_fps_m4_uupg_b_sd.stats.damage = 0
							self.parts.wpn_fps_m4_uupg_b_sd.stats.spread = -3
							self.parts.wpn_fps_m4_uupg_b_sd.stats.recoil = 1
							self.parts.wpn_fps_m4_uupg_b_sd.stats.concealment = 1

							--DMR Kit
							self.wpn_fps_ass_m4.override.wpn_fps_upg_ass_m4_b_beowulf = {
								stats = {
									spread = 4,
									total_ammo_mod = -12,
									damage = 104,
									concealment = -4,
									value = 1,
									recoil = -10
								},
								custom_stats = {
									ammo_pickup_min_mul = 0.25,
									ammo_pickup_max_mul = 0.3333
								}
							}
	
					--Foregrips

							--Aftermarket Special Handguard
							self.parts.wpn_fps_m4_uupg_fg_lr300.stats.damage = 0
							self.parts.wpn_fps_m4_uupg_fg_lr300.stats.spread = 1
							self.parts.wpn_fps_m4_uupg_fg_lr300.stats.recoil = 0
							self.parts.wpn_fps_m4_uupg_fg_lr300.stats.concealment = 3
					
							--Competition Foregrip
							self.parts.wpn_fps_upg_fg_jp.stats.damage = 1
							self.parts.wpn_fps_upg_fg_jp.stats.spread = 1
							self.parts.wpn_fps_upg_fg_jp.stats.recoil = -3
							self.parts.wpn_fps_upg_fg_jp.stats.concealment = 2

							--Gazelle Rail
							self.parts.wpn_fps_upg_fg_smr.stats.damage = 1
							self.parts.wpn_fps_upg_fg_smr.stats.spread = 2
							self.parts.wpn_fps_upg_fg_smr.stats.recoil = -1
							self.parts.wpn_fps_upg_fg_smr.stats.concealment = -2
					
							--OVAL Foregrip
							self.parts.wpn_fps_upg_ass_m4_fg_lvoa.stats.damage = 1
							self.parts.wpn_fps_upg_ass_m4_fg_lvoa.stats.spread = -1
							self.parts.wpn_fps_upg_ass_m4_fg_lvoa.stats.recoil = 3
							self.parts.wpn_fps_upg_ass_m4_fg_lvoa.stats.concealment = 0
					
							--E.M.O. Foregrip
							self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.damage = 0
							self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.spread = 1
							self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.recoil = 1
							self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.concealment = 2


			--Gecko 7.62 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_galil", ammo_override.ar.t2)

					--Barrels
							
							--Fabulous Foregrip
							self.parts.wpn_fps_ass_galil_fg_fab.stats.damage = 1
							self.parts.wpn_fps_ass_galil_fg_fab.stats.spread = -1
							self.parts.wpn_fps_ass_galil_fg_fab.stats.recoil = 1
							self.parts.wpn_fps_ass_galil_fg_fab.stats.concealment = 1

							--CQB Foregrip
							self.parts.wpn_fps_ass_galil_fg_mar.stats.damage = 2
							self.parts.wpn_fps_ass_galil_fg_mar.stats.spread = -2
							self.parts.wpn_fps_ass_galil_fg_mar.stats.recoil = -2
							self.parts.wpn_fps_ass_galil_fg_mar.stats.concealment = 4

							--Light Foregrip
							self.parts.wpn_fps_ass_galil_fg_sar.stats.damage = 1
							self.parts.wpn_fps_ass_galil_fg_sar.stats.spread = 0
							self.parts.wpn_fps_ass_galil_fg_sar.stats.recoil = 0
							self.parts.wpn_fps_ass_galil_fg_sar.stats.concealment = 1
						
							--Sniper Foregrip
							self.parts.wpn_fps_ass_galil_fg_sniper.stats.damage = 1
							self.parts.wpn_fps_ass_galil_fg_sniper.stats.spread = 3
							self.parts.wpn_fps_ass_galil_fg_sniper.stats.recoil = -1
							self.parts.wpn_fps_ass_galil_fg_sniper.stats.concealment = -2
	
					--Grips

							--Sniper Grip
							self.parts.wpn_fps_ass_galil_g_sniper.stats.spread = 1
							self.parts.wpn_fps_ass_galil_g_sniper.stats.recoil = -1
							self.parts.wpn_fps_ass_galil_g_sniper.stats.concealment = -1
	
					--Stocks

							--Fabulous Stock
							self.parts.wpn_fps_ass_galil_s_fab.stats.spread = 1
							self.parts.wpn_fps_ass_galil_s_fab.stats.recoil = -2
							self.parts.wpn_fps_ass_galil_s_fab.stats.concealment = 3

							--Light Stock
							self.parts.wpn_fps_ass_galil_s_light.stats.spread = 0
							self.parts.wpn_fps_ass_galil_s_light.stats.recoil = 1
							self.parts.wpn_fps_ass_galil_s_light.stats.concealment = 2

							--Plastic Stock
							self.parts.wpn_fps_ass_galil_s_plastic.stats.spread = 2
							self.parts.wpn_fps_ass_galil_s_plastic.stats.recoil = -2
							self.parts.wpn_fps_ass_galil_s_plastic.stats.concealment = 1

							--Skeletal Stock
							self.parts.wpn_fps_ass_galil_s_skeletal.stats.spread = -1
							self.parts.wpn_fps_ass_galil_s_skeletal.stats.recoil = 2
							self.parts.wpn_fps_ass_galil_s_skeletal.stats.concealment = 1

							--Sniper Stock
							self.parts.wpn_fps_ass_galil_s_sniper.stats.spread = 3
							self.parts.wpn_fps_ass_galil_s_sniper.stats.recoil = -3
							self.parts.wpn_fps_ass_galil_s_sniper.stats.concealment = -2

							--Wooden Stock
							self.parts.wpn_fps_ass_galil_s_wood.stats.spread = -1
							self.parts.wpn_fps_ass_galil_s_wood.stats.recoil = 4
							self.parts.wpn_fps_ass_galil_s_wood.stats.concealment = -2


			--Lion's Roar Rifle
			self:insert_ammo_overrides("wpn_fps_ass_vhs", ammo_override.ar.t2)

					--Barrels
							
							--CQB Barrel
							self.parts.wpn_fps_ass_vhs_b_short.stats.damage = 1
							self.parts.wpn_fps_ass_vhs_b_short.stats.spread = -1
							self.parts.wpn_fps_ass_vhs_b_short.stats.recoil = 1
							self.parts.wpn_fps_ass_vhs_b_short.stats.concealment = 3

							--Precision Barrel
							self.parts.wpn_fps_ass_vhs_b_sniper.stats.damage = 1
							self.parts.wpn_fps_ass_vhs_b_sniper.stats.spread = 2
							self.parts.wpn_fps_ass_vhs_b_sniper.stats.recoil = 0
							self.parts.wpn_fps_ass_vhs_b_sniper.stats.concealment = -2

							--Silenced Barrel
							self.parts.wpn_fps_ass_vhs_b_silenced.stats.damage = 0
							self.parts.wpn_fps_ass_vhs_b_silenced.stats.spread = 0
							self.parts.wpn_fps_ass_vhs_b_silenced.stats.recoil = 3
							self.parts.wpn_fps_ass_vhs_b_silenced.stats.concealment = 0


			--Queen's Wrath Rifle
			self:insert_ammo_overrides("wpn_fps_ass_l85a2", ammo_override.ar.t2)

					--Barrels
							
							--Short Barrel
							self.parts.wpn_fps_aug_b_short.stats.damage = 0
							self.parts.wpn_fps_aug_b_short.stats.spread = -1
							self.parts.wpn_fps_aug_b_short.stats.recoil = 2
							self.parts.wpn_fps_aug_b_short.stats.concealment = 2

							--Long Barrel
							self.parts.wpn_fps_aug_b_long.stats.damage = 1
							self.parts.wpn_fps_aug_b_long.stats.spread = 1
							self.parts.wpn_fps_aug_b_long.stats.recoil = 1
							self.parts.wpn_fps_aug_b_long.stats.concealment = -3
	
					--Foregrips

							--Versatile Foregrip
							self.parts.wpn_fps_ass_l85a2_fg_short.stats.spread = 0
							self.parts.wpn_fps_ass_l85a2_fg_short.stats.recoil = 1
							self.parts.wpn_fps_ass_l85a2_fg_short.stats.concealment = 1
	
					--Grips

							--Delightful Grip
							self.parts.wpn_fps_ass_l85a2_g_worn.stats.spread = 0
							self.parts.wpn_fps_ass_l85a2_g_worn.stats.recoil = 1
							self.parts.wpn_fps_ass_l85a2_g_worn.stats.concealment = 0


			--Tempest-21 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_komodo", ammo_override.ar.t2)


			--UAR Rifle
			self:insert_ammo_overrides("wpn_fps_ass_aug", ammo_override.ar.t2)
	
					--Barrels
							
							--Prodigious Barrel
							self.parts.wpn_fps_ass_l85a2_b_long.stats.damage = 0
							self.parts.wpn_fps_ass_l85a2_b_long.stats.spread = 2
							self.parts.wpn_fps_ass_l85a2_b_long.stats.recoil = 0
							self.parts.wpn_fps_ass_l85a2_b_long.stats.concealment = -3

							--Diminutive Barrel
							self.parts.wpn_fps_ass_l85a2_b_short.stats.damage = 0
							self.parts.wpn_fps_ass_l85a2_b_short.stats.spread = 0
							self.parts.wpn_fps_ass_l85a2_b_short.stats.recoil = 0
							self.parts.wpn_fps_ass_l85a2_b_short.stats.concealment = 3

					--Extras

							--A3 Tactical Foregrip
							self.parts.wpn_fps_aug_fg_a3.stats.damage = 1
							self.parts.wpn_fps_aug_fg_a3.stats.spread = 0
							self.parts.wpn_fps_aug_fg_a3.stats.recoil = 2
							self.parts.wpn_fps_aug_fg_a3.stats.concealment = -2
	
					--Lower Receivers

							--Raptor Polymer Body
							self.parts.wpn_fps_aug_body_f90.stats.damage = 1
							self.parts.wpn_fps_aug_body_f90.stats.spread = 2
							self.parts.wpn_fps_aug_body_f90.stats.recoil = -2
							self.parts.wpn_fps_aug_body_f90.stats.concealment = -2

					--Magazines

							--Speed Pull Magazine
							self.parts.wpn_fps_ass_aug_m_quick.stats.reload = 2
							self.parts.wpn_fps_ass_aug_m_quick.stats.concealment = -2


			--Union 5.56 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_corgi", ammo_override.ar.t2)
	
					--Barrels

							--Short Barrel
							self.parts.wpn_fps_ass_corgi_b_short.stats.damage = 0
							self.parts.wpn_fps_ass_corgi_b_short.stats.spread = -2
							self.parts.wpn_fps_ass_corgi_b_short.stats.recoil = 0
							self.parts.wpn_fps_ass_corgi_b_short.stats.concealment = 3
	
					--Lower Receivers

							--Dunes Tactical Receiver
							self.parts.wpn_fps_ass_corgi_body_lower_strap.stats.damage = 0
							self.parts.wpn_fps_ass_corgi_body_lower_strap.stats.spread = 0
							self.parts.wpn_fps_ass_corgi_body_lower_strap.stats.recoil = 2
							self.parts.wpn_fps_ass_corgi_body_lower_strap.stats.concealment = -2

	
	--T1 ARs-----------------------------------------------------------

			--AMCAR Rifle
			self:insert_ammo_overrides("wpn_fps_ass_amcar", ammo_override.ar.t1)


			--Bootleg Rifle
			self:insert_ammo_overrides("wpn_fps_ass_tecci", ammo_override.ar.t1)

					--Barrels

						--AML Barrel
							self.parts.wpn_fps_ass_tecci_b_long.stats.spread = 0
							self.parts.wpn_fps_ass_tecci_b_long.stats.recoil = 2
							self.parts.wpn_fps_ass_tecci_b_long.stats.concealment = -3

					--Barrels Extensions
			
							--Bootstrap Compensator
							self.parts.wpn_fps_ass_tecci_ns_special.stats.damage = 0
							self.parts.wpn_fps_ass_tecci_ns_special.stats.spread = 1
							self.parts.wpn_fps_ass_tecci_ns_special.stats.recoil = 2
							self.parts.wpn_fps_ass_tecci_ns_special.stats.concealment = -2
							self.parts.wpn_fps_ass_tecci_ns_special.stats.suppression = 1


			--Clarion Rifle
			self:insert_ammo_overrides("wpn_fps_ass_famas", ammo_override.ar.t1)

					--Barrels
					
							--Long Barrel
							self.parts.wpn_fps_ass_famas_b_long.stats.damage = 0
							self.parts.wpn_fps_ass_famas_b_long.stats.spread = 0
							self.parts.wpn_fps_ass_famas_b_long.stats.recoil = 2
							self.parts.wpn_fps_ass_famas_b_long.stats.concealment = -2
						
							--Short Barrel
							self.parts.wpn_fps_ass_famas_b_short.stats.damage = 3
							self.parts.wpn_fps_ass_famas_b_short.stats.spread = -1
							self.parts.wpn_fps_ass_famas_b_short.stats.recoil = -1
							self.parts.wpn_fps_ass_famas_b_short.stats.concealment = 2
							
							--Sniper Barrel
							self.parts.wpn_fps_ass_famas_b_sniper.stats.damage = 0
							self.parts.wpn_fps_ass_famas_b_sniper.stats.spread = 3
							self.parts.wpn_fps_ass_famas_b_sniper.stats.recoil = -1
							self.parts.wpn_fps_ass_famas_b_sniper.stats.concealment = -2
							
							--Suppressed Barrel
							self.parts.wpn_fps_ass_famas_b_suppressed.stats.damage = -1
							self.parts.wpn_fps_ass_famas_b_suppressed.stats.spread = 2
							self.parts.wpn_fps_ass_famas_b_suppressed.stats.recoil = 1
							self.parts.wpn_fps_ass_famas_b_suppressed.stats.concealment = -1

					--Grips
	
							--G2 Grip
							self.parts.wpn_fps_ass_famas_g_retro.stats.spread = 2
							self.parts.wpn_fps_ass_famas_g_retro.stats.recoil = 1
							self.parts.wpn_fps_ass_famas_g_retro.stats.concealment = -2


			--Commando 553 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_s552", ammo_override.ar.t1)
			
					--Barrels

							--Long Barrel
							self.parts.wpn_fps_ass_s552_b_long.stats.damage = 1
							self.parts.wpn_fps_ass_s552_b_long.stats.spread = 1
							self.parts.wpn_fps_ass_s552_b_long.stats.recoil = 0
							self.parts.wpn_fps_ass_s552_b_long.stats.concealment = -3
	
					--Foregrips

							--Enhanced Foregrip
							self.parts.wpn_fps_ass_s552_fg_standard_green.stats.spread = 1
							self.parts.wpn_fps_ass_s552_fg_standard_green.stats.recoil = 0
							self.parts.wpn_fps_ass_s552_fg_standard_green.stats.concealment = -3
					
							--Railed Foregrip
							self.parts.wpn_fps_ass_s552_fg_railed.stats.spread = 0
							self.parts.wpn_fps_ass_s552_fg_railed.stats.recoil = 2
							self.parts.wpn_fps_ass_s552_fg_railed.stats.concealment = -2

					--Grips
	
							--Enhanced Grip
							self.parts.wpn_fps_ass_s552_g_standard_green.stats.spread = 0
							self.parts.wpn_fps_ass_s552_g_standard_green.stats.recoil = 2
							self.parts.wpn_fps_ass_s552_g_standard_green.stats.concealment = -2
							
					--Stocks
							
							--Enhanced Stock
							self.parts.wpn_fps_ass_s552_s_standard_green.stats.spread = 2
							self.parts.wpn_fps_ass_s552_s_standard_green.stats.recoil = 0
							self.parts.wpn_fps_ass_s552_s_standard_green.stats.concealment = -1

					--Upper Receivers
	
							--Heat Treated Body
							self.parts.wpn_fps_ass_s552_body_standard_black.stats.damage = 1
							self.parts.wpn_fps_ass_s552_body_standard_black.stats.spread = -1
							self.parts.wpn_fps_ass_s552_body_standard_black.stats.recoil = 0
							self.parts.wpn_fps_ass_s552_body_standard_black.stats.concealment = 3
	
	
			--JP36 Rifle
			self:insert_ammo_overrides("wpn_fps_ass_g36", ammo_override.ar.t1)

					--Foregrips

							--Compact Foregrip
							self.parts.wpn_fps_ass_g36_fg_c.stats.spread = 0
							self.parts.wpn_fps_ass_g36_fg_c.stats.recoil = -1
							self.parts.wpn_fps_ass_g36_fg_c.stats.concealment = 2
					
							--Polizei Special Foregrip
							self.parts.wpn_fps_ass_g36_fg_ksk.stats.spread = 1
							self.parts.wpn_fps_ass_g36_fg_ksk.stats.recoil = 2
							self.parts.wpn_fps_ass_g36_fg_ksk.stats.concealment = -2
					
							--JP36 Long Foregrip
							self.parts.wpn_fps_upg_g36_fg_long.stats.spread = 2
							self.parts.wpn_fps_upg_g36_fg_long.stats.recoil = 1
							self.parts.wpn_fps_upg_g36_fg_long.stats.concealment = -3

					--Magazines

							--Speed Pull Magazine
							self.parts.wpn_fps_ass_g36_m_quick.stats.reload = 2
							self.parts.wpn_fps_ass_g36_m_quick.stats.concealment = -2
	
					--Sights

							--Original Sight
							self.parts.wpn_fps_ass_g36_o_vintage.stats.spread = 1
							self.parts.wpn_fps_ass_g36_o_vintage.stats.recoil = 1
							self.parts.wpn_fps_ass_g36_o_vintage.stats.concealment = -1
							self.parts.wpn_fps_ass_g36_o_vintage.stats.zoom = 4

					--Stocks

							--Solid Stock
							self.parts.wpn_fps_ass_g36_s_kv.stats.spread = 0
							self.parts.wpn_fps_ass_g36_s_kv.stats.recoil = -1
							self.parts.wpn_fps_ass_g36_s_kv.stats.concealment = 2

							--Sniper Stock
							self.parts.wpn_fps_ass_g36_s_sl8.stats.spread = 1
							self.parts.wpn_fps_ass_g36_s_sl8.stats.recoil = 1
							self.parts.wpn_fps_ass_g36_s_sl8.stats.concealment = -3


			--Valkyria Rifle
			self:insert_ammo_overrides("wpn_fps_ass_asval", ammo_override.ar.t1)
			
					--Barrels

							--Prototype Barrel
							self.parts.wpn_fps_ass_asval_b_proto.stats.damage = 0
							self.parts.wpn_fps_ass_asval_b_proto.stats.spread = -3
							self.parts.wpn_fps_ass_asval_b_proto.stats.recoil = 0
							self.parts.wpn_fps_ass_asval_b_proto.stats.concealment = 6

					--Stocks

							--Solid Stock
							self.parts.wpn_fps_ass_asval_s_solid.stats.spread = 0
							self.parts.wpn_fps_ass_asval_s_solid.stats.recoil = 5
							self.parts.wpn_fps_ass_asval_s_solid.stats.concealment = -6
end

function WeaponFactoryTweakData:_init_lmg_attachments()
	--T2 LMGs----------------------------------------------------------
							
			--Brenner-21 Light Machine Gun
			
					--Barrels

							--Long Barrel
							self.parts.wpn_fps_lmg_hk21_b_long.stats.damage = 1
							self.parts.wpn_fps_lmg_hk21_b_long.stats.spread = 2
							self.parts.wpn_fps_lmg_hk21_b_long.stats.recoil = -2
							self.parts.wpn_fps_lmg_hk21_b_long.stats.concealment = -2

					--Foregrips

							--Short Foregrip
							self.parts.wpn_fps_lmg_hk21_fg_short.stats.damage = -2
							self.parts.wpn_fps_lmg_hk21_fg_short.stats.spread = -2
							self.parts.wpn_fps_lmg_hk21_fg_short.stats.recoil = 5
							self.parts.wpn_fps_lmg_hk21_fg_short.stats.concealment = 3
end

function WeaponFactoryTweakData:_init_sniper_attachments()
end

function WeaponFactoryTweakData:_init_smg_attachments()
	--T3 SMGs----------------------------------------------------------
							
			--CR 805B Submachine Gun
			
					--Barrels

							--Medium Barrel
							self.parts.wpn_fps_smg_hajk_b_medium.stats.damage = 0
							self.parts.wpn_fps_smg_hajk_b_medium.stats.spread = -1
							self.parts.wpn_fps_smg_hajk_b_medium.stats.recoil = 0
							self.parts.wpn_fps_smg_hajk_b_medium.stats.concealment = 2

							--Short Barrel
							self.parts.wpn_fps_smg_hajk_b_short.stats.damage = 0
							self.parts.wpn_fps_smg_hajk_b_short.stats.spread = -3
							self.parts.wpn_fps_smg_hajk_b_short.stats.recoil = 0
							self.parts.wpn_fps_smg_hajk_b_short.stats.concealment = 5
			
					--Akimbo CR 805B Submachine Guns

							--Overrides

									--Vintage Mag.
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_straight.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_straight.stats)
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_straight.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_straight.stats.extra_ammo * 2
									
									--Tactical Mag.
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_pmag.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_pmag.stats)
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_pmag.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_pmag.stats.extra_ammo * 2
									
									--Car Quadstacked Mag
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_quad.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_quad.stats)
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_quad.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_quad.stats.extra_ammo * 2

									--Expert Mag
									self.wpn_fps_smg_x_hajk.override.wpn_fps_ass_l85a2_m_emag.stats = deep_clone(self.parts.wpn_fps_ass_l85a2_m_emag.stats)
									self.wpn_fps_smg_x_hajk.override.wpn_fps_ass_l85a2_m_emag.stats.extra_ammo = self.parts.wpn_fps_ass_l85a2_m_emag.stats.extra_ammo * 2
									
									--L5 Magazine
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_l5.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_l5.stats)
									self.wpn_fps_smg_x_hajk.override.wpn_fps_upg_m4_m_l5.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_l5.stats.extra_ammo * 2

			
			--Jackal Submachine Gun
			
					--Barrels

							--Civilian Barrel
							self.parts.wpn_fps_smg_schakal_b_civil.stats.damage = 0
							self.parts.wpn_fps_smg_schakal_b_civil.stats.spread = 1
							self.parts.wpn_fps_smg_schakal_b_civil.stats.recoil = 0
							self.parts.wpn_fps_smg_schakal_b_civil.stats.concealment = -1
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_schakal_m_long.stats.extra_ammo = 10
							self.parts.wpn_fps_smg_schakal_m_long.stats.spread = 0
							self.parts.wpn_fps_smg_schakal_m_long.stats.recoil = 0
							self.parts.wpn_fps_smg_schakal_m_long.stats.concealment = -2
							self.parts.wpn_fps_smg_schakal_m_long.stats.reload = 0

							--Short Magazine
							self.parts.wpn_fps_smg_schakal_m_short.stats.extra_ammo = -5
							self.parts.wpn_fps_smg_schakal_m_short.stats.spread = 0
							self.parts.wpn_fps_smg_schakal_m_short.stats.recoil = 0
							self.parts.wpn_fps_smg_schakal_m_short.stats.concealment = 2
							self.parts.wpn_fps_smg_schakal_m_short.stats.reload = 0
			
					--Stocks

							--Civilian Stock
							self.parts.wpn_fps_smg_schakal_s_civil.stats.spread = 0
							self.parts.wpn_fps_smg_schakal_s_civil.stats.recoil = 1
							self.parts.wpn_fps_smg_schakal_s_civil.stats.concealment = -1

							--Folded Stock
							self.parts.wpn_fps_smg_schakal_s_folded.stats.spread = 0
							self.parts.wpn_fps_smg_schakal_s_folded.stats.recoil = -2
							self.parts.wpn_fps_smg_schakal_s_folded.stats.concealment = 2
			
					--Akimbo Jackal Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_schakal.override.wpn_fps_smg_schakal_m_long.stats = deep_clone(self.parts.wpn_fps_smg_schakal_m_long.stats)
									self.wpn_fps_smg_x_schakal.override.wpn_fps_smg_schakal_m_long.stats.extra_ammo = self.parts.wpn_fps_smg_schakal_m_long.stats.extra_ammo * 2

									--Short Magazine
									self.wpn_fps_smg_x_schakal.override.wpn_fps_smg_schakal_m_short.stats = deep_clone(self.parts.wpn_fps_smg_schakal_m_short.stats)
									self.wpn_fps_smg_x_schakal.override.wpn_fps_smg_schakal_m_short.stats.extra_ammo = self.parts.wpn_fps_smg_schakal_m_short.stats.extra_ammo * 2

			
			--Krinkov Submachine Gun
			
					--Foregrips

							--Moscow Special Rail
							self.parts.wpn_fps_smg_akmsu_fg_rail.stats.spread = 0
							self.parts.wpn_fps_smg_akmsu_fg_rail.stats.recoil = 2
							self.parts.wpn_fps_smg_akmsu_fg_rail.stats.concealment = -2

							--Aluminum Foregrip
							self.parts.wpn_fps_smg_akmsu_fg_rail.stats.spread = 0
							self.parts.wpn_fps_smg_akmsu_fg_rail.stats.recoil = 1
							self.parts.wpn_fps_smg_akmsu_fg_rail.stats.concealment = 0
			
					--Akimbo Krinkov Submachine Gun

							--Overrides

									--AK Quadstacked Magazine
									self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_m_quad.stats = deep_clone(self.parts.wpn_fps_upg_ak_m_quad.stats)
									self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_m_quad.stats.extra_ammo = self.parts.wpn_fps_upg_ak_m_quad.stats.extra_ammo * 2

									--Low Drag Magazine
									self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_m_uspalm.stats = deep_clone(self.parts.wpn_fps_upg_ak_m_uspalm.stats)
									self.wpn_fps_smg_x_akmsu.override.wpn_fps_upg_ak_m_uspalm.stats.extra_ammo = self.parts.wpn_fps_upg_ak_m_uspalm.stats.extra_ammo * 2

			
			--MP40 Submachine Gun
			
					--Stocks

							--Folded Stock
							self.parts.wpn_fps_smg_erma_s_folded.stats.spread = 0
							self.parts.wpn_fps_smg_erma_s_folded.stats.recoil = -2
							self.parts.wpn_fps_smg_erma_s_folded.stats.concealment = 3

					--Akimbo MP40 Submachine Guns

			
			--Patchett L2A1 Submachine Gun
			
					--Barrels

							--Long Barrel
							self.parts.wpn_fps_smg_sterling_b_long.stats.damage = 2
							self.parts.wpn_fps_smg_sterling_b_long.stats.spread = 1
							self.parts.wpn_fps_smg_sterling_b_long.stats.recoil = -2
							self.parts.wpn_fps_smg_sterling_b_long.stats.concealment = -2

							--Short Barrel
							self.parts.wpn_fps_smg_sterling_b_short.stats.damage = 2
							self.parts.wpn_fps_smg_sterling_b_short.stats.spread = -1
							self.parts.wpn_fps_smg_sterling_b_short.stats.recoil = -1
							self.parts.wpn_fps_smg_sterling_b_short.stats.concealment = 1

							--Heatsinked Suppressed Barrel
							self.parts.wpn_fps_smg_sterling_b_e11.stats.damage = 0
							self.parts.wpn_fps_smg_sterling_b_e11.stats.spread = -1
							self.parts.wpn_fps_smg_sterling_b_e11.stats.recoil = 1
							self.parts.wpn_fps_smg_sterling_b_e11.stats.concealment = -1

							--Suppressed Barrel
							self.parts.wpn_fps_smg_sterling_b_suppressed.stats.damage = 0
							self.parts.wpn_fps_smg_sterling_b_suppressed.stats.spread = -1
							self.parts.wpn_fps_smg_sterling_b_suppressed.stats.recoil = 2
							self.parts.wpn_fps_smg_sterling_b_suppressed.stats.concealment = -2
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_sterling_m_long.stats.extra_ammo = 5
							self.parts.wpn_fps_smg_sterling_m_long.stats.spread = 0
							self.parts.wpn_fps_smg_sterling_m_long.stats.recoil = 0
							self.parts.wpn_fps_smg_sterling_m_long.stats.concealment = -2
							self.parts.wpn_fps_smg_sterling_m_long.stats.reload = 0

							--Short Mag
							self.parts.wpn_fps_smg_sterling_m_short.stats.extra_ammo = -5
							self.parts.wpn_fps_smg_sterling_m_short.stats.spread = 0
							self.parts.wpn_fps_smg_sterling_m_short.stats.recoil = 0
							self.parts.wpn_fps_smg_sterling_m_short.stats.concealment = 2
							self.parts.wpn_fps_smg_sterling_m_short.stats.reload = 0
			
					--Stocks

							--Folded Stock
							self.parts.wpn_fps_smg_sterling_s_folded.stats.spread = 0
							self.parts.wpn_fps_smg_sterling_s_folded.stats.recoil = -2
							self.parts.wpn_fps_smg_sterling_s_folded.stats.concealment = 2

							--No Stock
							self.parts.wpn_fps_smg_sterling_s_nostock.stats.spread = -1
							self.parts.wpn_fps_smg_sterling_s_nostock.stats.recoil = -2
							self.parts.wpn_fps_smg_sterling_s_nostock.stats.concealment = 4

							--Solid Stock
							self.parts.wpn_fps_smg_sterling_s_solid.stats.spread = 1
							self.parts.wpn_fps_smg_sterling_s_solid.stats.recoil = 2
							self.parts.wpn_fps_smg_sterling_s_solid.stats.concealment = -2
			
					--Akimbo Patchett L2A1 Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_sterling.override.wpn_fps_smg_sterling_m_long.stats = deep_clone(self.parts.wpn_fps_smg_sterling_m_long.stats)
									self.wpn_fps_smg_x_sterling.override.wpn_fps_smg_sterling_m_long.stats.extra_ammo = self.parts.wpn_fps_smg_sterling_m_long.stats.extra_ammo * 2

									--Short Mag
									self.wpn_fps_smg_x_sterling.override.wpn_fps_smg_sterling_m_short.stats = deep_clone(self.parts.wpn_fps_smg_sterling_m_short.stats)
									self.wpn_fps_smg_x_sterling.override.wpn_fps_smg_sterling_m_short.stats.extra_ammo = self.parts.wpn_fps_smg_sterling_m_short.stats.extra_ammo * 2

			
			--Swedish K Submachine Gun
			
					--Barrels

							--Grease Barrel
							self.parts.wpn_fps_smg_m45_b_small.stats.damage = 0
							self.parts.wpn_fps_smg_m45_b_small.stats.spread = -1
							self.parts.wpn_fps_smg_m45_b_small.stats.recoil = 0
							self.parts.wpn_fps_smg_m45_b_small.stats.concealment = 3

							--Swedish Barrel
							self.parts.wpn_fps_smg_m45_b_green.stats.damage = 0
							self.parts.wpn_fps_smg_m45_b_green.stats.spread = 1
							self.parts.wpn_fps_smg_m45_b_green.stats.recoil = 0
							self.parts.wpn_fps_smg_m45_b_green.stats.concealment = -1
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_m45_m_extended.stats.extra_ammo = 6
							self.parts.wpn_fps_smg_m45_m_extended.stats.spread = 0
							self.parts.wpn_fps_smg_m45_m_extended.stats.recoil = 0
							self.parts.wpn_fps_smg_m45_m_extended.stats.concealment = -2
							self.parts.wpn_fps_smg_m45_m_extended.stats.reload = 0
			
					--Stocks

							--Folded Stock
							self.parts.wpn_fps_smg_m45_s_folded.stats.spread = 0
							self.parts.wpn_fps_smg_m45_s_folded.stats.recoil = -2
							self.parts.wpn_fps_smg_m45_s_folded.stats.concealment = 3
			
					--Upper Receivers

							--Swedish Body
							self.parts.wpn_fps_smg_m45_body_green.stats.spread = 0
							self.parts.wpn_fps_smg_m45_body_green.stats.recoil = 1
							self.parts.wpn_fps_smg_m45_body_green.stats.concealment = -1
			
					--Akimbo Swedish K Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_m45.override.wpn_fps_smg_m45_m_extended.stats = deep_clone(self.parts.wpn_fps_smg_m45_m_extended.stats)
									self.wpn_fps_smg_x_m45.override.wpn_fps_smg_m45_m_extended.stats.extra_ammo = self.parts.wpn_fps_smg_m45_m_extended.stats.extra_ammo * 2

			
			--Tatonka Submachine Gun
			
					--Akimbo Tatonka Submachine Guns

		
	--T2 SMGs----------------------------------------------------------
			
			--AK Gen 21 Tactical Submachine Gun
			
					--Barrels

							--MG8 Precision Barrel
							self.parts.wpn_fps_smg_vityaz_b_long.stats.damage = 0
							self.parts.wpn_fps_smg_vityaz_b_long.stats.spread = 1
							self.parts.wpn_fps_smg_vityaz_b_long.stats.recoil = 1
							self.parts.wpn_fps_smg_vityaz_b_long.stats.concealment = -2

							--BY90 Wide Suppressor
							self.parts.wpn_fps_smg_vityaz_b_supressed.stats.damage = 0
							self.parts.wpn_fps_smg_vityaz_b_supressed.stats.spread = -2
							self.parts.wpn_fps_smg_vityaz_b_supressed.stats.recoil = 0
							self.parts.wpn_fps_smg_vityaz_b_supressed.stats.concealment = 0
			
					--Stocks

							--Bull Stock
							self.parts.wpn_fps_smg_vityaz_s_short.stats.spread = 0
							self.parts.wpn_fps_smg_vityaz_s_short.stats.recoil = -2
							self.parts.wpn_fps_smg_vityaz_s_short.stats.concealment = 2
			
					--Akimbo AK Gen 21 Tactical SMGs

			
			--Chicago Typewriter Submachine Gun
			
					--Barrels

							--Stubby Barrel
							self.parts.wpn_fps_smg_thompson_barrel_short.stats.damage = 0
							self.parts.wpn_fps_smg_thompson_barrel_short.stats.spread = -1
							self.parts.wpn_fps_smg_thompson_barrel_short.stats.recoil = 0
							self.parts.wpn_fps_smg_thompson_barrel_short.stats.concealment = 3

							--Long Barrel
							self.parts.wpn_fps_smg_thompson_barrel_long.stats.damage = 0
							self.parts.wpn_fps_smg_thompson_barrel_long.stats.spread = 1
							self.parts.wpn_fps_smg_thompson_barrel_long.stats.recoil = 0
							self.parts.wpn_fps_smg_thompson_barrel_long.stats.concealment = -3
			
					--Foregrips

							--Discrete Foregrip
							self.parts.wpn_fps_smg_thompson_foregrip_discrete.stats.spread = 0
							self.parts.wpn_fps_smg_thompson_foregrip_discrete.stats.recoil = -1
							self.parts.wpn_fps_smg_thompson_foregrip_discrete.stats.concealment = 1
			
					--Grips

							--Discrete Grip
							self.parts.wpn_fps_smg_sterling_s_folded.stats.spread = 0
							self.parts.wpn_fps_smg_sterling_s_folded.stats.recoil = -1
							self.parts.wpn_fps_smg_sterling_s_folded.stats.concealment = 1
			
					--Stocks

							--QD Sling Stock
							self.parts.wpn_fps_smg_thompson_stock_nostock.stats.spread = 0
							self.parts.wpn_fps_smg_thompson_stock_nostock.stats.recoil = -3
							self.parts.wpn_fps_smg_thompson_stock_nostock.stats.concealment = 4

							--Discrete Stock
							self.parts.wpn_fps_smg_m45_body_green.stats.spread = 0
							self.parts.wpn_fps_smg_m45_body_green.stats.recoil = -1
							self.parts.wpn_fps_smg_m45_body_green.stats.concealment = 1
			
					--Akimbo Chicago Typewriter SMGs

			
			--Heather Submachine Gun

					--Barrel Extensions
			
							--Tishina Suppressor
							self.parts.wpn_fps_smg_sr2_ns_silencer.stats.damage = 0
							self.parts.wpn_fps_smg_sr2_ns_silencer.stats.spread = 0
							self.parts.wpn_fps_smg_sr2_ns_silencer.stats.recoil = 2
							self.parts.wpn_fps_smg_sr2_ns_silencer.stats.concealment = -4
							self.parts.wpn_fps_smg_sr2_ns_silencer.stats.suppression = 12
			
					--Magazines

							--Speed Pull Magazine
							self.parts.wpn_fps_smg_sr2_m_quick.stats.concealment = -2
							self.parts.wpn_fps_smg_sr2_m_quick.stats.reload = 2
			
					--Stocks

							--Unfolded Stock
							self.parts.wpn_fps_smg_sterling_s_folded.stats.spread = 0
							self.parts.wpn_fps_smg_sterling_s_folded.stats.recoil = 2
							self.parts.wpn_fps_smg_sterling_s_folded.stats.concealment = 0
			
					--Akimbo Heather Submachine Guns

			
			--Jacket's Piece
			
					--Upper Receivers

							--80's Calling
							self.parts.wpn_fps_smg_cobray_body_upper_jacket.stats.damage = 2
							self.parts.wpn_fps_smg_cobray_body_upper_jacket.stats.spread = 0
							self.parts.wpn_fps_smg_cobray_body_upper_jacket.stats.recoil = 5
							self.parts.wpn_fps_smg_cobray_body_upper_jacket.stats.concealment = -3
			
					--Akimbo Jacket's Piece

			
			--Kobus 90 Submachine Gun

					--Barrels
			
							--Long Barrel
							self.parts.wpn_fps_smg_p90_b_long.stats.damage = 2
							self.parts.wpn_fps_smg_p90_b_long.stats.spread = 1
							self.parts.wpn_fps_smg_p90_b_long.stats.recoil = 3
							self.parts.wpn_fps_smg_p90_b_long.stats.concealment = -2
			
							--Civilian Market Barrel
							self.parts.wpn_fps_smg_p90_b_civilian.stats.damage = 2
							self.parts.wpn_fps_smg_p90_b_civilian.stats.spread = 2
							self.parts.wpn_fps_smg_p90_b_civilian.stats.recoil = -2
							self.parts.wpn_fps_smg_p90_b_civilian.stats.concealment = -4
			
							--Mall Ninja Barrel
							self.parts.wpn_fps_smg_p90_b_ninja.stats.damage = 0
							self.parts.wpn_fps_smg_p90_b_ninja.stats.spread = 0
							self.parts.wpn_fps_smg_p90_b_ninja.stats.recoil = 3
							self.parts.wpn_fps_smg_p90_b_ninja.stats.concealment = -4
			
					--Lower Receivers

							--Custom Assault Frame
							self.parts.wpn_fps_smg_p90_body_boxy.stats.damage = 0
							self.parts.wpn_fps_smg_p90_body_boxy.stats.spread = 0
							self.parts.wpn_fps_smg_p90_body_boxy.stats.recoil = 0
							self.parts.wpn_fps_smg_p90_body_boxy.stats.concealment = 0
			
					--Magazines

							--Speed Pull Magazine
							self.parts.wpn_fps_smg_p90_m_strap.stats.concealment = -2
							self.parts.wpn_fps_smg_p90_m_strap.stats.reload = 2
			
					--Akimbo Kobus 90 Submachine Guns

			
			--Kross Vertex Submachine Gun

					--Barrel Extensions
			
							--Precision Barrel
							self.parts.wpn_fps_smg_polymer_barrel_precision.stats.damage = 0
							self.parts.wpn_fps_smg_polymer_barrel_precision.stats.spread = 3
							self.parts.wpn_fps_smg_polymer_barrel_precision.stats.recoil = 1
							self.parts.wpn_fps_smg_polymer_barrel_precision.stats.concealment = -4
							self.parts.wpn_fps_smg_polymer_barrel_precision.stats.suppression = 0
							
							--HPS Suppressor
							self.parts.wpn_fps_smg_polymer_ns_silencer.stats.damage = 0
							self.parts.wpn_fps_smg_polymer_ns_silencer.stats.spread = 0
							self.parts.wpn_fps_smg_polymer_ns_silencer.stats.recoil = 1
							self.parts.wpn_fps_smg_polymer_ns_silencer.stats.concealment = -3
							self.parts.wpn_fps_smg_polymer_ns_silencer.stats.suppression = 12
			
					--Akimbo Kross Vertex Submachine Guns

			
			--Mark 10 Submachine Gun

					--Extras
			
							--Railed Handguard
							self.parts.wpn_fps_smg_mac10_body_ris.stats.spread = 0
							self.parts.wpn_fps_smg_mac10_body_ris.stats.recoil = 2
							self.parts.wpn_fps_smg_mac10_body_ris.stats.concealment = -2
			
					--Lower Receivers

							--Custom Built Frame
							self.parts.wpn_fps_smg_mac10_body_modern.stats.damage = 0
							self.parts.wpn_fps_smg_mac10_body_modern.stats.spread = 0
							self.parts.wpn_fps_smg_mac10_body_modern.stats.recoil = 0
							self.parts.wpn_fps_smg_mac10_body_modern.stats.concealment = 0
			
					--Magazines

							--Extended Mag.
							self.parts.wpn_fps_smg_mac10_m_extended.stats.extra_ammo = 4
							self.parts.wpn_fps_smg_mac10_m_extended.stats.spread = 0
							self.parts.wpn_fps_smg_mac10_m_extended.stats.recoil = 1
							self.parts.wpn_fps_smg_mac10_m_extended.stats.concealment = -1
							self.parts.wpn_fps_smg_mac10_m_extended.stats.reload = 0

							--Speed Pull Magazine
							self.parts.wpn_fps_smg_mac10_m_quick.stats.extra_ammo = 4
							self.parts.wpn_fps_smg_mac10_m_quick.stats.spread = 0
							self.parts.wpn_fps_smg_mac10_m_quick.stats.recoil = 0
							self.parts.wpn_fps_smg_mac10_m_quick.stats.concealment = -2
							self.parts.wpn_fps_smg_mac10_m_quick.stats.reload = 2
			
					--Stocks

							--Skeletal Stock
							self.parts.wpn_fps_smg_mac10_s_skel.stats.spread = 1
							self.parts.wpn_fps_smg_mac10_s_skel.stats.recoil = 3
							self.parts.wpn_fps_smg_mac10_s_skel.stats.concealment = -2
			
					--Akimbo Mark 10 Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_mac10.override.wpn_fps_smg_mac10_m_extended.stats = deep_clone(self.parts.wpn_fps_smg_mac10_m_extended.stats)
									self.wpn_fps_smg_x_mac10.override.wpn_fps_smg_mac10_m_extended.stats.extra_ammo = self.parts.wpn_fps_smg_mac10_m_extended.stats.extra_ammo * 2

			
			--Miyaka 10 Special Submachine Gun

					--Barrels
			
							--MS10 Short Barrel
							self.parts.wpn_fps_smg_pm9_b_short.stats.damage = 0
							self.parts.wpn_fps_smg_pm9_b_short.stats.spread = -1
							self.parts.wpn_fps_smg_pm9_b_short.stats.recoil = -2
							self.parts.wpn_fps_smg_pm9_b_short.stats.concealment = 2
			
					--Grips

							--MS10 Comfort Wood Grip
							self.parts.wpn_fps_smg_pm9_g_wood.stats.spread = 0
							self.parts.wpn_fps_smg_pm9_g_wood.stats.recoil = 1
							self.parts.wpn_fps_smg_pm9_g_wood.stats.concealment = 0
			
					--Magazines

							--MS10 Speedmag
							self.parts.wpn_fps_smg_pm9_m_quick.stats.concealment = -2
							self.parts.wpn_fps_smg_pm9_m_quick.stats.reload = 2
			
					--Stocks

							--MS10 Tactical Stock
							self.parts.wpn_fps_smg_pm9_s_tactical.stats.spread = 0
							self.parts.wpn_fps_smg_pm9_s_tactical.stats.recoil = 3
							self.parts.wpn_fps_smg_pm9_s_tactical.stats.concealment = -2
			
					--Akimbo Miyaka 10 Special SMGs

			
			--Para Submachine Gun
			
					--Foregrips

							--Railed Handguard
							self.parts.wpn_fps_smg_olympic_fg_railed.stats.spread = 1
							self.parts.wpn_fps_smg_olympic_fg_railed.stats.recoil = 1
							self.parts.wpn_fps_smg_olympic_fg_railed.stats.concealment = -1

							--Aftermarket Shorty
							self.parts.wpn_fps_upg_smg_olympic_fg_lr300.stats.spread = 0
							self.parts.wpn_fps_upg_smg_olympic_fg_lr300.stats.recoil = 2
							self.parts.wpn_fps_upg_smg_olympic_fg_lr300.stats.concealment = 0
			
					--Stocks

							--Shorter Than Short Stock
							self.parts.wpn_fps_smg_olympic_s_short.stats.spread = 0
							self.parts.wpn_fps_smg_olympic_s_short.stats.recoil = -1
							self.parts.wpn_fps_smg_olympic_s_short.stats.concealment = 3
			
					--Akimbo Para Submachine Guns

							--Overrides

									--Millspec Mag.
									self.wpn_fps_smg_x_olympic.override.wpn_fps_m4_uupg_m_std.stats = deep_clone(self.parts.wpn_fps_m4_uupg_m_std.stats)
									self.wpn_fps_smg_x_olympic.override.wpn_fps_m4_uupg_m_std.stats.extra_ammo = self.parts.wpn_fps_m4_uupg_m_std.stats.extra_ammo * 2
									
									--Tactical Mag.
									self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_pmag.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_pmag.stats)
									self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_pmag.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_pmag.stats.extra_ammo * 2
									
									--Car Quadstacked Mag
									self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_quad.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_quad.stats)
									self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_quad.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_quad.stats.extra_ammo * 2

									--Expert Mag
									self.wpn_fps_smg_x_olympic.override.wpn_fps_ass_l85a2_m_emag.stats = deep_clone(self.parts.wpn_fps_ass_l85a2_m_emag.stats)
									self.wpn_fps_smg_x_olympic.override.wpn_fps_ass_l85a2_m_emag.stats.extra_ammo = self.parts.wpn_fps_ass_l85a2_m_emag.stats.extra_ammo * 2
									
									--L5 Magazine
									self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_l5.stats = deep_clone(self.parts.wpn_fps_upg_m4_m_l5.stats)
									self.wpn_fps_smg_x_olympic.override.wpn_fps_upg_m4_m_l5.stats.extra_ammo = self.parts.wpn_fps_upg_m4_m_l5.stats.extra_ammo * 2

			
			--SpecOps Submachine Gun

					--Barrel Extensions
			
							--Suppressed Barrel
							self.parts.wpn_fps_smg_mp7_b_suppressed.stats.damage = 0
							self.parts.wpn_fps_smg_mp7_b_suppressed.stats.spread = 0
							self.parts.wpn_fps_smg_mp7_b_suppressed.stats.recoil = 2
							self.parts.wpn_fps_smg_mp7_b_suppressed.stats.concealment = -4
							self.parts.wpn_fps_smg_mp7_b_suppressed.stats.suppression = 12
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_mp7_m_extended.stats.extra_ammo = 12
							self.parts.wpn_fps_smg_mp7_m_extended.stats.spread = 0
							self.parts.wpn_fps_smg_mp7_m_extended.stats.recoil = 0
							self.parts.wpn_fps_smg_mp7_m_extended.stats.concealment = -3
							self.parts.wpn_fps_smg_mp7_m_extended.stats.reload = 0
			
					--Stocks

							--Unfolded Stock
							self.parts.wpn_fps_smg_mp7_s_long.stats.spread = 0
							self.parts.wpn_fps_smg_mp7_s_long.stats.recoil = 2
							self.parts.wpn_fps_smg_mp7_s_long.stats.concealment = -2
			
					--Akimbo SpecOps Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_mp7.override.wpn_fps_smg_mp7_m_extended.stats = deep_clone(self.parts.wpn_fps_smg_mp7_m_extended.stats)
									self.wpn_fps_smg_x_mp7.override.wpn_fps_smg_mp7_m_extended.stats.extra_ammo = self.parts.wpn_fps_smg_mp7_m_extended.stats.extra_ammo * 2

		
	--T1 SMGs----------------------------------------------------------
			
			--Blaster 9mm Submachine Gun

					--Barrels
			
							--Short Barrel
							self.parts.wpn_fps_smg_tec9_b_standard.stats.damage = 0
							self.parts.wpn_fps_smg_tec9_b_standard.stats.spread = -1
							self.parts.wpn_fps_smg_tec9_b_standard.stats.recoil = 1
							self.parts.wpn_fps_smg_tec9_b_standard.stats.concealment = 3
			
							--Ghetto Blaster
							self.parts.wpn_fps_smg_tec9_ns_ext.stats.damage = 0
							self.parts.wpn_fps_smg_tec9_ns_ext.stats.spread = 1
							self.parts.wpn_fps_smg_tec9_ns_ext.stats.recoil = -2
							self.parts.wpn_fps_smg_tec9_ns_ext.stats.concealment = -3
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_tec9_m_extended.stats.extra_ammo = 6
							self.parts.wpn_fps_smg_tec9_m_extended.stats.spread = 0
							self.parts.wpn_fps_smg_tec9_m_extended.stats.recoil = 2
							self.parts.wpn_fps_smg_tec9_m_extended.stats.concealment = -2
							self.parts.wpn_fps_smg_tec9_m_extended.stats.reload = 0
			
					--Stocks

							--Just Bend It
							self.parts.wpn_fps_smg_tec9_s_unfolded.stats.spread = 0
							self.parts.wpn_fps_smg_tec9_s_unfolded.stats.recoil = 3
							self.parts.wpn_fps_smg_tec9_s_unfolded.stats.concealment = -2
			
					--Akimbo Blaster 9mm Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_tec9.override.wpn_fps_smg_tec9_m_extended.stats = deep_clone(self.parts.wpn_fps_smg_tec9_m_extended.stats)
									self.wpn_fps_smg_x_tec9.override.wpn_fps_smg_tec9_m_extended.stats.extra_ammo = self.parts.wpn_fps_smg_tec9_m_extended.stats.extra_ammo * 2

			
			--CMP Submachine Gun

					--Barrel Extensions
			
							--Tactical Suppressor
							self.parts.wpn_fps_smg_mp9_b_suppressed.stats.damage = 0
							self.parts.wpn_fps_smg_mp9_b_suppressed.stats.spread = 1
							self.parts.wpn_fps_smg_mp9_b_suppressed.stats.recoil = 3
							self.parts.wpn_fps_smg_mp9_b_suppressed.stats.concealment = -4
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_mp9_m_extended.stats.extra_ammo = 6
							self.parts.wpn_fps_smg_mp9_m_extended.stats.spread = 0
							self.parts.wpn_fps_smg_mp9_m_extended.stats.recoil = 0
							self.parts.wpn_fps_smg_mp9_m_extended.stats.concealment = -2
							self.parts.wpn_fps_smg_mp9_m_extended.stats.reload = 0
			
					--Stocks

							--Skeletal Stock
							self.parts.wpn_fps_smg_mp9_s_skel.stats.spread = 1
							self.parts.wpn_fps_smg_mp9_s_skel.stats.recoil = 3
							self.parts.wpn_fps_smg_mp9_s_skel.stats.concealment = -3
				
					--Akimbo CMP Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_mp9.override.wpn_fps_smg_mp9_m_extended.stats = deep_clone(self.parts.wpn_fps_smg_mp9_m_extended.stats)
									self.wpn_fps_smg_x_mp9.override.wpn_fps_smg_mp9_m_extended.stats.extra_ammo = self.parts.wpn_fps_smg_mp9_m_extended.stats.extra_ammo * 2

			
			--Cobra Submachine Gun

					--Barrel Extensions
			
							--Suppressor
							self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.damage = 0
							self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.spread = -1
							self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.recoil = 1
							self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.concealment = -2
							self.parts.wpn_fps_smg_scorpion_b_suppressed.stats.suppression = 12

					--Grips
			
							--Ergo Grip
							self.parts.wpn_fps_smg_scorpion_g_ergo.stats.spread = 0
							self.parts.wpn_fps_smg_scorpion_g_ergo.stats.recoil = 3
							self.parts.wpn_fps_smg_scorpion_g_ergo.stats.concealment = 1
			
							--Wooden Grip
							self.parts.wpn_fps_smg_scorpion_g_wood.stats.spread = 1
							self.parts.wpn_fps_smg_scorpion_g_wood.stats.recoil = 1
							self.parts.wpn_fps_smg_scorpion_g_wood.stats.concealment = -1
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_scorpion_m_extended.stats.extra_ammo = 10
							self.parts.wpn_fps_smg_scorpion_m_extended.stats.spread = 0
							self.parts.wpn_fps_smg_scorpion_m_extended.stats.recoil = 2
							self.parts.wpn_fps_smg_scorpion_m_extended.stats.concealment = -3
							self.parts.wpn_fps_smg_scorpion_m_extended.stats.reload = 0
			
					--Stocks

							--No Stock
							self.parts.wpn_fps_smg_scorpion_s_nostock.stats.spread = 0
							self.parts.wpn_fps_smg_scorpion_s_nostock.stats.recoil = -1
							self.parts.wpn_fps_smg_scorpion_s_nostock.stats.concealment = 1

							--Unfolded Stock
							self.parts.wpn_fps_smg_scorpion_s_unfolded.stats.spread = 0
							self.parts.wpn_fps_smg_scorpion_s_unfolded.stats.recoil = 3
							self.parts.wpn_fps_smg_scorpion_s_unfolded.stats.concealment = -2
				
					--Akimbo Cobra Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_scorpion.override.wpn_fps_smg_scorpion_m_extended.stats = deep_clone(self.parts.wpn_fps_smg_scorpion_m_extended.stats)
									self.wpn_fps_smg_x_scorpion.override.wpn_fps_smg_scorpion_m_extended.stats.extra_ammo = self.parts.wpn_fps_smg_scorpion_m_extended.stats.extra_ammo * 2

			
			--Compact-5 Submachine Gun

					--Foregrips
			
							--Sehr Kurze Barrel
							self.parts.wpn_fps_smg_mp5_fg_m5k.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_fg_m5k.stats.recoil = -3
							self.parts.wpn_fps_smg_mp5_fg_m5k.stats.concealment = 3
			
							--Polizei Tactical Barrel
							self.parts.wpn_fps_smg_mp5_fg_mp5a5.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_fg_mp5a5.stats.recoil = 2
							self.parts.wpn_fps_smg_mp5_fg_mp5a5.stats.concealment = -3
			
							--The Ninja Barrel
							self.parts.wpn_fps_smg_mp5_fg_mp5sd.stats.damage = 0
							self.parts.wpn_fps_smg_mp5_fg_mp5sd.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_fg_mp5sd.stats.recoil = 3
							self.parts.wpn_fps_smg_mp5_fg_mp5sd.stats.concealment = 0
			
							--Enlightened Foregrip
							self.parts.wpn_fps_smg_mp5_fg_flash.stats.spread = 1
							self.parts.wpn_fps_smg_mp5_fg_flash.stats.recoil = 1
							self.parts.wpn_fps_smg_mp5_fg_flash.stats.concealment = -2
			
					--Magazines

							--Straight Magazine
							self.parts.wpn_fps_smg_mp5_m_straight.stats.damage = 0
							self.parts.wpn_fps_smg_mp5_m_straight.stats.extra_ammo = 0
							self.parts.wpn_fps_smg_mp5_m_straight.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_m_straight.stats.recoil = 2
							self.parts.wpn_fps_smg_mp5_m_straight.stats.concealment = -1
							self.parts.wpn_fps_smg_mp5_m_straight.stats.reload = 0
			
					--Stocks

							--Adjustable Stock
							self.parts.wpn_fps_smg_mp5_s_adjust.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_s_adjust.stats.recoil = 0
							self.parts.wpn_fps_smg_mp5_s_adjust.stats.concealment = 3

							--Bare Essentials Stock
							self.parts.wpn_fps_smg_mp5_s_ring.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_s_ring.stats.recoil = -3
							self.parts.wpn_fps_smg_mp5_s_ring.stats.concealment = 4

							--Spartan Stock
							self.parts.wpn_fps_smg_mp5_s_folding.stats.spread = 0
							self.parts.wpn_fps_smg_mp5_s_folding.stats.recoil = 1
							self.parts.wpn_fps_smg_mp5_s_folding.stats.concealment = 0
				
					--Akimbo Compact-5 Submachine Guns

			
			--Micro Uzi Submachine Gun

					--Barrels
			
							--Custom Barrel
							self.parts.wpn_fps_smg_baka_b_comp.stats.damage = 0
							self.parts.wpn_fps_smg_baka_b_comp.stats.spread = 1
							self.parts.wpn_fps_smg_baka_b_comp.stats.recoil = 0
							self.parts.wpn_fps_smg_baka_b_comp.stats.concealment = -1
			
					--Barrel Extensions

							--Futomaki Suppressor
							self.parts.wpn_fps_smg_baka_b_longsupp.stats.damage = 0
							self.parts.wpn_fps_smg_baka_b_longsupp.stats.spread = 2
							self.parts.wpn_fps_smg_baka_b_longsupp.stats.recoil = 1
							self.parts.wpn_fps_smg_baka_b_longsupp.stats.concealment = -6
							self.parts.wpn_fps_smg_baka_b_longsupp.stats.suppression = 12
							
							--Maki Suppressor
							self.parts.wpn_fps_smg_baka_b_midsupp.stats.damage = 0
							self.parts.wpn_fps_smg_baka_b_midsupp.stats.spread = 0
							self.parts.wpn_fps_smg_baka_b_midsupp.stats.recoil = 2
							self.parts.wpn_fps_smg_baka_b_midsupp.stats.concealment = -3
							self.parts.wpn_fps_smg_baka_b_midsupp.stats.suppression = 12
							
							--Spring Suppressor
							self.parts.wpn_fps_smg_baka_b_smallsupp.stats.damage = 0
							self.parts.wpn_fps_smg_baka_b_smallsupp.stats.spread = 0
							self.parts.wpn_fps_smg_baka_b_smallsupp.stats.recoil = 0
							self.parts.wpn_fps_smg_baka_b_smallsupp.stats.concealment = -2
							self.parts.wpn_fps_smg_baka_b_smallsupp.stats.suppression = 12
			
					--Stocks

							--No Stock
							self.parts.wpn_fps_smg_baka_s_standard.stats.spread = 0
							self.parts.wpn_fps_smg_baka_s_standard.stats.recoil = -2
							self.parts.wpn_fps_smg_baka_s_standard.stats.concealment = 1

							--Unfolded Stock
							self.parts.wpn_fps_smg_baka_s_unfolded.stats.spread = 0
							self.parts.wpn_fps_smg_baka_s_unfolded.stats.recoil = 2
							self.parts.wpn_fps_smg_baka_s_unfolded.stats.concealment = -3
				
					--Akimbo Micro Uzi Submachine Guns

			
			--Signature Submachine Gun

					--Foregrips
			
							--Short Foregrip
							self.parts.wpn_fps_smg_shepheard_body_short.stats.spread = 0
							self.parts.wpn_fps_smg_shepheard_body_short.stats.recoil = -2
							self.parts.wpn_fps_smg_shepheard_body_short.stats.concealment = 2
			
					--Magazines

							--Extended Magazine
							self.parts.wpn_fps_smg_shepheard_mag_extended.stats.extra_ammo = 15
							self.parts.wpn_fps_smg_shepheard_mag_extended.stats.spread = 0
							self.parts.wpn_fps_smg_shepheard_mag_extended.stats.recoil = 0
							self.parts.wpn_fps_smg_shepheard_mag_extended.stats.concealment = 0
							self.parts.wpn_fps_smg_shepheard_mag_extended.stats.reload = 0
			
					--Stocks

							--No Stock
							self.parts.wpn_fps_smg_shepheard_s_no.stats.spread = 0
							self.parts.wpn_fps_smg_shepheard_s_no.stats.recoil = -2
							self.parts.wpn_fps_smg_shepheard_s_no.stats.concealment = 2
				
					--Akimbo Signature Submachine Guns

							--Overrides

									--Extended Magazine
									self.wpn_fps_smg_x_shepheard.override.wpn_fps_smg_shepheard_mag_extended.stats = deep_clone(self.parts.wpn_fps_smg_shepheard_mag_extended.stats)
									self.wpn_fps_smg_x_shepheard.override.wpn_fps_smg_shepheard_mag_extended.stats.extra_ammo = self.parts.wpn_fps_smg_shepheard_mag_extended.stats.extra_ammo * 2

			
			--Uzi Submachine Gun
			
					--Barrel Extensions
			
							--Silent Death
							self.parts.wpn_fps_smg_uzi_b_suppressed.stats.damage = 0
							self.parts.wpn_fps_smg_uzi_b_suppressed.stats.spread = -2
							self.parts.wpn_fps_smg_uzi_b_suppressed.stats.recoil = 1
							self.parts.wpn_fps_smg_uzi_b_suppressed.stats.concealment = -2
							self.parts.wpn_fps_smg_uzi_b_suppressed.stats.suppression = 12

					--Foregrips
			
							--Tactical Foregrip
							self.parts.wpn_fps_smg_uzi_fg_rail.stats.spread = 1
							self.parts.wpn_fps_smg_uzi_fg_rail.stats.recoil = 1
							self.parts.wpn_fps_smg_uzi_fg_rail.stats.concealment = -2
			
					--Stocks

							--Ergonomic Stock
							self.parts.wpn_fps_smg_shepheard_s_no.stats.spread = 2
							self.parts.wpn_fps_smg_shepheard_s_no.stats.recoil = 1
							self.parts.wpn_fps_smg_shepheard_s_no.stats.concealment = -2

							--Solid Stock
							self.parts.wpn_fps_smg_shepheard_s_no.stats.spread = 1
							self.parts.wpn_fps_smg_shepheard_s_no.stats.recoil = 3
							self.parts.wpn_fps_smg_shepheard_s_no.stats.concealment = -2

							--Folded Stock
							self.parts.wpn_fps_smg_shepheard_s_no.stats.spread = 0
							self.parts.wpn_fps_smg_shepheard_s_no.stats.recoil = -3
							self.parts.wpn_fps_smg_shepheard_s_no.stats.concealment = 4
				
					--Akimbo Uzi Submachine Guns
end

function WeaponFactoryTweakData:_init_pistol_attachments()
end

function WeaponFactoryTweakData:_init_special_attachments()
end

Hooks:PostHook(WeaponFactoryTweakData, "init", "WR WeaponFactoryTweakData init", function(self)

	self:_init_attachments()
	self:_init_shotgun_attachments()
	self:_init_assault_rifle_attachments()
	self:_init_lmg_attachments()
	self:_init_sniper_attachments()
	self:_init_smg_attachments()
	self:_init_pistol_attachments()
	self:_init_special_attachments()
		
end)