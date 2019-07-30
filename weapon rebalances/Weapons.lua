local old_init = WeaponTweakData.init
function WeaponTweakData:init(tweak_data)
old_init(self, tweak_data)

local SELECTION = {
	SECONDARY = 1,
	PRIMARY = 2,
	UNDERBARREL = 3
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
	
	--Breaker 12G tweak
	self.boot.stats.damage = 78
	self.boot.stats_modifiers = {damage = 2}
	
	--Joceline O/U 12G tweak
	self.b682.stats.damage = 78
	self.b682.stats_modifiers = {damage = 2}
	
	--Mosconi 12G tweak
	self.huntsman.stats.damage = 78
	self.huntsman.stats_modifiers = {damage = 2}
	
	--Raven tweak
	self.ksg.stats.damage = 45
	self.ksg.stats_modifiers = {damage = 2}
	
	--Reinfeld 880 tweak
	self.r870.stats.damage = 45
	self.r870.stats_modifiers = {damage = 2}
	
	--M1014 tweak
	self.benelli.stats.damage = 28
	self.benelli.stats_modifiers = {damage = 2}
	
	--Predator 12G tweak
	self.spas12.stats.damage = 28
	self.spas12.stats_modifiers = {damage = 2}
	
	--IZHMA 12G tweak
	self.saiga.stats.damage = 21
	self.saiga.stats_modifiers = {damage = 2}
	
	--Steakout 12G
	self.aa12.stats.damage = 21
	self.aa12.stats_modifiers = {damage = 2}
	
	--GSPS 12G tweak
	self.m37.stats.damage = 78
	self.m37.stats_modifiers = {damage = 2}
	
	--Claire 12G tweak
	self.coach.stats.damage = 78
	self.coach.stats_modifiers = {damage = 2}
	
	--Judge tweak
	self.judge.stats.damage = 78
	self.judge.stats_modifiers = {damage = 2}
	
	--Akimbo Judge tweak
	self.x_judge.stats.damage = 78
	self.x_judge.stats_modifiers = {damage = 2}
	
	--Locomotive 12G tweak
	self.serbu.stats.damage = 45
	self.serbu.stats_modifiers = {damage = 2}
	
	--Goliath 12G tweak
	self.rota.stats.damage = 21
	self.rota.stats_modifiers = {damage = 2}
	
	--Akimbo Goliath 12G tweak
	self.x_rota.stats.damage = 21
	self.x_rota.stats_modifiers = {damage = 2}
	
	--Street Sweeper tweak
	self.striker.stats.damage = 21
	self.striker.stats_modifiers = {damage = 2}
	
	--Grimm 12G tweak
	self.basset.stats.damage = 9
	self.basset.stats_modifiers = {damage = 2}
	
	--Akimbo Grimm 12G tweak
	self.x_basset.stats.damage = 9
	self.x_basset.stats_modifiers = {damage = 2}
	
end
