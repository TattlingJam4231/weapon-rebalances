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

	--Rattlesnake Damage Buff
	self.msr.stats.damage = 129

	--Repeater Damage Buff
	self.winchester1874.stats.damage = 129
	
	--Thanatos Rework
	self.m95.stats_modifiers = {damage = 85}
	self.m95.AMMO_PICKUP = {0,0.39}
	self.m95.AMMO_MAX = 5
	
	--Little Friend Rifle Rework
	self.contraband.CLIP_AMMO_MAX = 30
	self.contraband.NR_CLIPS_MAX = 4
	self.contraband.AMMO_MAX = self.contraband.CLIP_AMMO_MAX * self.contraband.NR_CLIPS_MAX
	self.contraband.AMMO_PICKUP = {6,11}
	self.contraband.FIRE_MODE = "auto"
	self.contraband.CAN_TOGGLE_FIREMODE = true
	self.contraband.stats.damage = 58
	
	self.contraband_m203.categories = {
		"grenade_launcher",
		"assault_rifle"
		}
	self.contraband_m203.AMMO_MAX = 4
	
	--KSP 58 Buffs
	self.par.timers.reload_not_empty = 5.62
	self.par.timers.reload_empty = 5.62
	self.par.stats.recoil = 10
	
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
	self.m134.stats.concealment = 0
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
	
	--shotgun ammo pickup
	local pickup = {
		_155 = {0.296,1.11},
		_90 = {0.37,1.48},
		_55 = {3.185,4.96},
		_42 = {3.48,5.41},
		_18 = {5.185,7.78}
	}
	
	--155 damage shotguns---------------------------------------------------------------
	
	--mosconi
	self.huntsman.AMMO_PICKUP = pickup._155
	
	--joceline
	self.b682.AMMO_PICKUP = pickup._155
	
	--breaker
	self.boot.AMMO_PICKUP = pickup._155
	
	--akimbo judge
	self.x_judge.AMMO_PICKUP = pickup._155
	
	--judge
	self.judge.AMMO_PICKUP = pickup._155
	self.judge.fire_mode_data.fire_rate = 0.166
	self.judge.single.fire_rate = 0.166
	
	--gsps
	self.m37.AMMO_PICKUP = pickup._155
	
	--claire
	self.coach.AMMO_PICKUP = pickup._155
	
	--90 damage shotguns----------------------------------------------------------------
	
	--raven
	self.ksg.AMMO_PICKUP = pickup._90
	
	--reinfeld
	self.r870.AMMO_PICKUP = pickup._90
	
	--locomotive
	self.serbu.AMMO_PICKUP = pickup._90
	
	--55 damage shotguns----------------------------------------------------------------
	
	--predator
	self.spas12.AMMO_PICKUP = pickup._55
	
	--m1014
	self.benelli.AMMO_PICKUP = pickup._55
	
	--street sweeper
	self.striker.AMMO_PICKUP = pickup._55
	self.striker.stats.damage = 55
	
	--42 damage shotguns----------------------------------------------------------------
	
	--izhma
	self.saiga.AMMO_PICKUP = pickup._42
	
	--steakout
	self.aa12.AMMO_PICKUP = pickup._42
	
	--akimbo goliath
	self.x_rota.AMMO_PICKUP = pickup._42
	
	--goliath
	self.rota.AMMO_PICKUP = pickup._42
	
	--18 damage shotguns----------------------------------------------------------------
	
	--brothers grimm
	self.x_basset.AMMO_PICKUP = pickup._18
	
	--grimm
	self.basset.AMMO_PICKUP = pickup._18
end
