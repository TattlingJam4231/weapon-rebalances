Hooks:PostHook(WeaponTweakData, "init", "WR WeaponTweakData init", function(self)

	local SELECTION = {
		SECONDARY = 1,
		PRIMARY = 2,
		UNDERBARREL = 3
	}

	self.stats.damage = {}
	for i = 1, 10000 do
		self.stats.damage[i] = i / 10
	end
	
	local default_spread = {
		standing = 3,
		crouching = 2,
		steelsight = 1.2,
		moving_standing = 3,
		moving_crouching = 3,
		moving_steelsight = 1.2,
		bipod = 1.2
	}

	local function kick_steelsight(original_kick)
		local v_kick_mul = 0.75
		local h_kick_mul = 0.75
		local new_kick = {
			original_kick[1] * v_kick_mul,
			original_kick[2] * v_kick_mul,
			original_kick[3] * h_kick_mul,
			original_kick[4] * h_kick_mul
		}
		return new_kick
	end

	local function kick_akimbo(original_kick)
		local v_kick_mul = 2
		local h_kick_mul = 1.25
		local new_kick = {
			original_kick[1] * v_kick_mul,
			original_kick[2] * v_kick_mul,
			original_kick[3] * h_kick_mul,
			original_kick[4] * h_kick_mul
		}
		return new_kick
	end
	
	--turret
	self.swat_van_turret_module.BODY_DAMAGE_CLAMP = 40000
	
	--sentry
	self.sentry_gun.DAMAGE = 4
	

	--ammo pickup
	local pickup = {
		assault = {
			t4 = {2		/1.35, 3	/1.35},
			t3 = {4		/1.35, 6	/1.35},
			t2 = {7		/1.35, 12	/1.35},
			t1 = {12	/1.35, 24	/1.35}
		},
		shotgun = {
			t5 = {0.4	/1.35, 1.5	/1.35},
			t4 = {1		/1.35, 2	/1.35},
			t3 = {1.5	/1.35, 3	/1.35},
			t2 = {2		/1.35, 3	/1.35},
			t1 = {4		/1.35, 6	/1.35}
		},
		lmg = {
			t3 = {5		/1.35, 10	/1.35},
			t2 = {10	/1.35, 25	/1.35},
			t1 = {15	/1.35, 35	/1.35}
		},
		sniper = {
			t4 = {0.1	/1.35, 0.55	/1.35},
			t3 = {0.1	/1.35, 1	/1.35},
			t2 = {1		/1.35, 1	/1.35},
			t1 = {1		/1.35, 1.75	/1.35}
		},
		smg = {
			t3 = {3		/1.35, 7	/1.35},
			t2 = {6		/1.35, 11	/1.35},
			t1 = {8		/1.35, 16	/1.35}
		},
		pistol = {
			t4 = {1.5	/1.35, 3	/1.35},
			t3 = {2.5	/1.35, 5	/1.35},
			t2 = {4		/1.35, 9	/1.35},
			t1 = {8		/1.35, 13	/1.35}
		},
		gl = {
			t2 = {0		/1.35, 0.8	/1.35},
			t1 = {0		/1.35, 0.9	/1.35}
		}
	}

	--damage falloff
	local falloff = {
		shotgun = {
			double_barrel = {
				optimal_distance = 400,
				optimal_range = 1100,
				near_falloff = 200,
				far_falloff = 2250,
				near_multiplier = 1.35,
				far_multiplier = 0.1
			},
			t5 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 2250,
				near_multiplier = 1,
				far_multiplier = 0.1
			},
			t4 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 2250,
				near_multiplier = 1,
				far_multiplier = 0.1
			},
			t3 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 2000,
				near_multiplier = 1,
				far_multiplier = 0.2
			},
			t2 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 2000,
				near_multiplier = 1,
				far_multiplier = 0.2
			},
			t1 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 2000,
				near_multiplier = 1,
				far_multiplier = 0.2
			}
		},
		ar = {
			optimal_distance = 1,
			optimal_range = 1,
			near_falloff = 1,
			far_falloff = 1,
			near_multiplier = 1,
			far_multiplier = 1
		},
		lmg = {
			t3 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 3000,
				near_multiplier = 1,
				far_multiplier = 0.8
			},
			t2 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 3000,
				near_multiplier = 1,
				far_multiplier = 0.7
			},
			t1 = {
				optimal_distance = 0,
				optimal_range = 1500,
				near_falloff = 0,
				far_falloff = 3000,
				near_multiplier = 1,
				far_multiplier = 0.6
			}
		},
		sniper = {
			t4 = {
				optimal_distance = 3000,
				optimal_range = 3000,
				near_falloff = 3000,
				far_falloff = 3000,
				near_multiplier = 1,
				far_multiplier = 1
			},
			t3 = {
				optimal_distance = 0,
				optimal_range = 2000,
				near_falloff = 0,
				far_falloff = 500,
				near_multiplier = 1,
				far_multiplier = 1.8
			},
			t2 = {
				optimal_distance = 0,
				optimal_range = 2000,
				near_falloff = 0,
				far_falloff = 500,
				near_multiplier = 1,
				far_multiplier = 1.5
			},
			t1 = {
				optimal_distance = 0,
				optimal_range = 2000,
				near_falloff = 0,
				far_falloff = 500,
				near_multiplier = 1,
				far_multiplier = 1.35
			}
		},
		smg = {
			t3 = {
				optimal_distance = 0,
				optimal_range = 1600,
				near_falloff = 0,
				far_falloff = 2000,
				near_multiplier = 1,
				far_multiplier = 0.6
			},
			t2 = {
				optimal_distance = 0,
				optimal_range = 1400,
				near_falloff = 0,
				far_falloff = 2200,
				near_multiplier = 1,
				far_multiplier = 0.5
			},
			t1 = {
				optimal_distance = 0,
				optimal_range = 1200,
				near_falloff = 0,
				far_falloff = 2400,
				near_multiplier = 1,
				far_multiplier = 0.4
			}
		},
		aki_smg = {
			t3 = {
				optimal_distance = 300,
				optimal_range = 1300,
				near_falloff = 0,
				far_falloff = 2000,
				near_multiplier = 1.3,
				far_multiplier = 0.6
			},
			t2 = {
				optimal_distance = 400,
				optimal_range = 1000,
				near_falloff = 0,
				far_falloff = 2200,
				near_multiplier = 1.3,
				far_multiplier = 0.5
			},
			t1 = {
				optimal_distance = 500,
				optimal_range = 700,
				near_falloff = 0,
				far_falloff = 2400,
				near_multiplier = 1.2,
				far_multiplier = 0.4
			}
		},
		pistol = {
			t4 = {
				optimal_distance = 0,
				optimal_range = 1600,
				near_falloff = 0,
				far_falloff = 1200,
				near_multiplier = 1,
				far_multiplier = 0.8
			},
			t3 = {
				optimal_distance = 0,
				optimal_range = 1600,
				near_falloff = 0,
				far_falloff = 1200,
				near_multiplier = 1,
				far_multiplier = 0.7
			},
			t2 = {
				optimal_distance = 0,
				optimal_range = 1400,
				near_falloff = 0,
				far_falloff = 1200,
				near_multiplier = 1,
				far_multiplier = 0.7
			},
			t1 = {
				optimal_distance = 0,
				optimal_range = 1200,
				near_falloff = 0,
				far_falloff = 1200,
				near_multiplier = 1,
				far_multiplier = 0.7
			}
		}
	}
	
	--SHOTGUNS------------------------------------------------------------------------------------------------------------------------------------------------
	
			--T5 Shotguns---------------------------------------------------------------
					
					--Breaker 12G Shotgun
					self.boot.AMMO_PICKUP = pickup.shotgun.t5
					self.boot.stats.damage = 157
					self.boot.damage_falloff = falloff.shotgun.t5
					self.boot.spread = default_spread

					
					--Joceline O/U 12G Shotgun
					self.b682.AMMO_PICKUP = pickup.shotgun.t5
					self.b682.stats.damage = 157
					self.b682.stats.reload = 14
					self.b682.damage_falloff = falloff.shotgun.double_barrel
					self.b682.spread = default_spread

				
					--Mosconi 12G Shotgun
					self.huntsman.AMMO_PICKUP = pickup.shotgun.t5
					self.huntsman.stats.damage = 157
					self.huntsman.stats.reload = 14
					self.huntsman.damage_falloff = falloff.shotgun.double_barrel
					self.huntsman.spread = default_spread

					
					--The Judge Shotgun
					self.judge.categories = {
						"shotgun",
						"pistol",
						"revolver"
					}
					self.judge.AMMO_PICKUP = pickup.shotgun.t4
					self.judge.fire_mode_data.fire_rate = 0.166
					self.judge.single.fire_rate = 0.166
					self.judge.rays = 9
					self.judge.stats.damage = 112
					self.judge.damage_falloff = {
						optimal_distance = 0,
						optimal_range = 1000,
						near_falloff = 0,
						far_falloff = 2400,
						near_multiplier = 1,
						far_multiplier = 0.06
					}
					self.judge.spread = default_spread
					
							--Akimbo Judge Shotguns
							self.x_judge.categories = {
								"akimbo",
								"shotgun",
								"pistol",
								"revolver"
							}
							self.x_judge.AMMO_PICKUP = pickup.shotgun.t4
							self.x_judge.fire_mode_data.fire_rate = 0.166
							self.x_judge.single.fire_rate = 0.166
							self.x_judge.rays = 9
							self.x_judge.stats.damage = 112
							self.x_judge.damage_falloff = {
								optimal_distance = 0,
								optimal_range = 1000,
								near_falloff = 0,
								far_falloff = 2400,
								near_multiplier = 1,
								far_multiplier = 0.06
							}
							self.x_judge.spread = self.judge.spread

					
					--Claire 12G Shotgun
					self.coach.AMMO_PICKUP = pickup.shotgun.t5
					self.coach.stats.damage = 157
					self.coach.stats.reload = 13
					self.coach.damage_falloff = falloff.shotgun.double_barrel
					self.coach.spread = default_spread

					
					--GSPS 12G Shotgun
					self.m37.AMMO_PICKUP = pickup.shotgun.t5
					self.m37.stats.damage = 157
					self.m37.stats.reload = 15
					self.m37.damage_falloff = falloff.shotgun.t5
					self.m37.spread = default_spread

			
			--T4 Shotguns----------------------------------------------------------------
					
					--Mosconi 12G Tactical Shotgun
					self.m590.AMMO_PICKUP = pickup.shotgun.t4
					self.m590.stats.damage = 112
					self.m590.damage_falloff = falloff.shotgun.t4
					self.m590.spread = default_spread

				
					--Raven Shotgun
					self.ksg.AMMO_PICKUP = pickup.shotgun.t4
					self.ksg.stats.damage = 112
					self.ksg.stats.reload = 14
					self.ksg.damage_falloff = falloff.shotgun.t4
					self.ksg.spread = default_spread

					
					--Reinfeld 88 Shotgun
					self.m1897.AMMO_PICKUP = pickup.shotgun.t4
					self.m1897.stats.damage = 112
					self.m1897.stats.reload = 14
					self.m1897.damage_falloff = falloff.shotgun.t4
					self.m1897.spread = default_spread

					
					--Reinfeld 880 Shotgun
					self.r870.AMMO_PICKUP = pickup.shotgun.t4
					self.r870.stats.damage = 112
					self.r870.stats.reload = 14
					self.r870.damage_falloff = falloff.shotgun.t4
					self.r870.spread = default_spread

					
					--Locomotive 12G Shotgun
					self.serbu.AMMO_PICKUP = pickup.shotgun.t4
					self.serbu.stats.damage = 112
					self.serbu.stats.reload = 14
					self.serbu.damage_falloff = falloff.shotgun.t4
					self.serbu.spread = default_spread

			
			--T3 Shotguns----------------------------------------------------------------
					
					--M1014 Shotgun
					self.benelli.AMMO_PICKUP = pickup.shotgun.t3
					self.benelli.stats.damage = 57
					self.benelli.stats.reload = 15
					self.benelli.damage_falloff = falloff.shotgun.t3
					self.benelli.spread = default_spread

				
					--Predator 12G Shotgun
					self.spas12.AMMO_PICKUP = pickup.shotgun.t3
					self.spas12.stats.damage = 57
					self.spas12.stats.reload = 15
					self.spas12.damage_falloff = falloff.shotgun.t3
					self.spas12.spread = default_spread

					
					--Street Sweeper Shotgun
					self.striker.AMMO_PICKUP = pickup.shotgun.t3
					self.striker.stats.damage = 57
					self.striker.stats.reload = 13
					self.striker.damage_falloff = falloff.shotgun.t3
					self.saiga.spread = default_spread

			
			--T2 Shotguns----------------------------------------------------------------
				
					--Izhma 12G Shotgun
					self.saiga.AMMO_PICKUP = pickup.shotgun.t2
					self.saiga.stats.damage = 45
					self.saiga.damage_falloff = falloff.shotgun.t2
					self.saiga.spread = default_spread

					
					--Steakout 12G Shotgun
					self.aa12.AMMO_PICKUP = pickup.shotgun.t2
					self.aa12.stats.damage = 45
					self.aa12.damage_falloff = falloff.shotgun.t2
					self.aa12.spread = default_spread

					
					--Goliath 12G Shotgun
					self.rota.AMMO_PICKUP = pickup.shotgun.t2
					self.rota.stats.damage = 45
					self.rota.damage_falloff = falloff.shotgun.t2
					self.rota.spread = default_spread
					
							--Akimbo Goliath 12G Shotguns
							self.x_rota.AMMO_PICKUP = pickup.shotgun.t2
							self.x_rota.stats.damage = 45
							self.x_rota.damage_falloff = falloff.shotgun.t2
							self.x_rota.spread = self.rota.spread

			
			--T1 Shotguns----------------------------------------------------------------
					
					--Grimm 12G Shotgun
					self.basset.AMMO_PICKUP = pickup.shotgun.t1
					self.basset.stats.damage = 20
					self.basset.damage_falloff = falloff.shotgun.t1
					self.basset.spread = default_spread
				
							--Brothers Grimm 12G Shotguns
							self.x_basset.AMMO_PICKUP = pickup.shotgun.t1
							self.x_basset.stats.damage = 20
							self.x_basset.damage_falloff = falloff.shotgun.t1
							self.x_basset.spread = self.basset.spread

	
	--ASSAULT RIFLES------------------------------------------------------------------------------------------------------------------------------------------
	
			--T4 Assault Rifles---------------------------------------------------------
				
					--Cavity 9mm
					self.sub2000.AMMO_PICKUP = pickup.assault.t4
					self.sub2000.stats.damage = 164
					self.sub2000.stats.spread = 19
					self.sub2000.stats.recoil = 6
					self.sub2000.damage_falloff = falloff.ar
					self.sub2000.spread = default_spread
					self.sub2000.kick.standing = {
						0.9,
						0.9,
						-0.45,
						-0.45
					}
					self.sub2000.kick.crouching = self.sub2000.kick.standing
					self.sub2000.kick.steelsight = kick_steelsight(self.sub2000.kick.standing)
					
					--Galant Rifle
					self.ching.AMMO_PICKUP = pickup.assault.t4
					self.ching.stats.damage = 164
					self.ching.stats.spread = 22
					self.ching.stats.recoil = 6
					self.ching.damage_falloff = falloff.ar
					self.ching.spread = default_spread
					self.ching.kick.standing = {
						1.5,
						1.5,
						0,
						0
					}
					self.ching.kick.crouching = self.ching.kick.standing
					self.ching.kick.steelsight = kick_steelsight(self.ching.kick.standing)
					
					--Little Friend 7.62 Assault Rifle
					self.contraband.AMMO_PICKUP = pickup.assault.t4
					self.contraband.CAN_TOGGLE_FIREMODE = true
					self.contraband.stats.damage = 164
					self.contraband.stats.spread = 22
					self.contraband.stats.recoil = 6
					self.contraband.damage_falloff = falloff.ar
					self.contraband.spread = default_spread
					self.contraband.kick.standing = {
						1.25,
						1.25,
						0,
						0.15
					}
					self.contraband.kick.crouching = self.contraband.kick.standing
					self.contraband.kick.steelsight = kick_steelsight(self.contraband.kick.standing)
					
					self.contraband_m203.categories = {
						"grenade_launcher",
						"assault_rifle"
					}
					self.contraband_m203.spread = default_spread
					
					--M308 Rifle
					self.new_m14.AMMO_PICKUP = pickup.assault.t4
					self.new_m14.stats.damage = 164
					self.new_m14.stats.spread = 22
					self.new_m14.stats.recoil = 2
					self.new_m14.damage_falloff = falloff.ar
					self.new_m14.spread = default_spread
					self.new_m14.kick.standing = {
						1,
						1,
						0.5,
						0.5
					}
					self.new_m14.kick.crouching = self.new_m14.kick.standing
					self.new_m14.kick.steelsight = kick_steelsight(self.new_m14.kick.standing)
			
			--T3 Assault Rifles---------------------------------------------------------
					
					--AK17 Rifle
					self.flint.AMMO_PICKUP = pickup.assault.t3
					self.flint.AMMO_MAX = 140
					self.flint.stats.damage = 102
					self.flint.stats.spread = 16
					self.flint.stats.recoil = 9
					-- self.flint.stats.suppression = 9
					--self.flint.stats.concealment = 1
					self.flint.damage_falloff = falloff.ar
					self.flint.spread = default_spread
					self.flint.kick.standing = {
						0.8,
						0.85,
						0,
						0.25
					}
					self.flint.kick.crouching = self.flint.kick.standing
					self.flint.kick.steelsight = kick_steelsight(self.flint.kick.standing)
					
					--AK.762 Rifle
					self.akm.AMMO_PICKUP = pickup.assault.t3
					self.akm.AMMO_MAX = 150
					self.akm.stats.damage = 102
					self.akm.stats.spread = 16
					self.akm.stats.recoil = 3
					-- self.akm.stats.suppression = 9
					--self.akm.stats.concealment = 1
					self.akm.damage_falloff = falloff.ar
					self.akm.spread = default_spread
					self.akm.kick.standing = {
						0.9,
						1,
						-0.2,
						0.5
					}
					self.akm.kick.crouching = self.akm.kick.standing
					self.akm.kick.steelsight = kick_steelsight(self.akm.kick.standing)
					
					--Golden AK.762 Rifle
					self.akm_gold.AMMO_PICKUP = pickup.assault.t3
					self.akm_gold.AMMO_MAX = 150
					self.akm_gold.stats.damage = 102
					self.akm_gold.stats.spread = 16
					self.akm_gold.stats.recoil = 3
					-- self.akm_gold.stats.suppression = 9
					--self.akm_gold.stats.concealment = 1
					self.akm_gold.damage_falloff = falloff.ar
					self.akm_gold.spread = default_spread
					self.akm_gold.kick.standing = self.akm.kick.standing
					self.akm_gold.kick.crouching = self.akm.kick.standing
					self.akm_gold.kick.steelsight = self.akm.kick.steelsight
					
					--AMR-16 Rifle
					self.m16.AMMO_PICKUP = pickup.assault.t3
					self.m16.AMMO_MAX = 150
					self.m16.stats.damage = 102
					self.m16.stats.spread = 16
					self.m16.stats.recoil = 3
					-- self.m16.stats.suppression = 9
					--self.m16.stats.concealment = 2
					self.m16.damage_falloff = falloff.ar
					self.m16.spread = default_spread
					self.m16.kick.standing = {
						0.6,
						0.7,
						-0.5,
						0.4
					}
					self.m16.kick.crouching = self.m16.kick.standing
					self.m16.kick.steelsight = kick_steelsight(self.m16.kick.standing)
				
					--Eagle Heavy Rifle
					self.scar.AMMO_PICKUP = pickup.assault.t3
					self.scar.AMMO_MAX = 140
					self.scar.stats.damage = 102
					self.scar.stats.spread = 20
					self.scar.stats.recoil = 3
					-- self.scar.stats.suppression = 9
					--self.scar.stats.concealment = 1
					self.scar.damage_falloff = falloff.ar
					self.scar.spread = default_spread
					self.scar.kick.standing = {
						0.8,
						0.8,
						-0.2,
						-0.15
					}
					self.scar.kick.crouching = self.scar.kick.standing
					self.scar.kick.steelsight = kick_steelsight(self.scar.kick.standing)
					
					--Falcon Rifle
					self.fal.AMMO_PICKUP = pickup.assault.t3
					self.fal.AMMO_MAX = 140
					self.fal.stats.damage = 102
					self.fal.stats.spread = 19
					self.fal.stats.recoil = 6
					-- self.fal.stats.suppression = 9
					--self.fal.stats.concealment = 1 -10
					self.fal.damage_falloff = falloff.ar
					self.fal.spread = default_spread
					self.fal.kick.standing = {
						0.75,
						0.75,
						-0.25,
						0.25
					}
					self.fal.kick.crouching = self.fal.kick.standing
					self.fal.kick.steelsight = kick_steelsight(self.fal.kick.standing)
					
					--Gewehr 3 Rifle
					self.g3.AMMO_PICKUP = pickup.assault.t3
					self.g3.AMMO_MAX = 140
					self.g3.stats.damage = 102
					self.g3.stats.spread = 18
					self.g3.stats.recoil = 8
					-- self.g3.stats.suppression = 9
					--self.g3.stats.concealment = 1
					self.g3.damage_falloff = falloff.ar
					self.g3.spread = default_spread
					self.g3.kick.standing = {
						0.6,
						0.9,
						-0.6,
						0.6
					}
					self.g3.kick.crouching = self.g3.kick.standing
					self.g3.kick.steelsight = kick_steelsight(self.g3.kick.standing)
					
					--KETCHNOV Byk-1 Assault Rifle
					self.groza.AMMO_PICKUP = pickup.assault.t3
					self.groza.AMMO_MAX = 80
					self.groza.stats.damage = 102
					self.groza.stats.spread = 20
					self.groza.stats.recoil = 9
					self.groza.damage_falloff = falloff.ar
					self.groza.spread = default_spread
					self.groza.kick.standing = {
						0.7,
						1,
						-0.5,
						0.5
					}
					self.groza.kick.crouching = self.groza.kick.standing
					self.groza.kick.steelsight = kick_steelsight(self.groza.kick.standing)

					self.groza_underbarrel.categories = {
						"grenade_launcher",
						"assault_rifle"
						}
					self.groza_underbarrel.spread = default_spread
			
			--T2 Assault Rifles---------------------------------------------------------
					
					--AK Rifle
					self.ak74.AMMO_PICKUP = pickup.assault.t2
					self.ak74.AMMO_MAX = 210
					self.ak74.stats.damage = 60
					self.ak74.stats.spread = 16
					self.ak74.stats.recoil = 5
					-- self.ak74.stats.suppression = 15
					self.ak74.stats.concealment = 16
					self.ak74.damage_falloff = falloff.ar
					self.ak74.spread = default_spread
					self.ak74.kick.standing = {
						1,
						1.5,
						-0.5,
						0.5
					}
					self.ak74.kick.crouching = self.ak74.kick.standing
					self.ak74.kick.steelsight = kick_steelsight(self.ak74.kick.standing)
					
					--AK5 Rifle
					self.ak5.AMMO_PICKUP = pickup.assault.t2
					self.ak5.AMMO_MAX = 210
					self.ak5.stats.damage = 60
					self.ak5.stats.spread = 19
					self.ak5.stats.recoil = 12
					-- self.ak5.stats.suppression = 15
					self.ak5.stats.concealment = 16
					self.ak5.damage_falloff = falloff.ar
					self.ak5.spread = default_spread
					self.ak5.kick.standing = {
						0.6,
						0.9,
						-0.9,
						1.1
					}
					self.ak5.kick.crouching = self.ak5.kick.standing
					self.ak5.kick.steelsight = kick_steelsight(self.ak5.kick.standing)
					
					--CAR-4 Rifle
					self.new_m4.AMMO_PICKUP = pickup.assault.t2
					self.new_m4.AMMO_MAX = 210
					self.new_m4.stats.damage = 60
					self.new_m4.stats.spread = 16
					self.new_m4.stats.recoil = 10
					-- self.new_m4.stats.suppression = 15
					--self.new_m4.stats.concealment = -1
					self.new_m4.damage_falloff = falloff.ar
					self.new_m4.spread = default_spread
					self.new_m4.kick.standing = {
						0.6,
						0.8,
						-1,
						1
					}
					self.new_m4.kick.crouching = self.new_m4.kick.standing
					self.new_m4.kick.steelsight = kick_steelsight(self.new_m4.kick.standing)
					
					--Gecko 7.62 Rifle
					self.galil.AMMO_PICKUP = pickup.assault.t2
					self.galil.AMMO_MAX = 210
					self.galil.stats.damage = 60
					self.galil.stats.spread = 18
					self.galil.stats.recoil = 10
					-- self.galil.stats.suppression = 15
					self.galil.stats.concealment = 17
					self.galil.damage_falloff = falloff.ar
					self.galil.spread = default_spread
					self.galil.kick.standing = {
						-0.1,
						0.8,
						-1.1,
						1.1
					}
					self.galil.kick.crouching = self.galil.kick.standing
					self.galil.kick.steelsight = kick_steelsight(self.galil.kick.standing)
					
					--Lion's Roar Rifle
					self.vhs.AMMO_PICKUP = pickup.assault.t2
					self.vhs.AMMO_MAX = 210
					self.vhs.stats.damage = 60
					self.vhs.stats.spread = 16
					self.vhs.stats.recoil = 14
					-- self.vhs.stats.suppression = 15
					--self.vhs.stats.concealment = 2
					self.vhs.damage_falloff = falloff.ar
					self.vhs.spread = default_spread
					self.vhs.kick.standing = {
						0.3,
						1,
						0.3,
						0.8
					}
					self.vhs.kick.crouching = self.vhs.kick.standing
					self.vhs.kick.steelsight = kick_steelsight(self.vhs.kick.standing)
					
					--Queen's Wrath Rifle
					self.l85a2.AMMO_PICKUP = pickup.assault.t2
					self.l85a2.AMMO_MAX = 210
					self.l85a2.stats.damage = 60
					self.l85a2.stats.spread = 17
					self.l85a2.stats.recoil = 9
					-- self.l85a2.stats.suppression = 15
					self.l85a2.stats.concealment = 15
					self.l85a2.damage_falloff = falloff.ar
					self.l85a2.spread = default_spread
					self.l85a2.kick.standing = {
						-0.25,
						1.2,
						-1.2,
						1
					}
					self.l85a2.kick.crouching = self.l85a2.kick.standing
					self.l85a2.kick.steelsight = kick_steelsight(self.l85a2.kick.standing)
					
					--Tempest-21 Rifle
					self.komodo.AMMO_PICKUP = pickup.assault.t2
					self.komodo.AMMO_MAX = 210
					self.komodo.stats.damage = 60
					self.komodo.stats.spread = 19
					self.komodo.stats.recoil = 9
					-- self.komodo.stats.suppression = 15
					self.komodo.stats.concealment = 26
					self.komodo.damage_falloff = falloff.ar
					self.komodo.spread = default_spread
					self.komodo.kick.standing = {
						0.7,
						0.9,
						0.3,
						0.4
					}
					self.komodo.kick.crouching = self.komodo.kick.standing
					self.komodo.kick.steelsight = kick_steelsight(self.komodo.kick.standing)
					
					--UAR Rifle
					self.aug.AMMO_PICKUP = pickup.assault.t2
					self.aug.AMMO_MAX = 210
					self.aug.stats.damage = 60
					self.aug.stats.spread = 18
					self.aug.stats.recoil = 10
					-- self.aug.stats.suppression = 15
					self.aug.stats.concealment = 19
					self.aug.damage_falloff = falloff.ar
					self.aug.spread = default_spread
					self.aug.kick.standing = {
						-0.1,
						0.4,
						-1.3,
						1.3
					}
					self.aug.kick.crouching = self.aug.kick.standing
					self.aug.kick.steelsight = kick_steelsight(self.aug.kick.standing)
					
					--Union 5.56 Rifle
					self.corgi.AMMO_PICKUP = pickup.assault.t2
					self.corgi.AMMO_MAX = 210
					self.corgi.stats.damage = 61
					self.corgi.stats.spread = 19
					self.corgi.stats.recoil = 10
					-- self.corgi.stats.suppression = 15
					self.corgi.stats.concealment = 17
					self.corgi.damage_falloff = falloff.ar
					self.corgi.spread = default_spread
					self.corgi.kick.standing = {
						0.5,
						0.7,
						-0.6,
						-0.4
					}
					self.corgi.kick.crouching = self.corgi.kick.standing
					self.corgi.kick.steelsight = kick_steelsight(self.corgi.kick.standing)
			
			--T1 Sssault Rifles---------------------------------------------------------
				
					--AMCAR Rifle
					self.amcar.AMMO_PICKUP = pickup.assault.t1
					self.amcar.AMMO_MAX = 300
					self.amcar.stats.damage = 43
					self.amcar.stats.spread = 14
					self.amcar.stats.recoil = 15
					-- self.amcar.stats.suppression = 15
					self.amcar.stats.concealment = 21
					self.amcar.damage_falloff = falloff.ar
					self.amcar.spread = default_spread
					self.amcar.kick.standing = {
						0.6,
						0.8,
						-1,
						1
					}
					self.amcar.kick.crouching = self.amcar.kick.standing
					self.amcar.kick.steelsight = kick_steelsight(self.amcar.kick.standing)
					
					--Bootleg Rifle
					self.tecci.AMMO_PICKUP = pickup.assault.t1
					self.tecci.AMMO_MAX = 300
					self.tecci.stats.damage = 43
					self.tecci.stats.spread = 13
					self.tecci.stats.recoil = 13
					self.tecci.stats.reload = 13
					-- self.tecci.stats.suppression = 15
					self.tecci.stats.concealment = 20
					self.tecci.damage_falloff = falloff.ar
					self.tecci.spread = default_spread
					self.tecci.kick.standing = {
						0.8,
						1,
						-0.7,
						1.2
					}
					self.tecci.kick.crouching = self.tecci.kick.standing
					self.tecci.kick.steelsight = kick_steelsight(self.tecci.kick.standing)
					
					--Clarion Rifle
					self.famas.AMMO_PICKUP = pickup.assault.t1
					self.famas.AMMO_MAX = 300
					self.famas.stats.damage = 43
					self.famas.stats.spread = 14
					self.famas.stats.recoil = 13
					-- self.famas.stats.suppression = 15
					self.famas.stats.concealment = 21
					self.famas.damage_falloff = falloff.ar
					self.famas.spread = default_spread
					self.famas.kick.standing = {
						0.3,
						0.7,
						-1.2,
						1.2
					}
					self.famas.kick.crouching = self.famas.kick.standing
					self.famas.kick.steelsight = kick_steelsight(self.famas.kick.standing)
					
					--Commando 553 Rifle
					self.s552.AMMO_PICKUP = pickup.assault.t1
					self.s552.AMMO_MAX = 300
					self.s552.stats.damage = 43
					self.s552.stats.spread = 15
					self.s552.stats.recoil = 12
					-- self.s552.stats.suppression = 15
					self.s552.stats.concealment = 22
					self.s552.damage_falloff = falloff.ar
					self.s552.spread = default_spread
					self.s552.kick.standing = {
						0.6,
						0.8,
						-0.6,
						1.1
					}
					self.s552.kick.crouching = self.s552.kick.standing
					self.s552.kick.steelsight = kick_steelsight(self.s552.kick.standing)
					
					--JP36 Rifle
					self.g36.AMMO_PICKUP = pickup.assault.t1
					self.g36.AMMO_MAX = 300
					self.g36.stats.damage = 43
					self.g36.stats.spread = 19
					self.g36.stats.recoil = 10
					-- self.g36.stats.suppression = 15
					self.g36.stats.concealment = 19
					self.g36.damage_falloff = falloff.ar
					self.g36.spread = default_spread
					self.g36.kick.standing = {
						0.7,
						0.8,
						-0.45,
						-0.35
					}
					self.g36.kick.crouching = self.g36.kick.standing
					self.g36.kick.steelsight = kick_steelsight(self.g36.kick.standing)
					
					--Valkyria Rifle
					self.asval.AMMO_PICKUP = pickup.assault.t1
					self.asval.AMMO_MAX = 300
					self.asval.stats.damage = 44
					self.asval.stats.spread = 17
					self.asval.stats.recoil = 13
					self.asval.stats.reload = 8
					-- self.asval.stats.suppression = 19
					self.asval.stats.concealment = 22
					self.asval.damage_falloff = falloff.ar
					self.asval.spread = default_spread
					self.asval.kick.standing = {
						0.85,
						0.85,
						-0.9,
						0.9
					}
					self.asval.kick.crouching = self.asval.kick.standing
					self.asval.kick.steelsight = kick_steelsight(self.asval.kick.standing)
	
	--LMGs----------------------------------------------------------------------------------------------------------------------------------------------------
	
			--t3 lmgs-------------------------------------------------------------------
				
					--m60
					self.m60.AMMO_PICKUP = pickup.lmg.t3
					self.m60.AMMO_MAX = 200
					self.m60.CLIP_AMMO_MAX = 100
					self.m60.can_shoot_through_wall = true
					self.m60.max_wall_penetrations = 1
					self.m60.stats.damage = 110
					self.m60.stats.spread = 12
					self.m60.stats.recoil = 4
					self.m60.stats.suppression = 6
					self.m60.panic_suppression_chance = 1
					self.m60.damage_falloff = falloff.lmg.t3
					self.m60.spread = default_spread
				
			--t2 lmgs-------------------------------------------------------------------
				
					--rpk
					self.rpk.AMMO_PICKUP = pickup.lmg.t2
					self.rpk.AMMO_MAX = 400
					self.rpk.stats.damage = 81
					self.rpk.stats.spread = 1
					self.rpk.stats.recoil = 10
					self.rpk.stats.suppression = 1
					self.rpk.panic_suppression_chance = 1
					self.rpk.damage_falloff = falloff.lmg.t2
					self.rpk.spread = default_spread
					
					--brenner
					self.hk21.AMMO_PICKUP = pickup.lmg.t2
					self.hk21.AMMO_MAX = 450
					self.hk21.stats.damage = 83
					self.hk21.stats.spread = 2
					self.hk21.stats.recoil = 12
					self.hk21.stats.suppression = 1
					self.hk21.panic_suppression_chance = 1
					self.hk21.damage_falloff = falloff.lmg.t2
					self.hk21.spread = default_spread
				
			--t1 lmgs-------------------------------------------------------------------
				
					--ksp
					self.m249.AMMO_PICKUP = pickup.lmg.t1
					self.m249.AMMO_MAX = 600
					self.m249.stats.damage = 55
					self.m249.stats.spread = 3
					self.m249.stats.recoil = 13
					self.m249.stats.suppression = 1
					self.m249.panic_suppression_chance = 1
					self.m249.damage_falloff = falloff.lmg.t1
					self.m249.spread = default_spread
					
					--ksp 58
					self.par.AMMO_PICKUP = pickup.lmg.t1
					self.par.AMMO_MAX = 600
					self.par.stats.damage = 56
					self.par.stats.spread = 3
					self.par.stats.recoil = 15
					self.par.stats.suppression = 1
					self.par.panic_suppression_chance = 1
					self.par.damage_falloff = falloff.lmg.t1
					self.par.spread = default_spread
					
					--buzzsaw
					self.mg42.AMMO_PICKUP = pickup.lmg.t1
					self.mg42.CLIP_AMMO_MAX = 200
					self.mg42.AMMO_MAX = 600
					self.mg42.stats.damage = 57
					self.mg42.stats.spread = 1
					self.mg42.stats.recoil = 10
					self.mg42.stats.suppression = 1
					self.mg42.panic_suppression_chance = 1
					self.mg42.damage_falloff = falloff.lmg.t1
					self.mg42.spread = default_spread
	
	--SNIPERS-------------------------------------------------------------------------------------------------------------------------------------------------
			
			--t4 snipers----------------------------------------------------------------
					
					--thanatos
					self.m95.AMMO_PICKUP = pickup.sniper.t4
					self.m95.stats_modifiers = {damage = 1}
					self.m95.stats.damage = 3500
					self.m95.damage_falloff = falloff.sniper.t4
					self.m95.spread = default_spread

			--t3 snipers----------------------------------------------------------------
				
					--nagant
					self.mosin.AMMO_PICKUP = pickup.sniper.t3
					self.mosin.damage_falloff = falloff.sniper.t3
					self.mosin.spread = default_spread
					
					--desertfox
					self.desertfox.AMMO_PICKUP = pickup.sniper.t3
					self.desertfox.damage_falloff = falloff.sniper.t3
					self.desertfox.spread = default_spread
					
					--r93
					self.r93.AMMO_PICKUP = pickup.sniper.t3
					self.r93.damage_falloff = falloff.sniper.t3
					self.r93.spread = default_spread
					
					--platypus
					self.model70.AMMO_PICKUP = pickup.sniper.t3
					self.model70.damage_falloff = falloff.sniper.t3
					self.model70.spread = default_spread
			
			--t2 snipers----------------------------------------------------------------
				
					--rattlesnake
					self.msr.AMMO_PICKUP = pickup.sniper.t2
					self.msr.fire_mode_data.fire_rate = 0.75
					self.msr.single.fire_rate = 0.75
					self.msr.damage_falloff = falloff.sniper.t2
					self.msr.spread = default_spread
					
					--repeater
					self.winchester1874.AMMO_PICKUP = pickup.sniper.t2
					self.winchester1874.fire_mode_data.fire_rate = 0.566
					self.winchester1874.single.fire_rate = 0.566
					self.winchester1874.stats.reload = 13
					self.winchester1874.damage_falloff = falloff.sniper.t2
					self.winchester1874.spread = default_spread
					
					--r700
					self.r700.AMMO_PICKUP = pickup.sniper.t2
					self.r700.fire_mode_data.fire_rate = 0.632
					self.r700.single.fire_rate = 0.632
					self.r700.damage_falloff = falloff.sniper.t2
					self.r700.spread = default_spread
			
			--t1 snipers----------------------------------------------------------------
				
					--lebensauger
					self.wa2000.AMMO_PICKUP = pickup.sniper.t1
					self.wa2000.fire_mode_data.fire_rate = 0.364
					self.wa2000.single.fire_rate = 0.364
					self.wa2000.stats.damage = 198
					self.wa2000.stats.recoil = 14
					self.wa2000.stats.reload = 15
					self.wa2000.damage_falloff = falloff.sniper.t1
					self.wa2000.spread = default_spread
					
					--contractor
					self.tti.AMMO_PICKUP = pickup.sniper.t1
					self.tti.stats.damage = 198
					self.tti.stats.recoil = 5
					self.tti.damage_falloff = falloff.sniper.t1
					self.tti.spread = default_spread
					
					--grom
					self.siltstone.AMMO_PICKUP = pickup.sniper.t1
					self.siltstone.fire_mode_data.fire_rate = 0.333
					self.siltstone.single.fire_rate = 0.333
					self.siltstone.stats.damage = 198
					self.siltstone.stats.spread = 17
					self.siltstone.stats.reload = 13
					self.siltstone.damage_falloff = falloff.sniper.t1
					self.siltstone.spread = default_spread
					
					--bernetti rangehitter
					self.sbl.AMMO_PICKUP = pickup.sniper.t1
					self.sbl.AMMO_MAX = 40
					self.sbl.stats_modifiers = {damage = 1}
					self.sbl.stats.damage = 198
					self.sbl.stats.reload = 13
					self.sbl.damage_falloff = falloff.sniper.t1
					self.sbl.spread = default_spread
					
					--kang arms x1
					self.qbu88.AMMO_PICKUP = pickup.sniper.t1
					self.qbu88.stats.damage = 198
					self.qbu88.stats.recoil = 10
					self.qbu88.stats.reload = 8
					self.qbu88.damage_falloff = falloff.sniper.t1
					self.qbu88.spread = default_spread
			
	--SMGs----------------------------------------------------------------------------------------------------------------------------------------------------
		
			--T3 SMGs-------------------------------------------------------------------
					
					--CR 805B Submachine Gun
					self.hajk.AMMO_PICKUP = pickup.smg.t3
					self.hajk.AMMO_MAX = 90
					self.hajk.stats.damage = 102
					self.hajk.stats.spread = 18
					self.hajk.stats.recoil = 11
					self.hajk.damage_falloff = falloff.smg.t3
					self.hajk.spread = default_spread
					self.hajk.kick.standing = {
						0.1,
						0.6,
						-0.05,
						-0.05
					}
					self.hajk.kick.crouching = self.hajk.kick.standing
					self.hajk.kick.steelsight = kick_steelsight(self.hajk.kick.standing)
					
							--Akimbo CR 805B Submachine Guns
							self.x_hajk.AMMO_PICKUP = pickup.smg.t3
							self.x_hajk.AMMO_MAX = self.hajk.AMMO_MAX
							self.x_hajk.stats.damage = self.hajk.stats.damage
							self.x_hajk.stats.spread = self.hajk.stats.spread
							self.x_hajk.stats.recoil = self.hajk.stats.recoil
							self.x_hajk.stats.concealment = self.hajk.stats.concealment
							self.x_hajk.damage_falloff = falloff.aki_smg.t3
							self.x_hajk.spread = self.hajk.spread
							self.x_hajk.kick.standing = kick_akimbo(self.hajk.kick.standing)
							self.x_hajk.kick.crouching = self.x_hajk.kick.standing
							self.x_hajk.kick.steelsight = kick_steelsight(self.x_hajk.kick.standing)

					
					--Jackal Submachine Gun
					self.schakal.AMMO_PICKUP = pickup.smg.t3
					self.schakal.AMMO_MAX = 90
					self.schakal.stats.damage =102
					self.schakal.stats.spread = 13
					self.schakal.stats.recoil = 10
					self.schakal.damage_falloff = falloff.smg.t3
					self.schakal.spread = default_spread
					self.schakal.kick.standing = {
						-0.15,
						0.4,
						-0.95,
						0.95
					}
					self.schakal.kick.crouching = self.schakal.kick.standing
					self.schakal.kick.steelsight = kick_steelsight(self.schakal.kick.standing)
					
							--Akimbo Jackal Submachine Guns
							self.x_schakal.AMMO_PICKUP = pickup.smg.t3
							self.x_schakal.AMMO_MAX = self.schakal.AMMO_MAX
							self.x_schakal.stats.damage = self.schakal.stats.damage
							self.x_schakal.stats.spread = self.schakal.stats.spread
							self.x_schakal.stats.recoil = self.schakal.stats.recoil
							self.x_schakal.stats.concealment = self.schakal.stats.concealment
							self.x_schakal.damage_falloff = falloff.aki_smg.t3
							self.x_schakal.spread = self.schakal.spread
							self.x_schakal.kick.standing = kick_akimbo(self.schakal.kick.standing)
							self.x_schakal.kick.crouching = self.x_schakal.kick.standing
							self.x_schakal.kick.steelsight = kick_steelsight(self.x_schakal.kick.standing)

					
					--Krinkov Submachine Gun
					self.akmsu.AMMO_PICKUP = pickup.smg.t3
					self.akmsu.AMMO_MAX = 90
					self.akmsu.stats.damage =102
					self.akmsu.stats.spread = 11
					self.akmsu.stats.recoil = 10
					self.akmsu.damage_falloff = falloff.smg.t3
					self.akmsu.spread = default_spread
					self.akmsu.kick.standing = {
						0.45,
						0.5,
						0.05,
						0.05
					}
					self.akmsu.kick.crouching = self.akmsu.kick.standing
					self.akmsu.kick.steelsight = kick_steelsight(self.akmsu.kick.standing)
					
							--Akimbo Krinkov Submachine Gun
							self.x_akmsu.AMMO_PICKUP = pickup.smg.t3
							self.x_akmsu.AMMO_MAX = self.akmsu.AMMO_MAX
							self.x_akmsu.stats.damage = self.akmsu.stats.damage
							self.x_akmsu.stats.spread = self.akmsu.stats.spread
							self.x_akmsu.stats.recoil = self.akmsu.stats.recoil
							self.x_akmsu.stats.concealment = self.akmsu.stats.concealment
							self.x_akmsu.damage_falloff = falloff.aki_smg.t3
							self.x_akmsu.spread = self.akmsu.spread
							self.x_akmsu.kick.standing = kick_akimbo(self.akmsu.kick.standing)
							self.x_akmsu.kick.crouching = self.x_akmsu.kick.standing
							self.x_akmsu.kick.steelsight = kick_steelsight(self.x_akmsu.kick.standing)

					
					--MP40 Submachine Gun
					self.erma.AMMO_PICKUP = pickup.smg.t3
					self.erma.AMMO_MAX = 80
					self.erma.stats.damage =102
					self.erma.stats.spread = 16
					self.erma.stats.recoil = 12
					self.erma.damage_falloff = falloff.smg.t3
					self.erma.spread = default_spread
					self.erma.kick.standing = {
						-0.2,
						0.8,
						-0.2,
						0.2
					}
					self.erma.kick.crouching = self.erma.kick.standing
					self.erma.kick.steelsight = kick_steelsight(self.erma.kick.standing)
					
							--Akimbo MP40 Submachine Guns
							self.x_erma.AMMO_PICKUP = pickup.smg.t3
							self.x_erma.AMMO_MAX = self.erma.AMMO_MAX
							self.x_erma.stats.damage = self.erma.stats.damage
							self.x_erma.stats.spread = self.erma.stats.spread
							self.x_erma.stats.recoil = self.erma.stats.recoil
							self.x_erma.stats.concealment = self.erma.stats.concealment
							self.x_erma.damage_falloff = falloff.aki_smg.t3
							self.x_erma.spread = self.erma.spread
							self.x_erma.kick.standing = kick_akimbo(self.erma.kick.standing)
							self.x_erma.kick.crouching = self.x_erma.kick.standing
							self.x_erma.kick.steelsight = kick_steelsight(self.x_erma.kick.standing)

					
					--Patchett L2A1 Submachine Gun
					self.sterling.AMMO_PICKUP = pickup.smg.t3
					self.sterling.AMMO_MAX = 96
					self.sterling.stats.damage = 102
					self.sterling.stats.spread = 14
					self.sterling.stats.recoil = 16
					self.sterling.damage_falloff = falloff.smg.t3
					self.sterling.spread = default_spread
					self.sterling.kick.standing = {
						0.6,
						0.8,
						-0.3,
						0.3
					}
					self.sterling.kick.crouching = self.sterling.kick.standing
					self.sterling.kick.steelsight = kick_steelsight(self.sterling.kick.standing)
					self.sterling.shake = {
						fire_multiplier = 1,
						fire_steelsight_multiplier = -1
					}
					
							--Akimbo Patchett L2A1 Submachine Guns
							self.x_sterling.AMMO_PICKUP = pickup.smg.t3
							self.x_sterling.AMMO_MAX = self.sterling.AMMO_MAX
							self.x_sterling.stats.damage = self.sterling.stats.damage
							self.x_sterling.stats.spread = self.sterling.stats.spread
							self.x_sterling.stats.recoil = self.sterling.stats.recoil
							self.x_sterling.stats.concealment = self.sterling.stats.concealment
							self.x_sterling.damage_falloff = falloff.aki_smg.t3
							self.x_sterling.spread = self.sterling.spread
							self.x_sterling.kick.standing = kick_akimbo(self.sterling.kick.standing)
							self.x_sterling.kick.crouching = self.x_sterling.kick.standing
							self.x_sterling.kick.steelsight = kick_steelsight(self.x_sterling.kick.standing)

					
					--Swedish K Submachine Gun
					self.m45.AMMO_PICKUP = pickup.smg.t3
					self.m45.AMMO_MAX = 80
					self.m45.stats.damage = 102
					self.m45.stats.spread = 16
					self.m45.stats.recoil = 9
					self.m45.damage_falloff = falloff.smg.t3
					self.m45.spread = default_spread
					self.m45.kick.standing = {
						-0.3,
						0.6,
						-0.5,
						0.5
					}
					self.m45.kick.crouching = self.m45.kick.standing
					self.m45.kick.steelsight = kick_steelsight(self.m45.kick.standing)
					
							--Akimbo Swedish K Submachine Guns
							self.x_m45.AMMO_PICKUP = pickup.smg.t3
							self.x_m45.AMMO_MAX = self.m45.AMMO_MAX
							self.x_m45.stats.damage = self.m45.stats.damage
							self.x_m45.stats.spread = self.m45.stats.spread
							self.x_m45.stats.recoil = self.m45.stats.recoil
							self.x_m45.stats.concealment = self.m45.stats.concealment
							self.x_m45.damage_falloff = falloff.aki_smg.t3
							self.x_m45.spread = self.m45.spread
							self.x_m45.kick.standing = kick_akimbo(self.m45.kick.standing)
							self.x_m45.kick.crouching = self.x_m45.kick.standing
							self.x_m45.kick.steelsight = kick_steelsight(self.x_m45.kick.standing)

					
					--Tatonka Submachine Gun
					self.coal.AMMO_PICKUP = pickup.smg.t3
					self.coal.AMMO_MAX = 128
					self.coal.stats.damage = 102
					self.coal.stats.spread = 13
					self.coal.stats.recoil = 11
					self.coal.damage_falloff = falloff.smg.t3
					self.coal.spread = default_spread
					self.coal.kick.standing = {
						-0.1,
						0.7,
						0.1,
						0.15
					}
					self.coal.kick.crouching = self.coal.kick.standing
					self.coal.kick.steelsight = kick_steelsight(self.coal.kick.standing)
					
							--Akimbo Tatonka Submachine Guns
							self.x_coal.AMMO_PICKUP = pickup.smg.t3
							self.x_coal.AMMO_MAX = self.coal.AMMO_MAX
							self.x_coal.stats.damage = self.coal.stats.damage
							self.x_coal.stats.spread = self.coal.stats.spread
							self.x_coal.stats.recoil = self.coal.stats.recoil
							self.x_coal.stats.concealment = self.coal.stats.concealment
							self.x_coal.damage_falloff = falloff.aki_smg.t3
							self.x_coal.spread = self.coal.spread
							self.x_coal.kick.standing = kick_akimbo(self.coal.kick.standing)
							self.x_coal.kick.crouching = self.x_coal.kick.standing
							self.x_coal.kick.steelsight = kick_steelsight(self.x_coal.kick.standing)

				
			--T2 SMGs-------------------------------------------------------------------
					
					--AK Gen 21 Tactical Submachine Gun
					self.vityaz.AMMO_PICKUP = pickup.smg.t2
					self.vityaz.AMMO_MAX = 150
					self.vityaz.stats.damage = 72
					self.vityaz.stats.spread = 17
					self.vityaz.stats.recoil = 18
					self.vityaz.damage_falloff = falloff.smg.t2
					self.vityaz.spread = default_spread
					self.vityaz.kick.standing = {
						0.65,
						0.7,
						-0.4,
						0.55
					}
					self.vityaz.kick.crouching = self.vityaz.kick.standing
					self.vityaz.kick.steelsight = kick_steelsight(self.vityaz.kick.standing)
					
							--Akimbo AK Gen 21 Tactical SMGs
							self.x_vityaz.AMMO_PICKUP = pickup.smg.t2
							self.x_vityaz.AMMO_MAX = self.vityaz.AMMO_MAX
							self.x_vityaz.stats.damage = self.vityaz.stats.damage
							self.x_vityaz.stats.spread = self.vityaz.stats.spread
							self.x_vityaz.stats.recoil = self.vityaz.stats.recoil
							self.x_vityaz.stats.concealment = self.vityaz.stats.concealment
							self.x_vityaz.damage_falloff = falloff.aki_smg.t2
							self.x_vityaz.spread = self.vityaz.spread
							self.x_vityaz.kick.standing = kick_akimbo(self.vityaz.kick.standing)
							self.x_vityaz.kick.crouching = self.x_vityaz.kick.standing
							self.x_vityaz.kick.steelsight = kick_steelsight(self.x_vityaz.kick.standing)

					
					--Chicago Typewriter Submachine Gun
					self.m1928.AMMO_PICKUP = pickup.smg.t2
					self.m1928.AMMO_MAX = 150
					self.m1928.stats.damage = 57
					self.m1928.stats.spread = 13
					self.m1928.stats.recoil = 18
					self.m1928.damage_falloff = falloff.smg.t2
					self.m1928.spread = default_spread
					self.m1928.kick.standing = {
						0.1,
						0.5,
						-0.9,
						0.9
					}
					self.m1928.kick.crouching = self.m1928.kick.standing
					self.m1928.kick.steelsight = kick_steelsight(self.m1928.kick.standing)
					
							--Akimbo Chicago Typewriter SMGs
							self.x_m1928.AMMO_PICKUP = pickup.smg.t2
							self.x_m1928.AMMO_MAX = self.m1928.AMMO_MAX
							self.x_m1928.stats.damage = self.m1928.stats.damage
							self.x_m1928.stats.spread = self.m1928.stats.spread
							self.x_m1928.stats.recoil = self.m1928.stats.recoil
							self.x_m1928.stats.concealment = self.m1928.stats.concealment
							self.x_m1928.damage_falloff = falloff.aki_smg.t2
							self.x_m1928.spread = self.m1928.spread
							self.x_m1928.kick.standing = kick_akimbo(self.m1928.kick.standing)
							self.x_m1928.kick.crouching = self.x_m1928.kick.standing
							self.x_m1928.kick.steelsight = kick_steelsight(self.x_m1928.kick.standing)

					
					--Heather Submachine Gun
					self.sr2.AMMO_PICKUP = pickup.smg.t2
					self.sr2.AMMO_MAX = 160
					self.sr2.stats.damage = 57
					self.sr2.stats.spread = 13
					self.sr2.stats.recoil = 14
					self.sr2.damage_falloff = falloff.smg.t2
					self.sr2.spread = default_spread
					self.sr2.kick.standing = {
						-0.1,
						0.6,
						-0.5,
						0.5
					}
					self.sr2.kick.crouching = self.sr2.kick.standing
					self.sr2.kick.steelsight = kick_steelsight(self.sr2.kick.standing)
					
							--Akimbo Heather Submachine Guns
							self.x_sr2.AMMO_PICKUP = pickup.smg.t2
							self.x_sr2.AMMO_MAX = self.sr2.AMMO_MAX
							self.x_sr2.stats.damage = self.sr2.stats.damage
							self.x_sr2.stats.spread = self.sr2.stats.spread
							self.x_sr2.stats.recoil = self.sr2.stats.recoil
							self.x_sr2.stats.concealment = self.sr2.stats.concealment
							self.x_sr2.damage_falloff = falloff.aki_smg.t2
							self.x_sr2.spread = self.sr2.spread
							self.x_sr2.kick.standing = kick_akimbo(self.sr2.kick.standing)
							self.x_sr2.kick.crouching = self.x_sr2.kick.standing
							self.x_sr2.kick.steelsight = kick_steelsight(self.x_sr2.kick.standing)

					
					--Jacket's Piece
					self.cobray.AMMO_PICKUP = pickup.smg.t2
					self.cobray.AMMO_MAX = 160
					self.cobray.stats.damage = 57
					self.cobray.stats.spread = 11
					self.cobray.stats.recoil = 18
					self.cobray.damage_falloff = falloff.smg.t2
					self.cobray.spread = default_spread
					self.cobray.kick.standing = {
						-0.6,
						1.2,
						-1,
						1
					}
					self.cobray.kick.crouching = self.cobray.kick.standing
					self.cobray.kick.steelsight = kick_steelsight(self.cobray.kick.standing)
					
							--Akimbo Jacket's Piece
							self.x_cobray.AMMO_PICKUP = pickup.smg.t2
							self.x_cobray.AMMO_MAX = self.cobray.AMMO_MAX
							self.x_cobray.stats.damage = self.cobray.stats.damage
							self.x_cobray.stats.spread = self.cobray.stats.spread
							self.x_cobray.stats.recoil = self.cobray.stats.recoil
							self.x_cobray.stats.concealment = self.cobray.stats.concealment
							self.x_cobray.damage_falloff = falloff.aki_smg.t2
							self.x_cobray.spread = self.cobray.spread
							self.x_cobray.kick.standing = kick_akimbo(self.cobray.kick.standing)
							self.x_cobray.kick.crouching = self.x_cobray.kick.standing
							self.x_cobray.kick.steelsight = kick_steelsight(self.x_cobray.kick.standing)

					
					--Kobus 90 Submachine Gun
					self.p90.AMMO_PICKUP = pickup.smg.t2
					self.p90.AMMO_MAX = 150
					self.p90.stats.damage = 57
					self.p90.stats.spread = 14
					self.p90.stats.recoil = 16
					self.p90.damage_falloff = falloff.smg.t2
					self.p90.spread = default_spread
					self.p90.kick.standing = {
						-0.2,
						0.6,
						-0.8,
						0.7
					}
					self.p90.kick.crouching = self.p90.kick.standing
					self.p90.kick.steelsight = kick_steelsight(self.p90.kick.standing)
					
							--Akimbo Kobus 90 Submachine Guns
							self.x_p90.AMMO_PICKUP = pickup.smg.t2
							self.x_p90.AMMO_MAX = self.p90.AMMO_MAX
							self.x_p90.stats.damage = self.p90.stats.damage
							self.x_p90.stats.spread = self.p90.stats.spread
							self.x_p90.stats.recoil = self.p90.stats.recoil
							self.x_p90.stats.concealment = self.p90.stats.concealment
							self.x_p90.damage_falloff = falloff.aki_smg.t2
							self.x_p90.spread = self.p90.spread
							self.x_p90.kick.standing = kick_akimbo(self.p90.kick.standing)
							self.x_p90.kick.crouching = self.x_p90.kick.standing
							self.x_p90.kick.steelsight = kick_steelsight(self.x_p90.kick.standing)

					
					--Kross Vertex Submachine Gun
					self.polymer.AMMO_PICKUP = pickup.smg.t2
					self.polymer.AMMO_MAX = 150
					self.polymer.stats.damage = 57
					self.polymer.stats.spread = 13
					self.polymer.stats.recoil = 20
					self.polymer.damage_falloff = falloff.smg.t2
					self.polymer.spread = default_spread
					self.polymer.kick.standing = {
						-0.2,
						0.4,
						-0.9,
						0.9
					}
					self.polymer.kick.crouching = self.polymer.kick.standing
					self.polymer.kick.steelsight = kick_steelsight(self.polymer.kick.standing)
					
							--Akimbo Kross Vertex Submachine Guns
							self.x_polymer.AMMO_PICKUP = pickup.smg.t2
							self.x_polymer.AMMO_MAX = self.polymer.AMMO_MAX
							self.x_polymer.stats.damage = self.polymer.stats.damage
							self.x_polymer.stats.spread = self.polymer.stats.spread
							self.x_polymer.stats.recoil = self.polymer.stats.recoil
							self.x_polymer.stats.concealment = self.polymer.stats.concealment
							self.x_polymer.damage_falloff = falloff.aki_smg.t2
							self.x_polymer.spread = self.polymer.spread
							self.x_polymer.kick.standing = kick_akimbo(self.polymer.kick.standing)
							self.x_polymer.kick.crouching = self.x_polymer.kick.standing
							self.x_polymer.kick.steelsight = kick_steelsight(self.x_polymer.kick.standing)

					
					--Mark 10 Submachine Gun
					self.mac10.AMMO_PICKUP = pickup.smg.t2
					self.mac10.AMMO_MAX = 160
					self.mac10.stats.damage = 57
					self.mac10.stats.spread = 12
					self.mac10.stats.recoil = 17
					self.mac10.damage_falloff = falloff.smg.t2
					self.mac10.spread = default_spread
					self.mac10.kick.standing = {
						-0.4,
						0.8,
						-0.4,
						0.4
					}
					self.mac10.kick.crouching = self.mac10.kick.standing
					self.mac10.kick.steelsight = kick_steelsight(self.mac10.kick.standing)
					
							--Akimbo Mark 10 Submachine Guns
							self.x_mac10.AMMO_PICKUP = pickup.smg.t2
							self.x_mac10.AMMO_MAX = self.mac10.AMMO_MAX
							self.x_mac10.stats.damage = self.mac10.stats.damage
							self.x_mac10.stats.spread = self.mac10.stats.spread
							self.x_mac10.stats.recoil = self.mac10.stats.recoil
							self.x_mac10.stats.concealment = self.mac10.stats.concealment
							self.x_mac10.damage_falloff = falloff.aki_smg.t2
							self.x_mac10.spread = self.mac10.spread
							self.x_mac10.kick.standing = kick_akimbo(self.mac10.kick.standing)
							self.x_mac10.kick.crouching = self.x_mac10.kick.standing
							self.x_mac10.kick.steelsight = kick_steelsight(self.x_mac10.kick.standing)

					
					--Miyaka 10 Special Submachine Gun
					self.pm9.AMMO_PICKUP = pickup.smg.t2
					self.pm9.AMMO_MAX = 175
					self.pm9.stats.damage = 60
					self.pm9.stats.spread = 8
					self.pm9.stats.recoil = 15
					self.pm9.damage_falloff = falloff.smg.t2
					self.pm9.spread = default_spread
					self.pm9.kick.standing = {
						-0.1,
						0.6,
						-1,
						1
					}
					self.pm9.kick.crouching = self.pm9.kick.standing
					self.pm9.kick.steelsight = kick_steelsight(self.pm9.kick.standing)
					
							--Akimbo Miyaka 10 Special SMGs
							self.x_pm9.AMMO_PICKUP = pickup.smg.t2
							self.x_pm9.AMMO_MAX = self.pm9.AMMO_MAX
							self.x_pm9.stats.damage = self.pm9.stats.damage
							self.x_pm9.stats.spread = self.pm9.stats.spread
							self.x_pm9.stats.recoil = self.pm9.stats.recoil
							self.x_pm9.stats.concealment = self.pm9.stats.concealment
							self.x_pm9.damage_falloff = falloff.aki_smg.t2
							self.x_pm9.spread = self.pm9.spread
							self.x_pm9.kick.standing = kick_akimbo(self.pm9.kick.standing)
							self.x_pm9.kick.crouching = self.x_pm9.kick.standing
							self.x_pm9.kick.steelsight = kick_steelsight(self.x_pm9.kick.standing)

					
					--Para Submachine Gun
					self.olympic.AMMO_PICKUP = pickup.smg.t2
					self.olympic.AMMO_MAX = 150
					self.olympic.stats.damage = 57
					self.olympic.stats.spread = 10
					self.olympic.stats.recoil = 17
					self.olympic.damage_falloff = falloff.smg.t2
					self.olympic.spread = default_spread
					self.olympic.kick.standing = {
						0.5,
						0.6,
						-0.75,
						0.75
					}
					self.olympic.kick.crouching = self.olympic.kick.standing
					self.olympic.kick.steelsight = kick_steelsight(self.olympic.kick.standing)
					
							--Akimbo Para Submachine Guns
							self.x_olympic.AMMO_PICKUP = pickup.smg.t2
							self.x_olympic.AMMO_MAX = self.olympic.AMMO_MAX
							self.x_olympic.stats.damage = self.olympic.stats.damage
							self.x_olympic.stats.spread = self.olympic.stats.spread
							self.x_olympic.stats.recoil = self.olympic.stats.recoil
							self.x_olympic.stats.concealment = self.olympic.stats.concealment
							self.x_olympic.damage_falloff = falloff.aki_smg.t2
							self.x_olympic.spread = self.olympic.spread
							self.x_olympic.kick.standing = kick_akimbo(self.olympic.kick.standing)
							self.x_olympic.kick.crouching = self.x_olympic.kick.standing
							self.x_olympic.kick.steelsight = kick_steelsight(self.x_olympic.kick.standing)

					
					--Specops Submachine Gun
					self.mp7.AMMO_PICKUP = pickup.smg.t2
					self.mp7.AMMO_MAX = 160
					self.mp7.stats.damage = 57
					self.mp7.stats.spread = 15
					self.mp7.stats.recoil = 18
					self.mp7.damage_falloff = falloff.smg.t2
					self.mp7.spread = default_spread
					self.mp7.kick.standing = {
						-0.2,
						0.7,
						-0.6,
						0.6
					}
					self.mp7.kick.crouching = self.mp7.kick.standing
					self.mp7.kick.steelsight = kick_steelsight(self.mp7.kick.standing)
					
							--Akimbo Specops Submachine Guns
							self.x_mp7.AMMO_PICKUP = pickup.smg.t2
							self.x_mp7.AMMO_MAX = self.mp7.AMMO_MAX
							self.x_mp7.stats.damage = self.mp7.stats.damage
							self.x_mp7.stats.spread = self.mp7.stats.spread
							self.x_mp7.stats.recoil = self.mp7.stats.recoil
							self.x_mp7.stats.concealment = self.mp7.stats.concealment
							self.x_mp7.damage_falloff = falloff.aki_smg.t2
							self.x_mp7.spread = self.mp7.spread
							self.x_mp7.kick.standing = kick_akimbo(self.mp7.kick.standing)
							self.x_mp7.kick.crouching = self.x_mp7.kick.standing
							self.x_mp7.kick.steelsight = kick_steelsight(self.x_mp7.kick.standing)

				
			--T1 SMGs-------------------------------------------------------------------
					
					--Blaster 9mm Submachine Gun
					self.tec9.AMMO_PICKUP = pickup.smg.t1
					self.tec9.AMMO_MAX = 220
					self.tec9.stats.damage = 45
					self.tec9.stats.spread = 8
					self.tec9.stats.recoil = 20
					self.tec9.damage_falloff = falloff.smg.t1
					self.tec9.spread = default_spread
					self.tec9.kick.standing = {
						-0.2,
						1,
						-0.4,
						0.4
					}
					self.tec9.kick.crouching = self.tec9.kick.standing
					self.tec9.kick.steelsight = kick_steelsight(self.tec9.kick.standing)
					
							--Akimbo Blaster 9mm Submachine Guns
							self.x_tec9.AMMO_PICKUP = pickup.smg.t1
							self.x_tec9.AMMO_MAX = self.tec9.AMMO_MAX
							self.x_tec9.stats.damage = self.tec9.stats.damage
							self.x_tec9.stats.spread = self.tec9.stats.spread
							self.x_tec9.stats.recoil = self.tec9.stats.recoil
							self.x_tec9.stats.concealment = self.tec9.stats.concealment
							self.x_tec9.damage_falloff = falloff.aki_smg.t1
							self.x_tec9.spread = self.tec9.spread
							self.x_tec9.kick.standing = kick_akimbo(self.tec9.kick.standing)
							self.x_tec9.kick.crouching = self.x_tec9.kick.standing
							self.x_tec9.kick.steelsight = kick_steelsight(self.x_tec9.kick.standing)

					
					--CMP Submachine Gun
					self.mp9.AMMO_PICKUP = pickup.smg.t1
					self.mp9.AMMO_MAX = 210
					self.mp9.stats.damage = 45
					self.mp9.stats.spread = 8
					self.mp9.stats.recoil = 20
					self.mp9.damage_falloff = falloff.smg.t1
					self.mp9.spread = default_spread
					self.mp9.kick.standing = {
						0.2,
						0.6,
						-0.8,
						0.8
					}
					self.mp9.kick.crouching = self.mp9.kick.standing
					self.mp9.kick.steelsight = kick_steelsight(self.mp9.kick.standing)
						
							--Akimbo CMP Submachine Guns
							self.x_mp9.AMMO_PICKUP = pickup.smg.t1
							self.x_mp9.AMMO_MAX = self.mp9.AMMO_MAX
							self.x_mp9.stats.damage = self.mp9.stats.damage
							self.x_mp9.stats.spread = self.mp9.stats.spread
							self.x_mp9.stats.recoil = self.mp9.stats.recoil
							self.x_mp9.stats.concealment = self.mp9.stats.concealment
							self.x_mp9.damage_falloff = falloff.aki_smg.t1
							self.x_mp9.spread = self.mp9.spread
							self.x_mp9.kick.standing = kick_akimbo(self.mp9.kick.standing)
							self.x_mp9.kick.crouching = self.x_mp9.kick.standing
							self.x_mp9.kick.steelsight = kick_steelsight(self.x_mp9.kick.standing)

					
					--Cobra Submachine Gun
					self.scorpion.AMMO_PICKUP = pickup.smg.t1
					self.scorpion.AMMO_MAX = 220
					self.scorpion.stats.damage = 45
					self.scorpion.stats.spread = 8
					self.scorpion.stats.recoil = 18
					self.scorpion.stats.concealment = 28
					self.scorpion.damage_falloff = falloff.smg.t1
					self.scorpion.spread = default_spread
					self.scorpion.kick.standing = {
						-0.1,
						0.6,
						-1,
						1
					}
					self.scorpion.kick.crouching = self.scorpion.kick.standing
					self.scorpion.kick.steelsight = kick_steelsight(self.scorpion.kick.standing)
						
							--Akimbo Cobra Submachine Guns
							self.x_scorpion.AMMO_PICKUP = pickup.smg.t1
							self.x_scorpion.AMMO_MAX = self.scorpion.AMMO_MAX
							self.x_scorpion.stats.damage = self.scorpion.stats.damage
							self.x_scorpion.stats.spread = self.scorpion.stats.spread
							self.x_scorpion.stats.recoil = self.scorpion.stats.recoil
							self.x_scorpion.stats.concealment = self.scorpion.stats.concealment
							self.x_scorpion.damage_falloff = falloff.aki_smg.t1
							self.x_scorpion.spread = self.scorpion.spread
							self.x_scorpion.kick.standing = kick_akimbo(self.scorpion.kick.standing)
							self.x_scorpion.kick.crouching = self.x_scorpion.kick.standing
							self.x_scorpion.kick.steelsight = kick_steelsight(self.x_scorpion.kick.standing)

					
					--Compact-5 Submachine Gun
					self.new_mp5.AMMO_PICKUP = pickup.smg.t1
					self.new_mp5.AMMO_MAX = 210
					self.new_mp5.stats.damage = 45
					self.new_mp5.stats.spread = 10
					self.new_mp5.stats.recoil = 21
					self.new_mp5.stats.concealment = 22
					self.new_mp5.damage_falloff = falloff.smg.t1
					self.new_mp5.spread = default_spread
					self.new_mp5.kick.standing = {
						0.2,
						0.6,
						-0.7,
						0.7
					}
					self.new_mp5.kick.crouching = self.new_mp5.kick.standing
					self.new_mp5.kick.steelsight = kick_steelsight(self.new_mp5.kick.standing)
						
							--Akimbo Compact-5 Submachine Guns
							self.x_mp5.AMMO_PICKUP = pickup.smg.t1
							self.x_mp5.AMMO_MAX = self.new_mp5.AMMO_MAX
							self.x_mp5.stats.damage = self.new_mp5.stats.damage
							self.x_mp5.stats.spread = self.new_mp5.stats.spread
							self.x_mp5.stats.recoil = self.new_mp5.stats.recoil
							self.x_mp5.stats.concealment = self.new_mp5.stats.concealment
							self.x_mp5.damage_falloff = falloff.aki_smg.t1
							self.x_mp5.spread = self.new_mp5.spread
							self.x_mp5.kick.standing = kick_akimbo(self.new_mp5.kick.standing)
							self.x_mp5.kick.crouching = self.x_mp5.kick.standing
							self.x_mp5.kick.steelsight = kick_steelsight(self.x_mp5.kick.standing)

					
					--Micro Uzi Submachine Gun
					self.baka.AMMO_PICKUP = pickup.smg.t1
					self.baka.AMMO_MAX = 224
					self.baka.stats.damage = 45
					self.baka.stats.spread = 8
					self.baka.stats.recoil = 20
					self.baka.stats.concealment = 29
					self.baka.damage_falloff = falloff.smg.t1
					self.baka.spread = default_spread
					self.baka.kick.standing = {
						0,
						0.8,
						-0.9,
						0.9
					}
					self.baka.kick.crouching = self.baka.kick.standing
					self.baka.kick.steelsight = kick_steelsight(self.baka.kick.standing)
						
							--Akimbo Micro Uzi Submachine Guns
							self.x_baka.AMMO_PICKUP = pickup.smg.t1
							self.x_baka.AMMO_MAX = self.baka.AMMO_MAX
							self.x_baka.stats.damage = self.baka.stats.damage
							self.x_baka.stats.spread = self.baka.stats.spread
							self.x_baka.stats.recoil = self.baka.stats.recoil
							self.x_baka.stats.concealment = self.baka.stats.concealment
							self.x_baka.damage_falloff = falloff.aki_smg.t1
							self.x_baka.spread = self.baka.spread
							self.x_baka.kick.standing = kick_akimbo(self.baka.kick.standing)
							self.x_baka.kick.crouching = self.x_baka.kick.standing
							self.x_baka.kick.steelsight = kick_steelsight(self.x_baka.kick.standing)

					
					--Signature Submachine Gun
					self.shepheard.AMMO_PICKUP = pickup.smg.t1
					self.shepheard.AMMO_MAX = 200
					self.shepheard.stats.damage = 45
					self.shepheard.stats.spread = 13
					self.shepheard.stats.recoil = 10
					self.shepheard.stats.concealment = 24
					self.shepheard.damage_falloff = falloff.smg.t1
					self.shepheard.spread = default_spread
					self.shepheard.kick.standing = {
						-0.2,
						0.4,
						-0.8,
						0.8
					}
					self.shepheard.kick.crouching = self.shepheard.kick.standing
					self.shepheard.kick.steelsight = kick_steelsight(self.shepheard.kick.standing)
						
							--Akimbo Signature Submachine Guns
							self.x_shepheard.AMMO_PICKUP = pickup.smg.t1
							self.x_shepheard.AMMO_MAX = self.shepheard.AMMO_MAX
							self.x_shepheard.stats.damage = self.shepheard.stats.damage
							self.x_shepheard.stats.spread = self.shepheard.stats.spread
							self.x_shepheard.stats.recoil = self.shepheard.stats.recoil
							self.x_shepheard.stats.concealment = self.shepheard.stats.concealment
							self.x_shepheard.damage_falloff = falloff.aki_smg.t1
							self.x_shepheard.spread = self.shepheard.spread
							self.x_shepheard.kick.standing = kick_akimbo(self.shepheard.kick.standing)
							self.x_shepheard.kick.crouching = self.x_shepheard.kick.standing
							self.x_shepheard.kick.steelsight = kick_steelsight(self.x_shepheard.kick.standing)

					
					--Uzi Submachine Gun
					self.uzi.AMMO_PICKUP = pickup.smg.t1
					self.uzi.AMMO_MAX = 200
					self.uzi.stats.damage = 45
					self.uzi.stats.spread = 13
					self.uzi.stats.recoil = 17
					self.uzi.stats.concealment = 24
					self.uzi.damage_falloff = falloff.smg.t1
					self.uzi.spread = default_spread
					self.uzi.kick.standing = {
						0.4,
						0.6,
						-0.8,
						0.72
					}
					self.uzi.kick.crouching = self.uzi.kick.standing
					self.uzi.kick.steelsight = kick_steelsight(self.uzi.kick.standing)
						
							--Akimbo Uzi Submachine Guns
							self.x_uzi.AMMO_PICKUP = pickup.smg.t1
							self.x_uzi.AMMO_MAX = self.uzi.AMMO_MAX
							self.x_uzi.stats.damage = self.uzi.stats.damage
							self.x_uzi.stats.spread = self.uzi.stats.spread
							self.x_uzi.stats.recoil = self.uzi.stats.recoil
							self.x_uzi.stats.concealment = self.uzi.stats.concealment
							self.x_uzi.damage_falloff = falloff.aki_smg.t1
							self.x_uzi.spread = self.uzi.spread
							self.x_uzi.kick.standing = kick_akimbo(self.uzi.kick.standing)
							self.x_uzi.kick.crouching = self.x_uzi.kick.standing
							self.x_uzi.kick.steelsight = kick_steelsight(self.x_uzi.kick.standing)

			
	--PISTOLS-------------------------------------------------------------------------------------------------------------------------------------------------
		
			--t4 pistols----------------------------------------------------------------
					
					--peacemaker
					self.peacemaker.AMMO_PICKUP = pickup.pistol.t4
					self.peacemaker.damage_falloff = falloff.pistol.t4
					self.peacemaker.AMMO_MAX = 36
					self.peacemaker.stats.damage = 230
					self.peacemaker.stats.recoil = 1
					self.peacemaker.fire_mode_data.fire_rate = 0.166
					self.peacemaker.single.fire_rate = 0.166
					self.peacemaker.armor_piercing_chance = 1

					
					--matever
					self.mateba.AMMO_PICKUP = pickup.pistol.t4
					self.mateba.damage_falloff = falloff.pistol.t4
					self.mateba.AMMO_MAX = 48
					self.mateba.fire_mode_data.fire_rate = 0.166
					self.mateba.single.fire_rate = 0.166
					self.mateba.armor_piercing_chance = 1
					
							--akimbo matever
							self.x_2006m.AMMO_PICKUP = pickup.pistol.t4
							self.x_2006m.damage_falloff = falloff.pistol.t4
							self.x_2006m.AMMO_MAX = 48
							self.x_2006m.fire_mode_data.fire_rate = 0.166
							self.x_2006m.single.fire_rate = 0.166
							self.x_2006m.armor_piercing_chance = 1

					
					--castigo
					self.chinchilla.AMMO_PICKUP = pickup.pistol.t4
					self.chinchilla.damage_falloff = falloff.pistol.t4
					self.chinchilla.AMMO_MAX = 48
					self.chinchilla.fire_mode_data.fire_rate = 0.166
					self.chinchilla.single.fire_rate = 0.166
					self.chinchilla.armor_piercing_chance = 1
					
							--akimbo castigo
							self.x_chinchilla.AMMO_PICKUP = pickup.pistol.t4
							self.x_chinchilla.damage_falloff = falloff.pistol.t4
							self.x_chinchilla.AMMO_MAX = 48
							self.x_chinchilla.fire_mode_data.fire_rate = 0.166
							self.x_chinchilla.single.fire_rate = 0.166
							self.x_chinchilla.armor_piercing_chance = 1

					
					--bronco
					self.new_raging_bull.AMMO_PICKUP = pickup.pistol.t4
					self.new_raging_bull.damage_falloff = falloff.pistol.t4
					self.new_raging_bull.AMMO_MAX = 48
					self.new_raging_bull.fire_mode_data.fire_rate = 0.166
					self.new_raging_bull.single.fire_rate = 0.166
					self.new_raging_bull.armor_piercing_chance = 1
					
							--akimbo bronco
							self.x_rage.AMMO_PICKUP = pickup.pistol.t4
							self.x_rage.damage_falloff = falloff.pistol.t4
							self.x_rage.AMMO_MAX = 48
							self.x_rage.fire_mode_data.fire_rate = 0.166
							self.x_rage.single.fire_rate = 0.166
							self.x_rage.armor_piercing_chance = 1

					
					--deagle
					self.deagle.AMMO_PICKUP = pickup.pistol.t4
					self.deagle.damage_falloff = falloff.pistol.t4
					self.deagle.AMMO_MAX = 30
					self.deagle.fire_mode_data.fire_rate = 0.2
					self.deagle.single.fire_rate = 0.2
					self.deagle.stats.damage = 176
					self.deagle.stats.spread = 18
					self.deagle.stats.recoil = 1
					self.deagle.armor_piercing_chance = 1
					
							--akimbo deagle
							self.x_deagle.AMMO_PICKUP = pickup.pistol.t4
							self.x_deagle.damage_falloff = falloff.pistol.t4
							self.x_deagle.AMMO_MAX = 30
							self.x_deagle.fire_mode_data.fire_rate = 0.2
							self.x_deagle.single.fire_rate = 0.2
							self.x_deagle.stats.damage = 176
							self.x_deagle.stats.spread = 18
							self.x_deagle.stats.recoil = 1
							self.x_deagle.armor_piercing_chance = 1

				
			--t3 pistols----------------------------------------------------------------
					
					--white streak
					self.pl14.AMMO_PICKUP = pickup.pistol.t3
					self.pl14.damage_falloff = falloff.pistol.t3
					
							--akimbo white streak
							self.x_pl14.AMMO_PICKUP = pickup.pistol.t3
							self.x_pl14.damage_falloff = falloff.pistol.t3
							self.x_pl14.AMMO_MAX = 60

					
					--parabellum
					self.breech.AMMO_PICKUP = pickup.pistol.t3
					self.breech.damage_falloff = falloff.pistol.t3
					self.breech.stats.damage = 121
					self.breech.fire_mode_data.fire_rate = 0.25
					self.breech.single.fire_rate = 0.25
					
							--akimbo parabellum
							self.x_breech.AMMO_PICKUP = pickup.pistol.t3
							self.x_breech.damage_falloff = falloff.pistol.t3
							self.x_breech.AMMO_MAX = 56
							self.x_breech.stats.damage = 121
							self.x_breech.fire_mode_data.fire_rate = 0.25
							self.x_breech.single.fire_rate = 0.25

					
					--baby deagle
					self.sparrow.AMMO_PICKUP = pickup.pistol.t3
					self.sparrow.damage_falloff = falloff.pistol.t3
					
							--akimbo baby deagle
							self.x_sparrow.AMMO_PICKUP = pickup.pistol.t3
							self.x_sparrow.damage_falloff = falloff.pistol.t3
							self.x_sparrow.AMMO_MAX = 60

					
					--5/7
					self.lemming.AMMO_PICKUP = pickup.pistol.t3
					self.lemming.damage_falloff = falloff.pistol.t3
					self.lemming.can_shoot_through_enemy = nil
					self.lemming.can_shoot_through_shield = nil
					self.lemming.can_shoot_through_wall = nil

					
					--frenchman model 87
					self.model3.AMMO_PICKUP = pickup.pistol.t3
					self.model3.damage_falloff = falloff.pistol.t3
					self.model3.stats.damage = 135
					
							--akimbo frenchman model 87
							self.x_model3.AMMO_PICKUP = pickup.pistol.t3
							self.x_model3.damage_falloff = falloff.pistol.t3
							self.x_model3.AMMO_MAX = self.model3.AMMO_MAX
							self.x_model3.stats.damage = 135

					
					--crosskill chunky
					self.m1911.AMMO_PICKUP = pickup.pistol.t3
					self.m1911.damage_falloff = falloff.pistol.t3
					-- self.m1911.stats.damage = 120
					
							--akimbo crosskill chunky
							self.x_m1911.AMMO_PICKUP = pickup.pistol.t3
							self.x_m1911.damage_falloff = falloff.pistol.t3
							self.x_m1911.AMMO_MAX = self.x_m1911.AMMO_MAX
							-- self.x_m1911.stats.damage = 120

				
			--t2 pistols----------------------------------------------------------------
					
					--chimano custom
					self.g22c.AMMO_PICKUP = pickup.pistol.t2
					self.g22c.damage_falloff = falloff.pistol.t2
					self.g22c.AMMO_MAX = 80
					
							--akimbo chimano custom
							self.x_g22c.AMMO_PICKUP = pickup.pistol.t2
							self.x_g22c.damage_falloff = falloff.pistol.t2
							self.x_g22c.AMMO_MAX = self.g22c.AMMO_MAX

					
					--crosskill
					self.colt_1911.AMMO_PICKUP = pickup.pistol.t2
					self.colt_1911.damage_falloff = falloff.pistol.t2
					self.colt_1911.AMMO_MAX = 80
					
							--akimbo crosskill
							self.x_1911.AMMO_PICKUP = pickup.pistol.t2
							self.x_1911.damage_falloff = falloff.pistol.t2
							self.x_1911.AMMO_MAX = self.colt_1911.AMMO_MAX

					
					--broomstick
					self.c96.AMMO_PICKUP = pickup.pistol.t2
					self.c96.damage_falloff = falloff.pistol.t2
					self.c96.AMMO_MAX = 80
					
							--akimbo broomstick
							self.x_c96.AMMO_PICKUP = pickup.pistol.t2
							self.x_c96.damage_falloff = falloff.pistol.t2
							self.x_c96.AMMO_MAX = self.c96.AMMO_MAX

					
					--interceptor
					self.usp.AMMO_PICKUP = pickup.pistol.t2
					self.usp.damage_falloff = falloff.pistol.t2
					self.usp.AMMO_MAX = 78
					
							--akimbo interceptor
							self.x_usp.AMMO_PICKUP = pickup.pistol.t2
							self.x_usp.damage_falloff = falloff.pistol.t2
							self.x_usp.AMMO_MAX = self.usp.AMMO_MAX

					
					--signature .40
					self.p226.AMMO_PICKUP = pickup.pistol.t2
					self.p226.damage_falloff = falloff.pistol.t2
					self.p226.AMMO_MAX = 72
					
							--akimbo signature .40
							self.x_p226.AMMO_PICKUP = pickup.pistol.t2
							self.x_p226.damage_falloff = falloff.pistol.t2
							self.x_p226.AMMO_MAX = self.p226.AMMO_MAX

					
					--leo
					self.hs2000.AMMO_PICKUP = pickup.pistol.t2
					self.hs2000.damage_falloff = falloff.pistol.t2
					self.hs2000.AMMO_MAX = 76
					
							--akimbo leo
							self.x_hs2000.AMMO_PICKUP = pickup.pistol.t2
							self.x_hs2000.damage_falloff = falloff.pistol.t2
							self.x_hs2000.AMMO_MAX = self.hs2000.AMMO_MAX

					
					--contractor
					self.packrat.AMMO_PICKUP = pickup.pistol.t2
					self.packrat.damage_falloff = falloff.pistol.t2
					self.packrat.AMMO_MAX = 75
					
							--akimbo contractor
							self.x_packrat.AMMO_PICKUP = pickup.pistol.t2
							self.x_packrat.damage_falloff = falloff.pistol.t2
							self.x_hs2000.AMMO_MAX = self.packrat.AMMO_MAX

					
					--igor automatik pistol
					self.stech.AMMO_PICKUP = pickup.pistol.t2
					self.stech.damage_falloff = falloff.pistol.t2
					self.stech.AMMO_MAX = 80
					
							--akimbo igor automatik pistol
							self.x_stech.AMMO_PICKUP = pickup.pistol.t2
							self.x_stech.damage_falloff = falloff.pistol.t2
							self.x_stech.AMMO_MAX = self.stech.AMMO_MAX

					
					--holt 9mm
					self.holt.AMMO_PICKUP = pickup.pistol.t2
					self.holt.damage_falloff = falloff.pistol.t2
					self.holt.AMMO_MAX = 75
					
							--holt 9mm
							self.x_holt.AMMO_PICKUP = pickup.pistol.t2
							self.x_holt.damage_falloff = falloff.pistol.t2
							self.x_holt.AMMO_MAX = self.holt.AMMO_MAX

				
			--t1 pistols----------------------------------------------------------------
					
					--chimano 88
					self.glock_17.AMMO_PICKUP = pickup.pistol.t1
					self.glock_17.damage_falloff = falloff.pistol.t1
					self.glock_17.AMMO_MAX = 119
					
							--akimbo chimano 88
							self.x_g17.AMMO_PICKUP = pickup.pistol.t1
							self.x_g17.damage_falloff = falloff.pistol.t1
							self.x_g17.AMMO_MAX = self.glock_17.AMMO_MAX

					
					--chimano compact
					self.g26.AMMO_PICKUP = pickup.pistol.t1
					self.g26.damage_falloff = falloff.pistol.t1
					self.g26.AMMO_MAX = 120
					
							--akimbo chimano compact
							self.jowi.AMMO_PICKUP = pickup.pistol.t1
							self.jowi.damage_falloff = falloff.pistol.t1
							self.jowi.AMMO_MAX = self.g26.AMMO_MAX
							self.jowi.fire_mode_data.fire_rate = self.g26.fire_mode_data.fire_rate
							self.jowi.single.fire_rate = self.g26.single.fire_rate

					
					--bernetti
					self.b92fs.AMMO_PICKUP = pickup.pistol.t1
					self.b92fs.damage_falloff = falloff.pistol.t1
					self.b92fs.AMMO_MAX = 112
					
							--akimbo bernetti
							self.x_b92fs.AMMO_PICKUP = pickup.pistol.t1
							self.x_b92fs.damage_falloff = falloff.pistol.t1
							self.x_b92fs.AMMO_MAX = self.b92fs.AMMO_MAX
							self.x_b92fs.fire_mode_data.fire_rate = self.b92fs.fire_mode_data.fire_rate
							self.x_b92fs.single.fire_rate = self.b92fs.single.fire_rate

					
					--stryk
					self.glock_18c.AMMO_PICKUP = pickup.pistol.t1
					self.glock_18c.damage_falloff = falloff.pistol.t1
					self.glock_18c.AMMO_MAX = 120
					
							--akimbo stryk
							self.x_g18c.AMMO_PICKUP = pickup.pistol.t1
							self.x_g18c.damage_falloff = falloff.pistol.t1
							self.x_g18c.AMMO_MAX = self.glock_18c.AMMO_MAX

					
					--gruber kurz
					self.ppk.AMMO_PICKUP = pickup.pistol.t1
					self.ppk.damage_falloff = falloff.pistol.t1
					self.ppk.AMMO_MAX = 112
					
							--akimbo gruber kurz
							self.x_ppk.AMMO_PICKUP = pickup.pistol.t1
							self.x_ppk.damage_falloff = falloff.pistol.t1
							self.x_ppk.AMMO_MAX = self.ppk.AMMO_MAX

					
					--m13
					self.legacy.AMMO_PICKUP = pickup.pistol.t1
					self.legacy.damage_falloff = falloff.pistol.t1
					self.legacy.AMMO_MAX = 117
					
							--akimbo m13
							self.x_legacy.AMMO_PICKUP = pickup.pistol.t1
							self.x_legacy.damage_falloff = falloff.pistol.t1
							self.x_legacy.AMMO_MAX = self.legacy.AMMO_MAX

					
					--crosskill guard
					self.shrew.AMMO_PICKUP = pickup.pistol.t1
					self.shrew.damage_falloff = falloff.pistol.t1
					self.shrew.AMMO_MAX = 119
					
							--akimbo crosskill guard
							self.x_shrew.AMMO_PICKUP = pickup.pistol.t1
							self.x_shrew.damage_falloff = falloff.pistol.t1
							self.x_shrew.AMMO_MAX = self.shrew.AMMO_MAX
							self.x_shrew.fire_mode_data.fire_rate = self.shrew.fire_mode_data.fire_rate
							self.x_shrew.single.fire_rate = self.shrew.single.fire_rate

					
					--czech 92 pistol
					self.czech.AMMO_PICKUP = pickup.pistol.t1
					self.czech.damage_falloff = falloff.pistol.t1
					self.czech.AMMO_MAX = 120
					
							--akimbo czech 92 pistol
							self.x_czech.AMMO_PICKUP = pickup.pistol.t1
							self.x_czech.damage_falloff = falloff.pistol.t1
							self.x_czech.AMMO_MAX = self.czech.AMMO_MAX

					
					--bernetti auto pistol
					self.beer.AMMO_PICKUP = pickup.pistol.t1
					self.beer.damage_falloff = falloff.pistol.t1
					self.beer.AMMO_MAX = 120
					
							--akimbo bernetti auto pistols
							self.x_beer.AMMO_PICKUP = pickup.pistol.t1
							self.x_beer.damage_falloff = falloff.pistol.t1
							self.x_beer.AMMO_MAX = self.beer.AMMO_MAX

			
	--GLs-----------------------------------------------------------------------------------------------------------------------------------------------------
			
			--t2 gls--------------------------------------------------------------------
					
					--GL40
					self.gre_m79.AMMO_PICKUP = pickup.gl.t2
					self.gre_m79.AMMO_MAX = 9
					self.gre_m79.stats.reload = 12
					
					--Piglet
					self.m32.AMMO_PICKUP = pickup.gl.t2
					self.m32.timers = {
						shotgun_reload_enter = 1.85,
						shotgun_reload_exit_empty = 1.33,
						shotgun_reload_exit_not_empty = 1.33,
						shotgun_reload_shell = 1.96,
						shotgun_reload_first_shell_offset = 0,
						unequip = 0.85,
						equip = 0.85
					}
					self.m32.fire_mode_data.fire_rate = 0.5
					self.m32.single.fire_rate = 0.5
					self.m32.stats.reload = 13
					
					--China puff
					self.china.AMMO_PICKUP = pickup.gl.t2
					
					--Compact 40
					self.slap.AMMO_PICKUP = pickup.gl.t2
				
			--t1 gls--------------------------------------------------------------------
					
					--Arbiter
					self.arbiter.AMMO_PICKUP = pickup.gl.t1
					self.arbiter.stats.damage = 54
			
	--RLs-----------------------------------------------------------------------------------------------------------------------------------------------------
		
			--Commander 101
				self.ray.AMMO_PICKUP = {0.02  /1.35, 0.52  /1.35}
				self.ray.stats.damage = 21
			
			--HRL-7
				self.rpg7.AMMO_PICKUP = {0.01  /1.35, 0.51  /1.35}
				self.rpg7.stats.damage = 62
			
	--Miniguns------------------------------------------------------------------------------------------------------------------------------------------------
			
			--Vulcan Minigun Rework
				self.m134.AMMO_MAX = 1300/1.3125
				self.m134.CLIP_AMMO_MAX = 1300
				self.m134.AMMO_PICKUP = {0.5,1.5}
				self.m134.can_shoot_through_shield = true
				self.m134.can_shoot_through_enemy = true
				self.m134.can_shoot_through_wall = true
				self.m134.max_penetrations = 3
				self.m134.stats.damage = 57
				self.m134.stats.spread = 15
				self.m134.stats.spread_moving = 15
				self.m134.stats.recoil = 1
				self.m134.stats.concealment = 1
				self.m134.kick.standing = {
					-0.05,
					0.2,
					-0.2,
					0.35
				}
				self.m134.kick.crouching = self.m134.kick.standing
				self.m134.kick.steelsight = self.m134.kick.standing
				
			--XL 5.56 Microgun Rework
				self.shuno.use_data.selection_index = SELECTION.SECONDARY
				self.shuno.AMMO_MAX = 1300/1.3125
				self.shuno.CLIP_AMMO_MAX = 1300
				self.shuno.AMMO_PICKUP = {15, 30}
				self.shuno.stats.damage = 32
				self.shuno.stats.spread = 8
				self.shuno.stats.spread_moving = 8
				self.shuno.stats.recoil = 12
				self.shuno.stats.concealment = 7
			
	--Flamethrowers-------------------------------------------------------------------------------------------------------------------------------------------
		
			--Flamethrower
				self.flamethrower_mk2.AMMO_PICKUP = {20, 30}
				self.flamethrower_mk2.fire_dot_data = nil
				self.flamethrower_mk2.dot_data = {
					type = "fire",
					custom_data = {
						damage = 18,
						dot_length = 3.6,
						dot_trigger_max_distance = 3000,
						dot_tick_period = 0.5,
						scale_tick_period = 0.015,
						dot_can_crit = true
					}
				}
			
			--MA-17 Flamethrower
				self.system.AMMO_PICKUP = {15, 25}
				self.system.fire_dot_data = nil
				self.system.dot_data = {
					type = "fire",
					custom_data = {
						damage = 18,
						dot_length = 3.6,
						dot_trigger_max_distance = 3000,
						dot_tick_period = 0.5,
						scale_tick_period = 0.01,
						dot_can_crit = true
					}
				}
end)
