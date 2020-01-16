local original_init = WeaponTweakData.init
function WeaponTweakData:init(tweak_data)
	original_init(self, tweak_data)

	local SELECTION = {
		SECONDARY = 1,
		PRIMARY = 2,
		UNDERBARREL = 3
	}

	self.stats.damage = {}
	for i = 1, 10000 do
		self.stats.damage[i] = i / 10
	end
	
	--Thanatos Rework
	self.m95.stats_modifiers = {damage = 85}
	self.m95.AMMO_PICKUP = {0,0.39}
	self.m95.AMMO_MAX = 5
	
	--Vulcan Minigun Rework
	self.m134.AMMO_MAX = 750
	self.m134.CLIP_AMMO_MAX = 984
	self.m134.AMMO_PICKUP = {0.5,1.5}
	self.m134.can_shoot_through_enemy = true
	self.m134.can_shoot_through_shield = true
	self.m134.stats.damage = 80
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
	self.shuno.CLIP_AMMO_MAX = 984
	self.shuno.AMMO_MAX = 750
	self.shuno.AMMO_PICKUP = {15, 30}
	self.shuno.stats.damage = 32
	self.shuno.stats.spread = 8
	self.shuno.stats.spread_moving = 8
	self.shuno.stats.recoil = 12
	self.shuno.stats.concealment = 7
	
	--ammo pickup
	local pickup = {
		assault = {
			t1 = {1.851,3.704},
			t2 = {4.444,8.889},
			t3 = {7.407,11.111},
			t4 = {11.111,22.222}
		},
		shotgun = {
			t1 = {0.296,1.11},
			t2 = {0.37,1.48},
			t3 = {3.185,4.96},
			t4 = {3.48,5.41},
			t5 = {5.185,7.78}
		},
		lmg = {
			t1 = {1.851,7.407},
			t2 = {7.407,11.111}
		},
		sniper = {
			t1 = {0.7,1},
			t2 = {1,2},
			t3 = {2,3}
		},
		smg = {
			t1 = {1.851,5.556},
			t2 = {3.704,8.333},
			t3 = {5.556,16.667}
		},
		pistol = {
			t1 = {0.5,2},
			t2 = {1,3},
			t3 = {2,5},
			t4 = {3,6}
		},
		gl = {
			t1 = {0,0.667},
			t2 = {0,0.815}
		}
	}
	
	--SHOTGUNS
	
		--t1 shotguns---------------------------------------------------------------
		
			--mosconi
			self.huntsman.AMMO_PICKUP = pickup.shotgun.t1
			
			--joceline
			self.b682.AMMO_PICKUP = pickup.shotgun.t1
			
			--breaker
			self.boot.AMMO_PICKUP = pickup.shotgun.t1
			
			--akimbo judge
			self.x_judge.AMMO_PICKUP = pickup.shotgun.t1
			self.x_judge.fire_mode_data.fire_rate = 0.166
			self.X_judge.single.fire_rate = 0.166
			
			--judge
			self.judge.AMMO_PICKUP = pickup.shotgun.t1
			self.judge.fire_mode_data.fire_rate = 0.166
			self.judge.single.fire_rate = 0.166
			
			--gsps
			self.m37.AMMO_PICKUP = pickup.shotgun.t1
			
			--claire
			self.coach.AMMO_PICKUP = pickup.shotgun.t1
		
		--t2 shotguns----------------------------------------------------------------
		
			--raven
			self.ksg.AMMO_PICKUP = pickup.shotgun.t2
			
			--reinfeld
			self.r870.AMMO_PICKUP = pickup.shotgun.t2
			
			--locomotive
			self.serbu.AMMO_PICKUP = pickup.shotgun.t2
		
		--t3 shotguns----------------------------------------------------------------
		
			--predator
			self.spas12.AMMO_PICKUP = pickup.shotgun.t3
			
			--m1014
			self.benelli.AMMO_PICKUP = pickup.shotgun.t3
			
			--street sweeper
			self.striker.AMMO_PICKUP = pickup.shotgun.t3
			self.striker.stats.damage = 55
		
		--t4 shotguns----------------------------------------------------------------
		
			--izhma
			self.saiga.AMMO_PICKUP = pickup.shotgun.t4
			
			--steakout
			self.aa12.AMMO_PICKUP = pickup.shotgun.t4
			
			--akimbo goliath
			self.x_rota.AMMO_PICKUP = pickup.shotgun.t4
			
			--goliath
			self.rota.AMMO_PICKUP = pickup.shotgun.t4
		
		--t5 shotguns----------------------------------------------------------------
		
			--brothers grimm
			self.x_basset.AMMO_PICKUP = pickup.shotgun.t5
			
			--grimm
			self.basset.AMMO_PICKUP = pickup.shotgun.t5
	
	--ASSAULT RIFLES
	
		--t1 assault rifles---------------------------------------------------------
		
			--cavity
			self.sub2000.AMMO_PICKUP = pickup.assault.t1
			
			--m308
			self.new_m14.AMMO_PICKUP = pickup.assault.t1
			
			--galant
			self.ching.AMMO_PICKUP = pickup.assault.t1
		
		--t2 assault rifles---------------------------------------------------------
		
			--eagle
			self.scar.AMMO_PICKUP = pickup.assault.t2
			self.scar.AMMO_MAX = 160
			self.scar.stats.concealment = 1
			
			--falcon
			self.fal.AMMO_PICKUP = pickup.assault.t2
			self.fal.AMMO_MAX = 160
			self.fal.stats.concealment = 1 -10
			
			--ak.762
			self.akm.AMMO_PICKUP = pickup.assault.t2
			self.akm.AMMO_MAX = 150
			self.akm.stats.concealment = 1
			
			--golden ak.762
			self.akm_gold.AMMO_PICKUP = pickup.assault.t2
			self.akm_gold.AMMO_MAX = 150
			self.akm_gold.stats.concealment = 1
			
			--amr-16
			self.m16.AMMO_PICKUP = pickup.assault.t2
			self.m16.AMMO_MAX = 150
			self.m16.stats.concealment = 2
			
			--ak17
			self.flint.AMMO_PICKUP = pickup.assault.t2
			self.flint.AMMO_MAX = 175
			self.flint.stats.concealment = 1
			
			--gewehr
			self.g3.AMMO_PICKUP = pickup.assault.t2
			self.g3.AMMO_MAX = 160
			self.g3.stats.concealment = 1
		
		--t3 assault rifles---------------------------------------------------------
		
			--little friend
			self.contraband.CLIP_AMMO_MAX = 30
			self.contraband.AMMO_MAX = 120
			self.contraband.AMMO_PICKUP = pickup.assault.t3
			self.contraband.FIRE_MODE = "auto"
			self.contraband.CAN_TOGGLE_FIREMODE = true
			self.contraband.stats.damage = 58
			self.contraband.stats.concealment = 1
			
			self.contraband_m203.categories = {
				"grenade_launcher",
				"assault_rifle"
				}
			
			--gecko
			self.galil.AMMO_PICKUP = pickup.assault.t3
			self.galil.AMMO_MAX = 240
			self.galil.stats.concealment = 1
			
			--car-4
			self.new_m4.AMMO_PICKUP = pickup.assault.t3
			self.new_m4.AMMO_MAX = 240
			self.new_m4.stats.concealment = -1
			
			--queen's wrath
			self.l85a2.AMMO_PICKUP = pickup.assault.t3
			self.l85a2.AMMO_MAX = 240
			self.l85a2.stats.concealment = 1
			
			--ak5
			self.ak5.AMMO_PICKUP = pickup.assault.t3
			self.ak5.AMMO_MAX = 240
			self.ak5.stats.concealment = 1
			
			--lion's roar
			self.vhs.AMMO_PICKUP = pickup.assault.t3
			self.vhs.AMMO_MAX = 240
			self.vhs.stats.concealment = 2
			
			--ak
			self.ak74.AMMO_PICKUP = pickup.assault.t3
			self.ak74.AMMO_MAX = 240
			self.ak74.stats.concealment = 2
			
			--uar
			self.aug.AMMO_PICKUP = pickup.assault.t3
			self.aug.AMMO_MAX = 240
			self.aug.stats.concealment = 3
			
			--tempest
			self.komodo.AMMO_PICKUP = pickup.assault.t3
			self.komodo.AMMO_MAX = 240
			self.komodo.stats.concealment = 4
			
			--union
			self.corgi.AMMO_PICKUP = pickup.assault.t3
			self.corgi.AMMO_MAX = 240
			self.corgi.stats.concealment = 1
		
		--t4 assault rifles---------------------------------------------------------
		
			--amcar
			self.amcar.AMMO_PICKUP = pickup.assault.t4
			self.amcar.AMMO_MAX = 360
			self.amcar.stats.concealment = 6
			
			--commando
			self.s552.AMMO_PICKUP = pickup.assault.t4
			self.s552.AMMO_MAX = 360
			self.s552.stats.concealment = 3
			
			--jp36
			self.g36.AMMO_PICKUP = pickup.assault.t4
			self.g36.AMMO_MAX = 360
			self.g36.stats.concealment = 4
			
			--clarion
			self.famas.AMMO_PICKUP = pickup.assault.t4
			self.famas.AMMO_MAX = 360
			self.famas.stats.concealment = 3
			
			--valkyria
			self.asval.AMMO_PICKUP = pickup.assault.t4
			self.asval.AMMO_MAX = 360
			self.asval.stats.concealment = 3
			
			--bootleg
			self.tecci.AMMO_PICKUP = pickup.assault.t4
			self.tecci.AMMO_MAX = 300
			self.tecci.stats.concealment = 4
	
	--LMGs
	
		--t1 lmgs-------------------------------------------------------------------
		
			--rpk
			self.rpk.AMMO_PICKUP = pickup.lmg.t1
			
			--brenner
			self.hk21.AMMO_PICKUP = pickup.lmg.t1
		
		--t2 lmgs-------------------------------------------------------------------
		
			--ksp
			self.m249.AMMO_PICKUP = pickup.lmg.t2
			
			--ksp 58
			-- self.par.timers.reload_not_empty = 5.62
			-- self.par.timers.reload_empty = 5.62
			self.par.stats.recoil = 10
			self.par.AMMO_PICKUP = pickup.lmg.t2
			
			--buzzsaw
			self.mg42.AMMO_PICKUP = pickup.lmg.t2
	
	--SNIPERS
		
		--t1 snipers----------------------------------------------------------------
		
			--nagant
			self.mosin.AMMO_PICKUP = pickup.sniper.t1
			
			--desertfox
			self.desertfox.AMMO_PICKUP = pickup.sniper.t1
			
			--r93
			self.r93.AMMO_PICKUP = pickup.sniper.t1
			
			--platypus
			self.model70.AMMO_PICKUP = pickup.sniper.t1
		
		--t2 snipers----------------------------------------------------------------
		
			--rattlesnake
			self.msr.AMMO_PICKUP = pickup.sniper.t2
			
			--repeater
			self.winchester1874.AMMO_PICKUP = pickup.sniper.t2
		
		--t3 snipers----------------------------------------------------------------
		
			--lebensauger
			self.wa2000.AMMO_PICKUP = pickup.sniper.t3
			
			--contractor
			self.tti.AMMO_PICKUP = pickup.sniper.t3
			
			--grom
			self.siltstone.AMMO_PICKUP = pickup.sniper.t3
		
	--SMGs
		
		--t1 smgs-------------------------------------------------------------------
			
			--tatonka
			self.coal.AMMO_PICKUP = pickup.smg.t1
			
			--krinkov
			self.akmsu.AMMO_PICKUP = pickup.smg.t1
			
			--jackal
			self.schakal.AMMO_PICKUP = pickup.smg.t1
			
			--mp40
			self.erma.AMMO_PICKUP = pickup.smg.t1
			
			--swedish k
			self.m45.AMMO_PICKUP = pickup.smg.t1
			
			--cr 805b
			self.hajk.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo tatonka
			self.x_coal.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo krinkov
			self.x_akmsu.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo jackal
			self.x_schakal.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo mp40
			self.x_erma.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo swedish k
			self.x_m45.AMMO_PICKUP = pickup.smg.t1
			
			--akimbo cr 805b
			self.x_hajk.AMMO_PICKUP = pickup.smg.t1
			
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
			
		--t3 smgs-------------------------------------------------------------------
			
			--micro uzi
			self.baka.AMMO_PICKUP = pickup.smg.t3
			
			--uzi
			self.uzi.AMMO_PICKUP = pickup.smg.t3
			
			--patchett
			self.sterling.AMMO_PICKUP = pickup.smg.t3
			
			--blaster
			self.tec9.AMMO_PICKUP = pickup.smg.t3
			
			--cmp
			self.mp9.AMMO_PICKUP = pickup.smg.t3
			
			--cobra
			self.scorpion.AMMO_PICKUP = pickup.smg.t3
			
			--compact-5
			self.new_mp5.AMMO_PICKUP = pickup.smg.t3
			
			--signature
			self.shepheard.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo micro uzi
			self.x_baka.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo uzi
			self.x_uzi.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo patchett
			self.x_sterling.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo blaster
			self.x_tec9.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo cmp
			self.x_mp9.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo cobra
			self.x_scorpion.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo compact-5
			self.x_mp5.AMMO_PICKUP = pickup.smg.t3
			
			--akimbo signature
			self.x_shepheard.AMMO_PICKUP = pickup.smg.t3
			
	--PISTOLS
		
		--t1 pistols----------------------------------------------------------------
			
			--peacemaker
			self.peacemaker.AMMO_PICKUP = pickup.pistol.t1
			
			--matever
			self.mateba.AMMO_PICKUP = pickup.pistol.t1
			
			--castigo
			self.chinchilla.AMMO_PICKUP = pickup.pistol.t1
			
			--bronco
			self.new_raging_bull.AMMO_PICKUP = pickup.pistol.t1
			
			--parabellum
			self.breech.AMMO_PICKUP = pickup.pistol.t1
			
			--akimbo matever
			self.x_2006m.AMMO_PICKUP = pickup.pistol.t1
			
			--akimbo castigo
			self.x_chinchilla.AMMO_PICKUP = pickup.pistol.t1
			
			--akimbo bronco
			self.x_rage.AMMO_PICKUP = pickup.pistol.t1
			
			--akimbo parabellum
			self.x_breech.AMMO_PICKUP = pickup.pistol.t1
			
		--t2 pistols----------------------------------------------------------------
			
			--white streak
			self.pl14.AMMO_PICKUP = pickup.pistol.t2
			
			--deagle
			self.deagle.AMMO_PICKUP = pickup.pistol.t2
			
			--baby deagle
			self.sparrow.AMMO_PICKUP = pickup.pistol.t2
			
			--5/7
			self.lemming.AMMO_PICKUP = pickup.pistol.t2
			
			--akimbo white streak
			self.x_pl14.AMMO_PICKUP = pickup.pistol.t2
			
			--akimbo deagle
			self.x_deagle.AMMO_PICKUP = pickup.pistol.t2
			
			--akimbo baby deagle
			self.x_sparrow.AMMO_PICKUP = pickup.pistol.t2
			
		--t3 pistols----------------------------------------------------------------
			
			--chimano custom
			self.g22c.AMMO_PICKUP = pickup.pistol.t3
			
			--crosskill
			self.colt_1911.AMMO_PICKUP = pickup.pistol.t3
			
			--broomstick
			self.c96.AMMO_PICKUP = pickup.pistol.t3
			
			--interceptor
			self.usp.AMMO_PICKUP = pickup.pistol.t3
			
			--signature .40
			self.p226.AMMO_PICKUP = pickup.pistol.t3
			
			--leo
			self.hs2000.AMMO_PICKUP = pickup.pistol.t3
			
			--contractor
			self.packrat.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo chimano custom
			self.x_g22c.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo crosskill
			self.x_1911.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo broomstick
			self.x_c96.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo interceptor
			self.x_usp.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo signature .40
			self.x_p226.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo leo
			self.x_hs2000.AMMO_PICKUP = pickup.pistol.t3
			
			--akimbo contractor
			self.x_packrat.AMMO_PICKUP = pickup.pistol.t3
			
		--t4 pistols----------------------------------------------------------------
			
			--chimano 88
			self.glock_17.AMMO_PICKUP = pickup.pistol.t4
			
			--chimano compact
			self.g26.AMMO_PICKUP = pickup.pistol.t4
			
			--bernetti
			self.b92fs.AMMO_PICKUP = pickup.pistol.t4
			
			--stryk
			self.glock_18c.AMMO_PICKUP = pickup.pistol.t4
			
			--gruber kurz
			self.ppk.AMMO_PICKUP = pickup.pistol.t4
			
			--m13
			self.legacy.AMMO_PICKUP = pickup.pistol.t4
			
			--crosskill guard
			self.shrew.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo chimano 88
			self.x_g17.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo chimano compact
			self.jowi.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo bernetti
			self.x_b92fs.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo stryk
			self.x_g18c.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo gruber kurz
			self.x_ppk.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo m13
			self.x_legacy.AMMO_PICKUP = pickup.pistol.t4
			
			--akimbo crosskill guard
			self.x_shrew.AMMO_PICKUP = pickup.pistol.t4
			
	--GLs
		
		--t1 gls--------------------------------------------------------------------
			
			--gl40
			self.gre_m79.AMMO_PICKUP = pickup.gl.t1
			
			--piglet
			self.m32.AMMO_PICKUP = pickup.gl.t1
			
			--china puff
			self.china.AMMO_PICKUP = pickup.gl.t1
			
			--compact 40
			self.slap.AMMO_PICKUP = pickup.gl.t1
			
		--t2 gls--------------------------------------------------------------------
			
			--arbiter
			self.arbiter.AMMO_PICKUP = pickup.gl.t2
			self.arbiter.stats.damage = 50
			
end