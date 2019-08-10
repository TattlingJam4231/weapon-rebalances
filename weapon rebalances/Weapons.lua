local original_init = WeaponTweakData.init
function WeaponTweakData:init(tweak_data)
original_init(self, tweak_data)

	local SELECTION = {
		SECONDARY = 1,
		PRIMARY = 2,
		UNDERBARREL = 3
	}

	self.stats.damage = {
			0.1,
			0.2,
			0.3,
			0.4,
			0.5,
			0.6,
			0.7,
			0.8,
			0.9,
			1,
			1.1,
			1.2,
			1.3,
			1.4,
			1.5,
			1.6,
			1.7,
			1.8,
			1.9,
			2,
			2.1,
			2.2,
			2.3,
			2.4,
			2.5,
			2.6,
			2.7,
			2.8,
			2.9,
			3,
			3.1,
			3.2,
			3.3,
			3.4,
			3.5,
			3.6,
			3.7,
			3.8,
			3.9,
			4,
			4.1,
			4.2,
			4.3,
			4.4,
			4.5,
			4.6,
			4.7,
			4.8,
			4.9,
			5,
			5.1,
			5.2,
			5.3,
			5.4,
			5.5,
			5.6,
			5.7,
			5.8,
			5.9,
			6,
			6.1,
			6.2,
			6.3,
			6.4,
			6.5,
			6.6,
			6.7,
			6.8,
			6.9,
			7,
			7.1,
			7.2,
			7.3,
			7.4,
			7.5,
			7.6,
			7.7,
			7.8,
			7.9,
			8,
			8.1,
			8.2,
			8.3,
			8.4,
			8.5,
			8.6,
			8.7,
			8.8,
			8.9,
			9,
			9.1,
			9.2,
			9.3,
			9.4,
			9.5,
			9.6,
			9.7,
			9.8,
			9.9,
			10,
			10.1,
			10.2,
			10.3,
			10.4,
			10.5,
			10.6,
			10.7,
			10.8,
			10.9,
			11,
			11.1,
			11.2,
			11.3,
			11.4,
			11.5,
			11.6,
			11.7,
			11.8,
			11.9,
			12,
			12.1,
			12.2,
			12.3,
			12.4,
			12.5,
			12.6,
			12.7,
			12.8,
			12.9,
			13,
			13.1,
			13.2,
			13.3,
			13.4,
			13.5,
			13.6,
			13.7,
			13.8,
			13.9,
			14,
			14.1,
			14.2,
			14.3,
			14.4,
			14.5,
			14.6,
			14.7,
			14.8,
			14.9,
			15,
			15.1,
			15.2,
			15.3,
			15.4,
			15.5,
			15.6,
			15.7,
			15.8,
			15.9,
			16,
			16.1,
			16.2,
			16.3,
			16.4,
			16.5,
			16.6,
			16.7,
			16.8,
			16.9,
			17,
			17.1,
			17.2,
			17.3,
			17.4,
			17.5,
			17.6,
			17.7,
			17.8,
			17.9,
			18,
			18.1,
			18.2,
			18.3,
			18.4,
			18.5,
			18.6,
			18.7,
			18.8,
			18.9,
			19,
			19.1,
			19.2,
			19.3,
			19.4,
			19.5,
			19.6,
			19.7,
			19.8,
			19.9,
			20,
			20.1,
			20.2,
			20.3,
			20.4,
			20.5,
			20.6,
			20.7,
			20.8,
			20.9,
			21,
			21.1,
			21.2,
			21.3,
			21.4,
			21.5,
			21.6,
			21.7,
			21.8,
			21.9,
			22,
			22.1,
			22.2,
			22.3,
			22.4,
			22.5,
			22.6,
			22.7,
			22.8,
			22.9,
			23,
			23.1,
			23.2,
			23.3,
			23.4,
			23.5,
			23.6,
			23.7,
			23.8,
			23.9,
			24,
			24.1,
			24.2,
			24.3,
			24.4,
			24.5,
			24.6,
			24.7,
			24.8,
			24.9,
			25,
			25.1,
			25.2,
			25.3,
			25.4,
			25.5,
			25.6,
			25.7,
			25.8,
			25.9,
			26,
			26.1,
			26.2,
			26.3,
			26.4,
			26.5,
			26.6,
			26.7,
			26.8,
			26.9,
			27,
			27.1,
			27.2,
			27.3,
			27.4,
			27.5,
			27.6,
			27.7,
			27.8,
			27.9,
			28,
			28.1,
			28.2,
			28.3,
			28.4,
			28.5,
			28.6,
			28.7,
			28.8,
			28.9,
			29,
			29.1,
			29.2,
			29.3,
			29.4,
			29.5,
			29.6,
			29.7,
			29.8,
			29.9,
			30,
			30.1,
			30.2,
			30.3,
			30.4,
			30.5,
			30.6,
			30.7,
			30.8,
			30.9,
			31,
			31.1,
			31.2,
			31.3,
			31.4,
			31.5,
			31.6,
			31.7,
			31.8,
			31.9,
			32,
			32.1,
			32.2,
			32.3,
			32.4,
			32.5,
			32.6,
			32.7,
			32.8,
			32.9,
			33,
			33.1,
			33.2,
			33.3,
			33.4,
			33.5,
			33.6,
			33.7,
			33.8,
			33.9,
			34,
			34.1,
			34.2,
			34.3,
			34.4,
			34.5,
			34.6,
			34.7,
			34.8,
			34.9,
			35,
			35.1,
			35.2,
			35.3,
			35.4,
			35.5,
			35.6,
			35.7,
			35.8,
			35.9,
			36,
			36.1,
			36.2,
			36.3,
			36.4,
			36.5,
			36.6,
			36.7,
			36.8,
			36.9,
			37,
			37.1,
			37.2,
			37.3,
			37.4,
			37.5,
			37.6,
			37.7,
			37.8,
			37.9,
			38,
			38.1,
			38.2,
			38.3,
			38.4,
			38.5,
			38.6,
			38.7,
			38.8,
			38.9,
			39,
			39.1,
			39.2,
			39.3,
			39.4,
			39.5,
			39.6,
			39.7,
			39.8,
			39.9,
			40
		}

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