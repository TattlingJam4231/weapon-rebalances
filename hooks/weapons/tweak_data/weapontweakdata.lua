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
	
	self.swat_van_turret_module.BODY_DAMAGE_CLAMP = 40000
	
	--Vulcan Minigun Rework
	self.m134.AMMO_MAX = 1300/1.3125
	self.m134.CLIP_AMMO_MAX = 1300
	self.m134.AMMO_PICKUP = {0.5,1.5}
	self.m134.can_shoot_through_enemy = true
	self.m134.can_shoot_through_shield = true
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
	
	--Flamethrower
	self.flamethrower_mk2.AMMO_PICKUP = {20, 30}
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
	
	--Commander 101
	self.ray.AMMO_PICKUP = {0.02  /1.35, 0.52  /1.35}
	self.ray.stats.damage = 21
	
	--HRL-7
	self.rpg7.AMMO_PICKUP = {0.01  /1.35, 0.51  /1.35}
	self.rpg7.stats.damage = 62
	
	--sentry
	self.sentry_gun.DAMAGE = 4
	
	
	--ammo pickup
	local pickup = {
		assault = {
			t4 = {2		/1.35, 3	/1.35},
			t3 = {4		/1.35, 6	/1.35},
			t2 = {6		/1.35, 11	/1.35},
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
			t2 = {0		/1.35, 0.9	/1.35},
			t1 = {0		/1.35, 1.1	/1.35}
		}
	}
	
	--SHOTGUNS------------------------------------------------------------------------------------------------------------------------------------------------
	
		--t5 shotguns---------------------------------------------------------------
		
			--mosconi
			self.huntsman.AMMO_PICKUP = pickup.shotgun.t5
			
			--joceline
			self.b682.AMMO_PICKUP = pickup.shotgun.t5
			
			--breaker
			self.boot.AMMO_PICKUP = pickup.shotgun.t5
			
			--akimbo judge
			self.x_judge.AMMO_PICKUP = pickup.shotgun.t5
			self.x_judge.fire_mode_data.fire_rate = 0.166
			self.x_judge.single.fire_rate = 0.166
			
			--judge
			self.judge.AMMO_PICKUP = pickup.shotgun.t5
			self.judge.fire_mode_data.fire_rate = 0.166
			self.judge.single.fire_rate = 0.166
			
			--gsps
			self.m37.AMMO_PICKUP = pickup.shotgun.t5
			
			--claire
			self.coach.AMMO_PICKUP = pickup.shotgun.t5
		
		--t4 shotguns----------------------------------------------------------------
		
			--raven
			self.ksg.AMMO_PICKUP = pickup.shotgun.t4
			self.ksg.stats.damage = 110
			
			--reinfeld 880
			self.r870.AMMO_PICKUP = pickup.shotgun.t4
			self.r870.stats.damage = 110
			
			--reinfeld 88
			self.m1897.AMMO_PICKUP = pickup.shotgun.t4
			self.m1897.stats.damage = 110
			
			--mosconi tactical
			self.m590.AMMO_PICKUP = pickup.shotgun.t4
			self.m590.stats.damage = 110
			
			--locomotive
			self.serbu.AMMO_PICKUP = pickup.shotgun.t4
			self.serbu.stats.damage = 110
		
		--t3 shotguns----------------------------------------------------------------
		
			--predator
			self.spas12.AMMO_PICKUP = pickup.shotgun.t3
			
			--m1014
			self.benelli.AMMO_PICKUP = pickup.shotgun.t3
			
			--street sweeper
			self.striker.AMMO_PICKUP = pickup.shotgun.t3
			self.striker.stats.damage = 55
		
		--t2 shotguns----------------------------------------------------------------
		
			--izhma
			self.saiga.AMMO_PICKUP = pickup.shotgun.t2
			
			--steakout
			self.aa12.AMMO_PICKUP = pickup.shotgun.t2
			
			--akimbo goliath
			self.x_rota.AMMO_PICKUP = pickup.shotgun.t2
			
			--goliath
			self.rota.AMMO_PICKUP = pickup.shotgun.t2
		
		--t1 shotguns----------------------------------------------------------------
		
			--brothers grimm
			self.x_basset.AMMO_PICKUP = pickup.shotgun.t1
			
			--grimm
			self.basset.AMMO_PICKUP = pickup.shotgun.t1
	
	--ASSAULT RIFLES------------------------------------------------------------------------------------------------------------------------------------------
	
		--t4 assault rifles---------------------------------------------------------
		
			--cavity
			self.sub2000.AMMO_PICKUP = pickup.assault.t4
			self.sub2000.stats.damage = 164
			
			--m308
			self.new_m14.AMMO_PICKUP = pickup.assault.t4
			self.new_m14.stats.damage = 164
			
			--galant
			self.ching.AMMO_PICKUP = pickup.assault.t4
			self.ching.stats.damage = 164
			
			--little friend
			self.contraband.AMMO_PICKUP = pickup.assault.t4
			self.contraband.CAN_TOGGLE_FIREMODE = true
			self.contraband.stats.damage = 164
			
			self.contraband_m203.categories = {
				"grenade_launcher",
				"assault_rifle"
				}
		
		--t3 assault rifles---------------------------------------------------------
		
			--eagle
			self.scar.AMMO_PICKUP = pickup.assault.t3
			self.scar.AMMO_MAX = 140
			self.scar.stats.damage = 100
			-- self.scar.stats.suppression = 9
			--self.scar.stats.concealment = 1
			
			--falcon
			self.fal.AMMO_PICKUP = pickup.assault.t3
			self.fal.AMMO_MAX = 140
			self.fal.stats.damage = 100
			-- self.fal.stats.suppression = 9
			--self.fal.stats.concealment = 1 -10
			
			--ak.762
			self.akm.AMMO_PICKUP = pickup.assault.t3
			self.akm.AMMO_MAX = 150
			self.akm.stats.damage = 99
			-- self.akm.stats.suppression = 9
			--self.akm.stats.concealment = 1
			
			--golden ak.762
			self.akm_gold.AMMO_PICKUP = pickup.assault.t3
			self.akm_gold.AMMO_MAX = 150
			self.akm_gold.stats.damage = 99
			-- self.akm_gold.stats.suppression = 9
			--self.akm_gold.stats.concealment = 1
			
			--amr-16
			self.m16.AMMO_PICKUP = pickup.assault.t3
			self.m16.AMMO_MAX = 150
			self.m16.stats.damage = 96
			-- self.m16.stats.suppression = 9
			--self.m16.stats.concealment = 2
			
			--ak17
			self.flint.AMMO_PICKUP = pickup.assault.t3
			self.flint.AMMO_MAX = 140
			self.flint.stats.damage = 101
			-- self.flint.stats.suppression = 9
			--self.flint.stats.concealment = 1
			
			--gewehr
			self.g3.AMMO_PICKUP = pickup.assault.t3
			self.g3.AMMO_MAX = 140
			self.g3.stats.damage = 101
			-- self.g3.stats.suppression = 9
			--self.g3.stats.concealment = 1
		
		--t2 assault rifles---------------------------------------------------------
			
			--gecko
			self.galil.AMMO_PICKUP = pickup.assault.t2
			self.galil.AMMO_MAX = 210
			self.galil.stats.damage = 58
			-- self.galil.stats.suppression = 15
			--self.galil.stats.concealment = 1
			
			--car-4
			self.new_m4.AMMO_PICKUP = pickup.assault.t2
			self.new_m4.AMMO_MAX = 210
			self.new_m4.stats.damage = 53
			-- self.new_m4.stats.suppression = 15
			--self.new_m4.stats.concealment = -1
			
			--queen's wrath
			self.l85a2.AMMO_PICKUP = pickup.assault.t2
			self.l85a2.AMMO_MAX = 210
			self.l85a2.stats.damage = 59
			-- self.l85a2.stats.suppression = 15
			--self.l85a2.stats.concealment = 1
			
			--ak5
			self.ak5.AMMO_PICKUP = pickup.assault.t2
			self.ak5.AMMO_MAX = 210
			-- self.ak5.stats.damage = 56
			-- self.ak5.stats.suppression = 15
			--self.ak5.stats.concealment = 1
			
			--lion's roar
			self.vhs.AMMO_PICKUP = pickup.assault.t2
			self.vhs.AMMO_MAX = 210
			self.vhs.stats.damage = 59
			-- self.vhs.stats.suppression = 15
			--self.vhs.stats.concealment = 2
			
			--ak
			self.ak74.AMMO_PICKUP = pickup.assault.t2
			self.ak74.AMMO_MAX = 210
			self.ak74.stats.damage = 57
			-- self.ak74.stats.suppression = 15
			--self.ak74.stats.concealment = 2
			
			--uar
			self.aug.AMMO_PICKUP = pickup.assault.t2
			self.aug.AMMO_MAX = 210
			-- self.aug.stats.damage = 55
			-- self.aug.stats.suppression = 15
			--self.aug.stats.concealment = 3
			
			--tempest
			self.komodo.AMMO_PICKUP = pickup.assault.t2
			self.komodo.AMMO_MAX = 210
			self.komodo.stats.damage = 59
			-- self.komodo.stats.suppression = 15
			--self.komodo.stats.concealment = 4
			
			--union
			self.corgi.AMMO_PICKUP = pickup.assault.t2
			self.corgi.AMMO_MAX = 210
			self.corgi.stats.damage = 59
			-- self.corgi.stats.suppression = 15
			--self.corgi.stats.concealment = 1
		
		--t1 assault rifles---------------------------------------------------------
		
			--amcar
			self.amcar.AMMO_PICKUP = pickup.assault.t1
			self.amcar.AMMO_MAX = 300
			-- self.amcar.stats.suppression = 15
			--self.amcar.stats.concealment = 6
			
			--commando
			self.s552.AMMO_PICKUP = pickup.assault.t1
			self.s552.AMMO_MAX = 300
			self.s552.stats.damage = 40
			-- self.s552.stats.suppression = 15
			--self.s552.stats.concealment = 3
			
			--jp36
			self.g36.AMMO_PICKUP = pickup.assault.t1
			self.g36.AMMO_MAX = 300
			self.g36.stats.damage = 42
			-- self.g36.stats.suppression = 15
			--self.g36.stats.concealment = 4
			
			--clarion
			self.famas.AMMO_PICKUP = pickup.assault.t1
			self.famas.AMMO_MAX = 300
			self.famas.stats.damage = 39
			-- self.famas.stats.suppression = 15
			--self.famas.stats.concealment = 3
			
			--valkyria
			self.asval.AMMO_PICKUP = pickup.assault.t1
			self.asval.AMMO_MAX = 300
			self.asval.stats.damage = 44
			-- self.asval.stats.suppression = 19
			--self.asval.stats.concealment = 3
			
			--bootleg
			self.tecci.AMMO_PICKUP = pickup.assault.t1
			self.tecci.AMMO_MAX = 300
			self.tecci.stats.damage = 42
			-- self.tecci.stats.suppression = 15
			--self.tecci.stats.concealment = 4
	
	--LMGs----------------------------------------------------------------------------------------------------------------------------------------------------
	
		--t3 lmgs-------------------------------------------------------------------
		
			--m60
			self.m60.AMMO_PICKUP = pickup.lmg.t3
			self.m60.AMMO_MAX = 200
			self.m60.CLIP_AMMO_MAX = 100
			self.m60.can_shoot_through_wall = true
			self.m60.stats.spread = 12
			self.m60.stats.recoil = 4
			self.m60.panic_suppression_chance = 1
			self.m60.stats.suppression = 6
			self.m60.stats.damage = 110
			
		--t2 lmgs-------------------------------------------------------------------
		
			--rpk
			self.rpk.AMMO_PICKUP = pickup.lmg.t2
			self.rpk.AMMO_MAX = 400
			self.rpk.stats.spread = 1
			self.rpk.stats.recoil = 10
			self.rpk.panic_suppression_chance = 1
			self.rpk.stats.suppression = 1
			self.rpk.stats.damage = 81
			
			--brenner
			self.hk21.AMMO_PICKUP = pickup.lmg.t2
			self.hk21.AMMO_MAX = 450
			self.hk21.stats.spread = 2
			self.hk21.stats.recoil = 12
			self.hk21.panic_suppression_chance = 1
			self.hk21.stats.suppression = 1
			self.hk21.stats.damage = 83
			
		--t1 lmgs-------------------------------------------------------------------
		
			--ksp
			self.m249.AMMO_PICKUP = pickup.lmg.t1
			self.m249.AMMO_MAX = 600
			self.m249.stats.spread = 3
			self.m249.stats.recoil = 13
			self.m249.panic_suppression_chance = 1
			self.m249.stats.suppression = 1
			self.m249.stats.damage = 55
			
			--ksp 58
			self.par.AMMO_PICKUP = pickup.lmg.t1
			self.par.AMMO_MAX = 600
			self.par.stats.spread = 3
			self.par.stats.recoil = 15
			self.par.panic_suppression_chance = 1
			self.par.stats.suppression = 1
			self.par.stats.damage = 56
			
			--buzzsaw
			self.mg42.AMMO_PICKUP = pickup.lmg.t1
			self.mg42.CLIP_AMMO_MAX = 200
			self.mg42.AMMO_MAX = 600
			self.mg42.stats.spread = 1
			self.mg42.stats.recoil = 10
			self.mg42.panic_suppression_chance = 1
			self.mg42.stats.suppression = 1
			self.mg42.stats.damage = 57
	
	--SNIPERS-------------------------------------------------------------------------------------------------------------------------------------------------
		
		--t4 snipers----------------------------------------------------------------
			
			--thanatos
			self.m95.stats_modifiers = {damage = 1}
			self.m95.stats.damage = 3500
			self.m95.AMMO_PICKUP = pickup.sniper.t4

		--t3 snipers----------------------------------------------------------------
		
			--nagant
			self.mosin.AMMO_PICKUP = pickup.sniper.t3
			
			--desertfox
			self.desertfox.AMMO_PICKUP = pickup.sniper.t3
			
			--r93
			self.r93.AMMO_PICKUP = pickup.sniper.t3
			
			--platypus
			self.model70.AMMO_PICKUP = pickup.sniper.t3
		
		--t2 snipers----------------------------------------------------------------
		
			--rattlesnake
			self.msr.AMMO_PICKUP = pickup.sniper.t2
			self.msr.fire_mode_data.fire_rate = 0.75
			self.msr.single.fire_rate = 0.75
			
			--repeater
			self.winchester1874.AMMO_PICKUP = pickup.sniper.t2
			self.winchester1874.fire_mode_data.fire_rate = 0.566
			self.winchester1874.single.fire_rate = 0.566
			
			--r700
			self.r700.AMMO_PICKUP = pickup.sniper.t2
			self.r700.fire_mode_data.fire_rate = 0.632
			self.r700.single.fire_rate = 0.632
		
		--t1 snipers----------------------------------------------------------------
		
			--lebensauger
			self.wa2000.AMMO_PICKUP = pickup.sniper.t1
			self.wa2000.stats.damage = 198
			
			--contractor
			self.tti.AMMO_PICKUP = pickup.sniper.t1
			self.tti.stats.damage = 198
			
			--grom
			self.siltstone.AMMO_PICKUP = pickup.sniper.t1
			self.siltstone.stats.damage = 198
			
			--bernetti rangehitter
			self.sbl.AMMO_PICKUP = pickup.sniper.t1
			self.sbl.AMMO_MAX = 40
			self.sbl.stats.damage = 198
			self.sbl.stats_modifiers = {damage = 1}
		
	--SMGs----------------------------------------------------------------------------------------------------------------------------------------------------
		
		--t3 smgs-------------------------------------------------------------------
			
			--tatonka
			self.coal.AMMO_PICKUP = pickup.smg.t3
			
			--krinkov
			self.akmsu.AMMO_PICKUP = pickup.smg.t3
			
			--jackal
			self.schakal.AMMO_PICKUP = pickup.smg.t3
			
			--mp40
			self.erma.AMMO_PICKUP = pickup.smg.t3
			
			--swedish k
			self.m45.AMMO_PICKUP = pickup.smg.t3
			
			--cr 805b
			self.hajk.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo tatonka
			self.x_coal.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo krinkov
			self.x_akmsu.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo jackal
			self.x_schakal.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo mp40
			self.x_erma.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo swedish k
			self.x_m45.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo cr 805b
			self.x_hajk.AMMO_PICKUP = pickup.smg.t3
			
		--t2 smgs-------------------------------------------------------------------
			
			--kobus
			self.p90.AMMO_PICKUP = pickup.smg.t2
			
			--para
			self.olympic.AMMO_PICKUP = pickup.smg.t2
			
			--specops
			self.mp7.AMMO_PICKUP = pickup.smg.t2
			
			--heather
			self.sr2.AMMO_PICKUP = pickup.smg.t2
			
			--kross vertex
			self.polymer.AMMO_PICKUP = pickup.smg.t2
			
			--jacket's piece
			self.cobray.AMMO_PICKUP = pickup.smg.t2
			
			--mark 10
			self.mac10.AMMO_PICKUP = pickup.smg.t2
			
			--typewriter
			self.m1928.AMMO_PICKUP = pickup.smg.t2
			
			--ak gen 21
			self.vityaz.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo kobus
			self.x_p90.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo para
			self.x_olympic.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo specops
			self.x_mp7.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo heather
			self.x_sr2.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo kross vertex
			self.x_polymer.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo jacket's piece
			self.x_cobray.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo mark 10
			self.x_mac10.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo typewriter
			self.x_m1928.AMMO_PICKUP = pickup.smg.t2
			
			--akimbo ak gen 21
			self.x_vityaz.AMMO_PICKUP = pickup.smg.t2
			
		--t1 smgs-------------------------------------------------------------------
			
			--micro uzi
			self.baka.AMMO_PICKUP = pickup.smg.t1
			
			--uzi
			self.uzi.AMMO_PICKUP = pickup.smg.t1
			
			--patchett
			self.sterling.AMMO_PICKUP = pickup.smg.t1
			
			--blaster
			self.tec9.AMMO_PICKUP = pickup.smg.t1
			
			--cmp
			self.mp9.AMMO_PICKUP = pickup.smg.t1
			
			--cobra
			self.scorpion.AMMO_PICKUP = pickup.smg.t1
			
			--compact-5
			self.new_mp5.AMMO_PICKUP = pickup.smg.t1
			
			--signature
			self.shepheard.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo micro uzi
			self.x_baka.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo uzi
			self.x_uzi.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo patchett
			self.x_sterling.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo blaster
			self.x_tec9.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo cmp
			self.x_mp9.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo cobra
			self.x_scorpion.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo compact-5
			self.x_mp5.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo signature
			self.x_shepheard.AMMO_PICKUP = pickup.smg.t1
			
	--PISTOLS-------------------------------------------------------------------------------------------------------------------------------------------------
		
		--t4 pistols----------------------------------------------------------------
			
			--peacemaker
			self.peacemaker.AMMO_PICKUP = pickup.pistol.t4
			self.peacemaker.AMMO_MAX = 36
			self.peacemaker.stats.damage = 230
			self.peacemaker.stats.recoil = 1
			self.peacemaker.fire_mode_data.fire_rate = 0.166
			self.peacemaker.single.fire_rate = 0.166
			self.peacemaker.armor_piercing_chance = 1
			
			--matever
			self.mateba.AMMO_PICKUP = pickup.pistol.t4
			self.mateba.AMMO_MAX = 48
			self.mateba.fire_mode_data.fire_rate = 0.166
			self.mateba.single.fire_rate = 0.166
			self.mateba.armor_piercing_chance = 1
			
			--castigo
			self.chinchilla.AMMO_PICKUP = pickup.pistol.t4
			self.chinchilla.AMMO_MAX = 48
			self.chinchilla.fire_mode_data.fire_rate = 0.166
			self.chinchilla.single.fire_rate = 0.166
			self.chinchilla.armor_piercing_chance = 1
			
			--bronco
			self.new_raging_bull.AMMO_PICKUP = pickup.pistol.t4
			self.new_raging_bull.AMMO_MAX = 48
			self.new_raging_bull.fire_mode_data.fire_rate = 0.166
			self.new_raging_bull.single.fire_rate = 0.166
			self.new_raging_bull.armor_piercing_chance = 1
			
			--deagle
			self.deagle.AMMO_PICKUP = pickup.pistol.t4
			self.deagle.AMMO_MAX = 30
			self.deagle.fire_mode_data.fire_rate = 0.2
			self.deagle.single.fire_rate = 0.2
			self.deagle.stats.damage = 176
			self.deagle.stats.spread = 18
			self.deagle.stats.recoil = 1
			self.deagle.armor_piercing_chance = 1
			
			--akimbo matever
			self.x_2006m.AMMO_PICKUP = pickup.pistol.t4
			self.x_2006m.AMMO_MAX = 48
			self.x_2006m.fire_mode_data.fire_rate = 0.166
			self.x_2006m.single.fire_rate = 0.166
			self.x_2006m.armor_piercing_chance = 1
			
			--akimbo castigo
			self.x_chinchilla.AMMO_PICKUP = pickup.pistol.t4
			self.x_chinchilla.AMMO_MAX = 48
			self.x_chinchilla.fire_mode_data.fire_rate = 0.166
			self.x_chinchilla.single.fire_rate = 0.166
			self.x_chinchilla.armor_piercing_chance = 1
			
			--akimbo bronco
			self.x_rage.AMMO_PICKUP = pickup.pistol.t4
			self.x_rage.AMMO_MAX = 48
			self.x_rage.fire_mode_data.fire_rate = 0.166
			self.x_rage.single.fire_rate = 0.166
			self.x_rage.armor_piercing_chance = 1
			
			--akimbo deagle
			self.x_deagle.AMMO_PICKUP = pickup.pistol.t4
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
			
			--parabellum
			self.breech.AMMO_PICKUP = pickup.pistol.t3
			self.breech.stats.damage = 121
			self.breech.fire_mode_data.fire_rate = 0.25
			self.breech.single.fire_rate = 0.25
			
			--baby deagle
			self.sparrow.AMMO_PICKUP = pickup.pistol.t3
			
			--5/7
			self.lemming.AMMO_PICKUP = pickup.pistol.t3
			self.lemming.can_shoot_through_enemy = nil
			self.lemming.can_shoot_through_shield = nil
			self.lemming.can_shoot_through_wall = nil
			
			--frenchman model 87
			self.model3.AMMO_PICKUP = pickup.pistol.t3
			self.model3.stats.damage = 135
			
			--crosskill chunky
			self.m1911.AMMO_PICKUP = pickup.pistol.t3
			-- self.m1911.stats.damage = 120
			
			--akimbo white streak
			self.x_pl14.AMMO_PICKUP = pickup.pistol.t3
			self.x_pl14.AMMO_MAX = 60
			
			--akimbo baby deagle
			self.x_sparrow.AMMO_PICKUP = pickup.pistol.t3
			self.x_sparrow.AMMO_MAX = 60
			
			--akimbo parabellum
			self.x_breech.AMMO_PICKUP = pickup.pistol.t3
			self.x_breech.AMMO_MAX = 56
			self.x_breech.stats.damage = 121
			self.x_breech.fire_mode_data.fire_rate = 0.25
			self.x_breech.single.fire_rate = 0.25
			
			--akimbo frenchman model 87
			self.x_model3.AMMO_PICKUP = pickup.pistol.t3
			self.x_model3.AMMO_MAX = self.model3.AMMO_MAX
			self.x_model3.stats.damage = 135
			
			--crosskill chunky
			self.x_m1911.AMMO_PICKUP = pickup.pistol.t3
			self.x_m1911.AMMO_MAX = self.x_m1911.AMMO_MAX
			-- self.x_m1911.stats.damage = 120
			
		--t2 pistols----------------------------------------------------------------
			
			--chimano custom
			self.g22c.AMMO_PICKUP = pickup.pistol.t2
			self.g22c.AMMO_MAX = 80
			
			--crosskill
			self.colt_1911.AMMO_PICKUP = pickup.pistol.t2
			self.colt_1911.AMMO_MAX = 80
			
			--broomstick
			self.c96.AMMO_PICKUP = pickup.pistol.t2
			self.c96.AMMO_MAX = 80
			
			--interceptor
			self.usp.AMMO_PICKUP = pickup.pistol.t2
			self.usp.AMMO_MAX = 78
			
			--signature .40
			self.p226.AMMO_PICKUP = pickup.pistol.t2
			self.p226.AMMO_MAX = 72
			
			--leo
			self.hs2000.AMMO_PICKUP = pickup.pistol.t2
			self.hs2000.AMMO_MAX = 76
			
			--contractor
			self.packrat.AMMO_PICKUP = pickup.pistol.t2
			self.packrat.AMMO_MAX = 75
			
			--igor automatik pistol
			self.stech.AMMO_PICKUP = pickup.pistol.t2
			self.stech.AMMO_MAX = 80
			
			--holt 9mm
			self.holt.AMMO_PICKUP = pickup.pistol.t2
			self.holt.AMMO_MAX = 75
			
			--akimbo chimano custom
			self.x_g22c.AMMO_PICKUP = pickup.pistol.t2
			self.x_g22c.AMMO_MAX = self.g22c.AMMO_MAX
			
			--akimbo crosskill
			self.x_1911.AMMO_PICKUP = pickup.pistol.t2
			self.x_1911.AMMO_MAX = self.colt_1911.AMMO_MAX
			
			--akimbo broomstick
			self.x_c96.AMMO_PICKUP = pickup.pistol.t2
			self.x_c96.AMMO_MAX = self.c96.AMMO_MAX
			
			--akimbo interceptor
			self.x_usp.AMMO_PICKUP = pickup.pistol.t2
			self.x_usp.AMMO_MAX = self.usp.AMMO_MAX
			
			--akimbo signature .40
			self.x_p226.AMMO_PICKUP = pickup.pistol.t2
			self.x_p226.AMMO_MAX = self.p226.AMMO_MAX
			
			--akimbo leo
			self.x_hs2000.AMMO_PICKUP = pickup.pistol.t2
			self.x_hs2000.AMMO_MAX = self.hs2000.AMMO_MAX
			
			--akimbo contractor
			self.x_packrat.AMMO_PICKUP = pickup.pistol.t2
			self.x_hs2000.AMMO_MAX = self.packrat.AMMO_MAX
			
			--akimbo igor automatik pistol
			self.x_stech.AMMO_PICKUP = pickup.pistol.t2
			self.x_stech.AMMO_MAX = self.stech.AMMO_MAX
			
			--holt 9mm
			self.x_holt.AMMO_PICKUP = pickup.pistol.t2
			self.x_holt.AMMO_MAX = self.holt.AMMO_MAX
			
		--t1 pistols----------------------------------------------------------------
			
			--chimano 88
			self.glock_17.AMMO_PICKUP = pickup.pistol.t1
			self.glock_17.AMMO_MAX = 119
			
			--chimano compact
			self.g26.AMMO_PICKUP = pickup.pistol.t1
			self.g26.AMMO_MAX = 120
			
			--bernetti
			self.b92fs.AMMO_PICKUP = pickup.pistol.t1
			self.b92fs.AMMO_MAX = 112
			
			--stryk
			self.glock_18c.AMMO_PICKUP = pickup.pistol.t1
			self.glock_18c.AMMO_MAX = 120
			
			--gruber kurz
			self.ppk.AMMO_PICKUP = pickup.pistol.t1
			self.ppk.AMMO_MAX = 112
			
			--m13
			self.legacy.AMMO_PICKUP = pickup.pistol.t1
			self.legacy.AMMO_MAX = 117
			
			--crosskill guard
			self.shrew.AMMO_PICKUP = pickup.pistol.t1
			self.shrew.AMMO_MAX = 119
			
			--czech 92 pistol
			self.czech.AMMO_PICKUP = pickup.pistol.t1
			self.czech.AMMO_MAX = 120
			
			--bernetti auto pistol
			self.beer.AMMO_PICKUP = pickup.pistol.t1
			self.beer.AMMO_MAX = 120
			
			--akimbo chimano 88
			self.x_g17.AMMO_PICKUP = pickup.pistol.t1
			self.x_g17.AMMO_MAX = self.glock_17.AMMO_MAX
			
			--akimbo chimano compact
			self.jowi.AMMO_PICKUP = pickup.pistol.t1
			self.jowi.AMMO_MAX = self.g26.AMMO_MAX
			self.jowi.fire_mode_data.fire_rate = self.g26.fire_mode_data.fire_rate
			self.jowi.single.fire_rate = self.g26.single.fire_rate
			
			--akimbo bernetti
			self.x_b92fs.AMMO_PICKUP = pickup.pistol.t1
			self.x_b92fs.AMMO_MAX = self.b92fs.AMMO_MAX
			self.x_b92fs.fire_mode_data.fire_rate = self.b92fs.fire_mode_data.fire_rate
			self.x_b92fs.single.fire_rate = self.b92fs.single.fire_rate
			
			--akimbo stryk
			self.x_g18c.AMMO_PICKUP = pickup.pistol.t1
			self.x_g18c.AMMO_MAX = self.glock_18c.AMMO_MAX
			
			--akimbo gruber kurz
			self.x_ppk.AMMO_PICKUP = pickup.pistol.t1
			self.x_ppk.AMMO_MAX = self.ppk.AMMO_MAX
			
			--akimbo m13
			self.x_legacy.AMMO_PICKUP = pickup.pistol.t1
			self.x_legacy.AMMO_MAX = self.legacy.AMMO_MAX
			
			--akimbo crosskill guard
			self.x_shrew.AMMO_PICKUP = pickup.pistol.t1
			self.x_shrew.AMMO_MAX = self.shrew.AMMO_MAX
			self.x_shrew.fire_mode_data.fire_rate = self.shrew.fire_mode_data.fire_rate
			self.x_shrew.single.fire_rate = self.shrew.single.fire_rate
			
			--akimbo czech 92 pistol
			self.x_czech.AMMO_PICKUP = pickup.pistol.t1
			self.x_czech.AMMO_MAX = self.czech.AMMO_MAX
			
			--akimbo bernetti auto pistols
			self.x_beer.AMMO_PICKUP = pickup.pistol.t1
			self.x_beer.AMMO_MAX = self.beer.AMMO_MAX
			
	--GLs
		
		--t2 gls--------------------------------------------------------------------
			
			--gl40
			self.gre_m79.AMMO_PICKUP = pickup.gl.t2
			
			--piglet
			self.m32.AMMO_PICKUP = pickup.gl.t2
			
			--china puff
			self.china.AMMO_PICKUP = pickup.gl.t2
			
			--compact 40
			self.slap.AMMO_PICKUP = pickup.gl.t2
			
		--t1 gls--------------------------------------------------------------------
			
			--arbiter
			self.arbiter.AMMO_PICKUP = pickup.gl.t1
			self.arbiter.stats.damage = 54
			
end)
