local original_init = BlackMarketTweakData._init_melee_weapons

function BlackMarketTweakData:_init_melee_weapons(tweak_data)
	original_init(self, tweak_data)
	-- 30		|	30
		--[[ self.melee_weapons.weapon = {
			name_id = "bm_melee_weapon",
			type = "weapon",
			unit = nil,
			animation = nil,
			instant = true,
			free = true,
			expire_t = 0.6,
			repeat_expire_t = 0.6,
			stats = {
				min_damage = 3,
				max_damage = 3,
				min_damage_effect = 1,
				max_damage_effect = 1,
				charge_time = 0,
				range = 150,
				weapon_type = "blunt"
			},
			sounds = {
				hit_body = "melee_hit_body",
				hit_gen = "melee_hit_gen"
			}
		} ]]

	-- 30/120	|	30/120
		local stats = {
			melee_damage_delay = 0.1,
			repeat_expire_t = 0.25,
			expire_t = 0.6,
			min_damage = 3,
			max_damage = 12,
			min_damage_effect = 1,
			max_damage_effect = 1,
			charge_time = 0.5,
			range = 185,
			concealment = 30 
		}

		-- Ursa Tanto Knife
		self.melee_weapons.kabartanto.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.kabartanto.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.kabartanto.expire_t = stats.expire_t
		self.melee_weapons.kabartanto.stats.min_damage = stats.min_damage
		self.melee_weapons.kabartanto.stats.max_damage = stats.max_damage
		self.melee_weapons.kabartanto.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.kabartanto.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.kabartanto.stats.charge_time = stats.charge_time
		self.melee_weapons.kabartanto.stats.range = stats.range
		self.melee_weapons.kabartanto.stats.concealment = stats.concealment

		-- Nova's Shank
		self.melee_weapons.toothbrush.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.toothbrush.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.toothbrush.expire_t = stats.expire_t
		self.melee_weapons.toothbrush.stats.min_damage = stats.min_damage
		self.melee_weapons.toothbrush.stats.max_damage = stats.max_damage
		self.melee_weapons.toothbrush.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.toothbrush.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.toothbrush.stats.charge_time = stats.charge_time
		self.melee_weapons.toothbrush.stats.range = stats.range
		self.melee_weapons.toothbrush.stats.concealment = stats.concealment

		-- URSA Knife
		self.melee_weapons.kabar.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.kabar.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.kabar.expire_t = stats.expire_t
		self.melee_weapons.kabar.stats.min_damage = stats.min_damage
		self.melee_weapons.kabar.stats.max_damage = stats.max_damage
		self.melee_weapons.kabar.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.kabar.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.kabar.stats.charge_time = stats.charge_time
		self.melee_weapons.kabar.stats.range = stats.range
		self.melee_weapons.kabar.stats.concealment = stats.concealment

		-- Tactical Flashlight
		self.melee_weapons.aziz.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.aziz.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.aziz.expire_t = stats.expire_t
		self.melee_weapons.aziz.stats.min_damage = stats.min_damage
		self.melee_weapons.aziz.stats.max_damage = stats.max_damage
		self.melee_weapons.aziz.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.aziz.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.aziz.stats.charge_time = stats.charge_time
		self.melee_weapons.aziz.stats.range = stats.range
		self.melee_weapons.aziz.stats.concealment = stats.concealment

		-- Alabama Razor
		self.melee_weapons.clean.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.clean.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.clean.expire_t = stats.expire_t
		self.melee_weapons.clean.stats.min_damage = stats.min_damage
		self.melee_weapons.clean.stats.max_damage = stats.max_damage
		self.melee_weapons.clean.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.clean.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.clean.stats.charge_time = stats.charge_time
		self.melee_weapons.clean.stats.range = stats.range
		self.melee_weapons.clean.stats.concealment = stats.concealment

		-- The Motherforker	
		self.melee_weapons.fork.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.fork.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.fork.expire_t = stats.expire_t
		self.melee_weapons.fork.stats.min_damage = stats.min_damage
		self.melee_weapons.fork.stats.max_damage = stats.max_damage
		self.melee_weapons.fork.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.fork.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.fork.stats.charge_time = stats.charge_time
		self.melee_weapons.fork.stats.range = stats.range
		self.melee_weapons.fork.stats.concealment = stats.concealment

		-- Shawn's Shears
		self.melee_weapons.shawn.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.shawn.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.shawn.expire_t = stats.expire_t
		self.melee_weapons.shawn.stats.min_damage = stats.min_damage
		self.melee_weapons.shawn.stats.max_damage = stats.max_damage
		self.melee_weapons.shawn.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.shawn.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.shawn.stats.charge_time = stats.charge_time
		self.melee_weapons.shawn.stats.range = stats.range
		self.melee_weapons.shawn.stats.concealment = stats.concealment

		-- Utility Knife
		self.melee_weapons.boxcutter.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.boxcutter.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.boxcutter.expire_t = stats.expire_t
		self.melee_weapons.boxcutter.stats.min_damage = stats.min_damage
		self.melee_weapons.boxcutter.stats.max_damage = stats.max_damage
		self.melee_weapons.boxcutter.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.boxcutter.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.boxcutter.stats.charge_time = stats.charge_time
		self.melee_weapons.boxcutter.stats.range = stats.range
		self.melee_weapons.boxcutter.stats.concealment = stats.concealment

		-- Bayonet Knife
		self.melee_weapons.bayonet.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.bayonet.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.bayonet.expire_t = stats.expire_t
		self.melee_weapons.bayonet.stats.min_damage = stats.min_damage
		self.melee_weapons.bayonet.stats.max_damage = stats.max_damage
		self.melee_weapons.bayonet.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.bayonet.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.bayonet.stats.charge_time = stats.charge_time
		self.melee_weapons.bayonet.stats.range = stats.range
		self.melee_weapons.bayonet.stats.concealment = stats.concealment

		-- Machete
		self.melee_weapons.gator.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.gator.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.gator.expire_t = stats.expire_t
		self.melee_weapons.gator.stats.min_damage = stats.min_damage
		self.melee_weapons.gator.stats.max_damage = stats.max_damage
		self.melee_weapons.gator.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.gator.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.gator.stats.charge_time = stats.charge_time
		self.melee_weapons.gator.stats.range = stats.range
		self.melee_weapons.gator.stats.concealment = stats.concealment

		-- The Pen
		self.melee_weapons.sword.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.sword.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.sword.expire_t = stats.expire_t
		self.melee_weapons.sword.stats.min_damage = stats.min_damage
		self.melee_weapons.sword.stats.max_damage = stats.max_damage
		self.melee_weapons.sword.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.sword.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.sword.stats.charge_time = stats.charge_time
		self.melee_weapons.sword.stats.range = stats.range
		self.melee_weapons.sword.stats.concealment = stats.concealment

		-- Stainless Steel Syringe
		self.melee_weapons.fear.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.fear.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.fear.expire_t = stats.expire_t
		self.melee_weapons.fear.stats.min_damage = stats.min_damage
		self.melee_weapons.fear.stats.max_damage = stats.max_damage
		self.melee_weapons.fear.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.fear.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.fear.stats.charge_time = stats.charge_time
		self.melee_weapons.fear.stats.range = stats.range
		self.melee_weapons.fear.stats.concealment = stats.concealment

		-- Specialist Knives
		self.melee_weapons.ballistic.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.ballistic.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.ballistic.expire_t = stats.expire_t
		self.melee_weapons.ballistic.stats.min_damage = stats.min_damage
		self.melee_weapons.ballistic.stats.max_damage = stats.max_damage
		self.melee_weapons.ballistic.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.ballistic.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.ballistic.stats.charge_time = stats.charge_time
		self.melee_weapons.ballistic.stats.range = stats.range
		self.melee_weapons.ballistic.stats.concealment = stats.concealment

		-- Diving Knife
		self.melee_weapons.pugio.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.pugio.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.pugio.expire_t = stats.expire_t
		self.melee_weapons.pugio.stats.min_damage = stats.min_damage
		self.melee_weapons.pugio.stats.max_damage = stats.max_damage
		self.melee_weapons.pugio.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.pugio.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.pugio.stats.charge_time = stats.charge_time
		self.melee_weapons.pugio.stats.range = stats.range
		self.melee_weapons.pugio.stats.concealment = stats.concealment

		-- Krieger Blade
		self.melee_weapons.kampfmesser.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.kampfmesser.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.kampfmesser.expire_t = stats.expire_t
		self.melee_weapons.kampfmesser.stats.min_damage = stats.min_damage
		self.melee_weapons.kampfmesser.stats.max_damage = stats.max_damage
		self.melee_weapons.kampfmesser.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.kampfmesser.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.kampfmesser.stats.charge_time = stats.charge_time
		self.melee_weapons.kampfmesser.stats.range = stats.range
		self.melee_weapons.kampfmesser.stats.concealment = stats.concealment

		-- Wing Butterfly Knife
		self.melee_weapons.wing.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.wing.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.wing.expire_t = stats.expire_t
		self.melee_weapons.wing.stats.min_damage = stats.min_damage
		self.melee_weapons.wing.stats.max_damage = stats.max_damage
		self.melee_weapons.wing.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.wing.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.wing.stats.charge_time = stats.charge_time
		self.melee_weapons.wing.stats.range = stats.range
		self.melee_weapons.wing.stats.concealment = stats.concealment

		-- Kazaguruma
		self.melee_weapons.ostry.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.ostry.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.ostry.expire_t = stats.expire_t
		self.melee_weapons.ostry.stats.min_damage = stats.min_damage
		self.melee_weapons.ostry.stats.max_damage = stats.max_damage
		self.melee_weapons.ostry.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.ostry.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.ostry.stats.charge_time = stats.charge_time
		self.melee_weapons.ostry.stats.range = stats.range
		self.melee_weapons.ostry.stats.concealment = stats.concealment

		-- Compact Hatchet
		self.melee_weapons.bullseye.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.bullseye.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.bullseye.expire_t = stats.expire_t
		self.melee_weapons.bullseye.stats.min_damage = stats.min_damage
		self.melee_weapons.bullseye.stats.max_damage = stats.max_damage
		self.melee_weapons.bullseye.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.bullseye.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.bullseye.stats.charge_time = stats.charge_time
		self.melee_weapons.bullseye.stats.range = stats.range
		self.melee_weapons.bullseye.stats.concealment = stats.concealment

		-- Hotline 8000x
		self.melee_weapons.brick.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.brick.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.brick.expire_t = stats.expire_t
		self.melee_weapons.brick.stats.min_damage = stats.min_damage
		self.melee_weapons.brick.stats.max_damage = stats.max_damage
		self.melee_weapons.brick.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.brick.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.brick.stats.charge_time = stats.charge_time
		self.melee_weapons.brick.stats.range = stats.range
		self.melee_weapons.brick.stats.concealment = stats.concealment

		-- Scalper Tomahawk
		self.melee_weapons.scalper.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.scalper.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.scalper.expire_t = stats.expire_t
		self.melee_weapons.scalper.stats.min_damage = stats.min_damage
		self.melee_weapons.scalper.stats.max_damage = stats.max_damage
		self.melee_weapons.scalper.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.scalper.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.scalper.stats.charge_time = stats.charge_time
		self.melee_weapons.scalper.stats.range = stats.range
		self.melee_weapons.scalper.stats.concealment = stats.concealment

		-- Switchblade
		self.melee_weapons.switchblade.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.switchblade.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.switchblade.expire_t = stats.expire_t
		self.melee_weapons.switchblade.stats.min_damage = stats.min_damage
		self.melee_weapons.switchblade.stats.max_damage = stats.max_damage
		self.melee_weapons.switchblade.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.switchblade.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.switchblade.stats.charge_time = stats.charge_time
		self.melee_weapons.switchblade.stats.range = stats.range
		self.melee_weapons.switchblade.stats.concealment = stats.concealment

		-- Knuckle Daggers
		self.melee_weapons.grip.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.grip.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.grip.expire_t = stats.expire_t
		self.melee_weapons.grip.stats.min_damage = stats.min_damage
		self.melee_weapons.grip.stats.max_damage = stats.max_damage
		self.melee_weapons.grip.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.grip.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.grip.stats.charge_time = stats.charge_time
		self.melee_weapons.grip.stats.range = stats.range
		self.melee_weapons.grip.stats.concealment = stats.concealment

		-- Push Daggers
		self.melee_weapons.push.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.push.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.push.expire_t = stats.expire_t
		self.melee_weapons.push.stats.min_damage = stats.min_damage
		self.melee_weapons.push.stats.max_damage = stats.max_damage
		self.melee_weapons.push.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.push.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.push.stats.charge_time = stats.charge_time
		self.melee_weapons.push.stats.range = stats.range
		self.melee_weapons.push.stats.concealment = stats.concealment

		-- Dragan's Cleaver Knife
		self.melee_weapons.meat_cleaver.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.meat_cleaver.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.meat_cleaver.expire_t = stats.expire_t
		self.melee_weapons.meat_cleaver.stats.min_damage = stats.min_damage
		self.melee_weapons.meat_cleaver.stats.max_damage = stats.max_damage
		self.melee_weapons.meat_cleaver.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.meat_cleaver.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.meat_cleaver.stats.charge_time = stats.charge_time
		self.melee_weapons.meat_cleaver.stats.range = stats.range
		self.melee_weapons.meat_cleaver.stats.concealment = stats.concealment

		-- Okinawan Style Sai
		self.melee_weapons.twins.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.twins.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.twins.expire_t = stats.expire_t
		self.melee_weapons.twins.stats.min_damage = stats.min_damage
		self.melee_weapons.twins.stats.max_damage = stats.max_damage
		self.melee_weapons.twins.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.twins.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.twins.stats.charge_time = stats.charge_time
		self.melee_weapons.twins.stats.range = stats.range
		self.melee_weapons.twins.stats.concealment = stats.concealment

		-- Arkansas Toothpick
		self.melee_weapons.bowie.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.bowie.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.bowie.expire_t = stats.expire_t
		self.melee_weapons.bowie.stats.min_damage = stats.min_damage
		self.melee_weapons.bowie.stats.max_damage = stats.max_damage
		self.melee_weapons.bowie.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.bowie.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.bowie.stats.charge_time = stats.charge_time
		self.melee_weapons.bowie.stats.range = stats.range
		self.melee_weapons.bowie.stats.concealment = stats.concealment

		-- Psycho Knife
		self.melee_weapons.chef.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.chef.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.chef.expire_t = stats.expire_t
		self.melee_weapons.chef.stats.min_damage = stats.min_damage
		self.melee_weapons.chef.stats.max_damage = stats.max_damage
		self.melee_weapons.chef.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.chef.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.chef.stats.charge_time = stats.charge_time
		self.melee_weapons.chef.stats.range = stats.range
		self.melee_weapons.chef.stats.concealment = stats.concealment

		-- X-46 Knife
		self.melee_weapons.x46.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.x46.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.x46.expire_t = stats.expire_t
		self.melee_weapons.x46.stats.min_damage = stats.min_damage
		self.melee_weapons.x46.stats.max_damage = stats.max_damage
		self.melee_weapons.x46.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.x46.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.x46.stats.charge_time = stats.charge_time
		self.melee_weapons.x46.stats.range = stats.range
		self.melee_weapons.x46.stats.concealment = stats.concealment

		-- Talons
		self.melee_weapons.tiger.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.tiger.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.tiger.expire_t = stats.expire_t
		self.melee_weapons.tiger.stats.min_damage = stats.min_damage
		self.melee_weapons.tiger.stats.max_damage = stats.max_damage
		self.melee_weapons.tiger.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.tiger.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.tiger.stats.charge_time = stats.charge_time
		self.melee_weapons.tiger.stats.range = stats.range
		self.melee_weapons.tiger.stats.concealment = stats.concealment

		-- Hook
		self.melee_weapons.catch.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.catch.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.catch.expire_t = stats.expire_t
		self.melee_weapons.catch.stats.min_damage = stats.min_damage
		self.melee_weapons.catch.stats.max_damage = stats.max_damage
		self.melee_weapons.catch.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.catch.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.catch.stats.charge_time = stats.charge_time
		self.melee_weapons.catch.stats.range = stats.range
		self.melee_weapons.catch.stats.concealment = stats.concealment

		-- Cleaver Knife
		self.melee_weapons.cleaver.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.cleaver.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.cleaver.expire_t = stats.expire_t
		self.melee_weapons.cleaver.stats.min_damage = stats.min_damage
		self.melee_weapons.cleaver.stats.max_damage = stats.max_damage
		self.melee_weapons.cleaver.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.cleaver.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.cleaver.stats.charge_time = stats.charge_time
		self.melee_weapons.cleaver.stats.range = stats.range
		self.melee_weapons.cleaver.stats.concealment = stats.concealment

		-- Scout Knife
		self.melee_weapons.scoutknife.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.scoutknife.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.scoutknife.expire_t = stats.expire_t
		self.melee_weapons.scoutknife.stats.min_damage = stats.min_damage
		self.melee_weapons.scoutknife.stats.max_damage = stats.max_damage
		self.melee_weapons.scoutknife.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.scoutknife.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.scoutknife.stats.charge_time = stats.charge_time
		self.melee_weapons.scoutknife.stats.range = stats.range
		self.melee_weapons.scoutknife.stats.concealment = stats.concealment

		-- Berger Combat Knife
		self.melee_weapons.gerber.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.gerber.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.gerber.expire_t = stats.expire_t
		self.melee_weapons.gerber.stats.min_damage = stats.min_damage
		self.melee_weapons.gerber.stats.max_damage = stats.max_damage
		self.melee_weapons.gerber.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.gerber.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.gerber.stats.charge_time = stats.charge_time
		self.melee_weapons.gerber.stats.range = stats.range
		self.melee_weapons.gerber.stats.concealment = stats.concealment

		-- Trench Knife
		self.melee_weapons.fairbair.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.fairbair.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.fairbair.expire_t = stats.expire_t
		self.melee_weapons.fairbair.stats.min_damage = stats.min_damage
		self.melee_weapons.fairbair.stats.max_damage = stats.max_damage
		self.melee_weapons.fairbair.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.fairbair.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.fairbair.stats.charge_time = stats.charge_time
		self.melee_weapons.fairbair.stats.range = stats.range
		self.melee_weapons.fairbair.stats.concealment = stats.concealment

		-- Survival Tomahawk
		self.melee_weapons.tomahawk.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.tomahawk.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.tomahawk.expire_t = stats.expire_t
		self.melee_weapons.tomahawk.stats.min_damage = stats.min_damage
		self.melee_weapons.tomahawk.stats.max_damage = stats.max_damage
		self.melee_weapons.tomahawk.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.tomahawk.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.tomahawk.stats.charge_time = stats.charge_time
		self.melee_weapons.tomahawk.stats.range = stats.range
		self.melee_weapons.tomahawk.stats.concealment = stats.concealment

		-- Machete Knife
		self.melee_weapons.machete.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.machete.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.machete.expire_t = stats.expire_t
		self.melee_weapons.machete.stats.min_damage = stats.min_damage
		self.melee_weapons.machete.stats.max_damage = stats.max_damage
		self.melee_weapons.machete.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.machete.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.machete.stats.charge_time = stats.charge_time
		self.melee_weapons.machete.stats.range = stats.range
		self.melee_weapons.machete.stats.concealment = stats.concealment

		-- Utility Machete
		self.melee_weapons.becker.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.becker.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.becker.expire_t = stats.expire_t
		self.melee_weapons.becker.stats.min_damage = stats.min_damage
		self.melee_weapons.becker.stats.max_damage = stats.max_damage
		self.melee_weapons.becker.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.becker.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.becker.stats.charge_time = stats.charge_time
		self.melee_weapons.becker.stats.range = stats.range
		self.melee_weapons.becker.stats.concealment = stats.concealment

		-- Kunai Knife
		self.melee_weapons.cqc.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.cqc.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.cqc.expire_t = stats.expire_t
		self.melee_weapons.cqc.stats.min_damage = stats.min_damage
		self.melee_weapons.cqc.stats.max_damage = stats.max_damage
		self.melee_weapons.cqc.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.cqc.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.cqc.stats.charge_time = stats.charge_time
		self.melee_weapons.cqc.stats.range = stats.range
		self.melee_weapons.cqc.stats.concealment = stats.concealment

		-- Trautman Knife
		self.melee_weapons.rambo.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.rambo.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.rambo.expire_t = stats.expire_t
		self.melee_weapons.rambo.stats.min_damage = stats.min_damage
		self.melee_weapons.rambo.stats.max_damage = stats.max_damage
		self.melee_weapons.rambo.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.rambo.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.rambo.stats.charge_time = stats.charge_time
		self.melee_weapons.rambo.stats.range = stats.range
		self.melee_weapons.rambo.stats.concealment = stats.concealment

	-- 30/80	|	120/320
		stats = {
			melee_damage_delay = 0.1,
			repeat_expire_t = 0.3,
			expire_t = 1,
			min_damage = 3,
			max_damage = 8,
			min_damage_effect = 4,
			max_damage_effect = 4,
			charge_time = 0.5,
			range = 185,
			concealment = 30 
		}

		-- Fists
		self.melee_weapons.fists.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.fists.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.fists.expire_t = stats.expire_t
		self.melee_weapons.fists.stats.min_damage = stats.min_damage
		self.melee_weapons.fists.stats.max_damage = stats.max_damage
		self.melee_weapons.fists.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.fists.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.fists.stats.charge_time = stats.charge_time
		self.melee_weapons.fists.stats.range = stats.range
		self.melee_weapons.fists.stats.concealment = stats.concealment

		-- 350K Brass Knuckles
		self.melee_weapons.brass_knuckles.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.brass_knuckles.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.brass_knuckles.expire_t = stats.expire_t
		self.melee_weapons.brass_knuckles.stats.min_damage = stats.min_damage
		self.melee_weapons.brass_knuckles.stats.max_damage = stats.max_damage
		self.melee_weapons.brass_knuckles.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.brass_knuckles.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.brass_knuckles.stats.charge_time = stats.charge_time
		self.melee_weapons.brass_knuckles.stats.range = stats.range
		self.melee_weapons.brass_knuckles.stats.concealment = stats.concealment

		-- 50 Blessings Briefcase
		self.melee_weapons.briefcase.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.briefcase.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.briefcase.expire_t = stats.expire_t
		self.melee_weapons.briefcase.stats.min_damage = stats.min_damage
		self.melee_weapons.briefcase.stats.max_damage = stats.max_damage
		self.melee_weapons.briefcase.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.briefcase.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.briefcase.stats.charge_time = stats.charge_time
		self.melee_weapons.briefcase.stats.range = stats.range
		self.melee_weapons.briefcase.stats.concealment = stats.concealment

		-- Spatula
		self.melee_weapons.spatula.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.spatula.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.spatula.expire_t = stats.expire_t
		self.melee_weapons.spatula.stats.min_damage = stats.min_damage
		self.melee_weapons.spatula.stats.max_damage = stats.max_damage
		self.melee_weapons.spatula.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.spatula.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.spatula.stats.charge_time = stats.charge_time
		self.melee_weapons.spatula.stats.range = stats.range
		self.melee_weapons.spatula.stats.concealment = stats.concealment

		-- Money Bundle
		self.melee_weapons.moneybundle.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.moneybundle.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.moneybundle.expire_t = stats.expire_t
		self.melee_weapons.moneybundle.stats.min_damage = stats.min_damage
		self.melee_weapons.moneybundle.stats.max_damage = stats.max_damage
		self.melee_weapons.moneybundle.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.moneybundle.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.moneybundle.stats.charge_time = stats.charge_time
		self.melee_weapons.moneybundle.stats.range = stats.range
		self.melee_weapons.moneybundle.stats.concealment = stats.concealment

		-- Empty Palm Kata
		self.melee_weapons.fight.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.fight.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.fight.expire_t = stats.expire_t
		self.melee_weapons.fight.stats.min_damage = stats.min_damage
		self.melee_weapons.fight.stats.max_damage = stats.max_damage
		self.melee_weapons.fight.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.fight.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.fight.stats.charge_time = stats.charge_time
		self.melee_weapons.fight.stats.range = stats.range
		self.melee_weapons.fight.stats.concealment = stats.concealment

		-- Microphone
		self.melee_weapons.microphone.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.microphone.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.microphone.expire_t = stats.expire_t
		self.melee_weapons.microphone.stats.min_damage = stats.min_damage
		self.melee_weapons.microphone.stats.max_damage = stats.max_damage
		self.melee_weapons.microphone.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.microphone.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.microphone.stats.charge_time = stats.charge_time
		self.melee_weapons.microphone.stats.range = stats.range
		self.melee_weapons.microphone.stats.concealment = stats.concealment

		-- El Ritmo
		self.melee_weapons.chac.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.chac.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.chac.expire_t = stats.expire_t
		self.melee_weapons.chac.stats.min_damage = stats.min_damage
		self.melee_weapons.chac.stats.max_damage = stats.max_damage
		self.melee_weapons.chac.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.chac.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.chac.stats.charge_time = stats.charge_time
		self.melee_weapons.chac.stats.range = stats.range
		self.melee_weapons.chac.stats.concealment = stats.concealment

		-- Buckler Shield
		self.melee_weapons.buck.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.buck.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.buck.expire_t = stats.expire_t
		self.melee_weapons.buck.stats.min_damage = stats.min_damage
		self.melee_weapons.buck.stats.max_damage = stats.max_damage
		self.melee_weapons.buck.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.buck.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.buck.stats.charge_time = stats.charge_time
		self.melee_weapons.buck.stats.range = stats.range
		self.melee_weapons.buck.stats.concealment = stats.concealment

		-- Metal Detector
		self.melee_weapons.detector.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.detector.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.detector.expire_t = stats.expire_t
		self.melee_weapons.detector.stats.min_damage = stats.min_damage
		self.melee_weapons.detector.stats.max_damage = stats.max_damage
		self.melee_weapons.detector.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.detector.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.detector.stats.charge_time = stats.charge_time
		self.melee_weapons.detector.stats.range = stats.range
		self.melee_weapons.detector.stats.concealment = stats.concealment

		-- OVERKILL Boxing Gloves
		self.melee_weapons.boxing_gloves.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.boxing_gloves.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.boxing_gloves.expire_t = stats.expire_t
		self.melee_weapons.boxing_gloves.stats.min_damage = stats.min_damage
		self.melee_weapons.boxing_gloves.stats.max_damage = stats.max_damage
		self.melee_weapons.boxing_gloves.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.boxing_gloves.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.boxing_gloves.stats.charge_time = stats.charge_time
		self.melee_weapons.boxing_gloves.stats.range = stats.range
		self.melee_weapons.boxing_gloves.stats.concealment = stats.concealment

		-- Rivertown Glen Bottle
		self.melee_weapons.whiskey.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.whiskey.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.whiskey.expire_t = stats.expire_t
		self.melee_weapons.whiskey.stats.min_damage = stats.min_damage
		self.melee_weapons.whiskey.stats.max_damage = stats.max_damage
		self.melee_weapons.whiskey.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.whiskey.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.whiskey.stats.charge_time = stats.charge_time
		self.melee_weapons.whiskey.stats.range = stats.range
		self.melee_weapons.whiskey.stats.concealment = stats.concealment

	-- 50/240	|	75/360
		stats = {
			melee_damage_delay = 0.2,
			repeat_expire_t = 0.4,
			expire_t = 1,
			min_damage = 5,
			max_damage = 24,
			min_damage_effect = 1.5,
			max_damage_effect = 1.5,
			charge_time = 1,
			range = 225,
			concealment = 29 
		}

		-- Swagger Stick
		self.melee_weapons.swagger.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.swagger.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.swagger.expire_t = stats.expire_t
		self.melee_weapons.swagger.stats.min_damage = stats.min_damage
		self.melee_weapons.swagger.stats.max_damage = stats.max_damage
		self.melee_weapons.swagger.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.swagger.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.swagger.stats.charge_time = stats.charge_time
		self.melee_weapons.swagger.stats.range = stats.range
		self.melee_weapons.swagger.stats.concealment = stats.concealment

		-- Bolt Cutters
		self.melee_weapons.cutters.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.cutters.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.cutters.expire_t = stats.expire_t
		self.melee_weapons.cutters.stats.min_damage = stats.min_damage
		self.melee_weapons.cutters.stats.max_damage = stats.max_damage
		self.melee_weapons.cutters.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.cutters.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.cutters.stats.charge_time = stats.charge_time
		self.melee_weapons.cutters.stats.range = stats.range
		self.melee_weapons.cutters.stats.concealment = stats.concealment

		-- Selfie Stick
		self.melee_weapons.selfie.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.selfie.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.selfie.expire_t = stats.expire_t
		self.melee_weapons.selfie.stats.min_damage = stats.min_damage
		self.melee_weapons.selfie.stats.max_damage = stats.max_damage
		self.melee_weapons.selfie.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.selfie.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.selfie.stats.charge_time = stats.charge_time
		self.melee_weapons.selfie.stats.range = stats.range
		self.melee_weapons.selfie.stats.concealment = stats.concealment

		-- Telescopic Baton
		self.melee_weapons.baton.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.baton.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.baton.expire_t = stats.expire_t
		self.melee_weapons.baton.stats.min_damage = stats.min_damage
		self.melee_weapons.baton.stats.max_damage = stats.max_damage
		self.melee_weapons.baton.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.baton.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.baton.stats.charge_time = stats.charge_time
		self.melee_weapons.baton.stats.range = stats.range
		self.melee_weapons.baton.stats.concealment = stats.concealment

		-- Jackpot
		self.melee_weapons.slot_lever.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.slot_lever.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.slot_lever.expire_t = stats.expire_t
		self.melee_weapons.slot_lever.stats.min_damage = stats.min_damage
		self.melee_weapons.slot_lever.stats.max_damage = stats.max_damage
		self.melee_weapons.slot_lever.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.slot_lever.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.slot_lever.stats.charge_time = stats.charge_time
		self.melee_weapons.slot_lever.stats.range = stats.range
		self.melee_weapons.slot_lever.stats.concealment = stats.concealment

		-- Baseball Bat
		self.melee_weapons.baseballbat.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.baseballbat.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.baseballbat.expire_t = stats.expire_t
		self.melee_weapons.baseballbat.stats.min_damage = stats.min_damage
		self.melee_weapons.baseballbat.stats.max_damage = stats.max_damage
		self.melee_weapons.baseballbat.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.baseballbat.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.baseballbat.stats.charge_time = stats.charge_time
		self.melee_weapons.baseballbat.stats.range = stats.range
		self.melee_weapons.baseballbat.stats.concealment = stats.concealment

		-- Classic Baton
		self.melee_weapons.oldbaton.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.oldbaton.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.oldbaton.expire_t = stats.expire_t
		self.melee_weapons.oldbaton.stats.min_damage = stats.min_damage
		self.melee_weapons.oldbaton.stats.max_damage = stats.max_damage
		self.melee_weapons.oldbaton.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.oldbaton.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.oldbaton.stats.charge_time = stats.charge_time
		self.melee_weapons.oldbaton.stats.range = stats.range
		self.melee_weapons.oldbaton.stats.concealment = stats.concealment

		-- Hockey Stick
		self.melee_weapons.hockey.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.hockey.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.hockey.expire_t = stats.expire_t
		self.melee_weapons.hockey.stats.min_damage = stats.min_damage
		self.melee_weapons.hockey.stats.max_damage = stats.max_damage
		self.melee_weapons.hockey.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.hockey.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.hockey.stats.charge_time = stats.charge_time
		self.melee_weapons.hockey.stats.range = stats.range
		self.melee_weapons.hockey.stats.concealment = stats.concealment

		-- Hackaton
		self.melee_weapons.happy.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.happy.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.happy.expire_t = stats.expire_t
		self.melee_weapons.happy.stats.min_damage = stats.min_damage
		self.melee_weapons.happy.stats.max_damage = stats.max_damage
		self.melee_weapons.happy.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.happy.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.happy.stats.charge_time = stats.charge_time
		self.melee_weapons.happy.stats.range = stats.range
		self.melee_weapons.happy.stats.concealment = stats.concealment

		-- You're Mine
		self.melee_weapons.branding_iron.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.branding_iron.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.branding_iron.expire_t = stats.expire_t
		self.melee_weapons.branding_iron.stats.min_damage = stats.min_damage
		self.melee_weapons.branding_iron.stats.max_damage = stats.max_damage
		self.melee_weapons.branding_iron.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.branding_iron.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.branding_iron.stats.charge_time = stats.charge_time
		self.melee_weapons.branding_iron.stats.range = stats.range
		self.melee_weapons.branding_iron.stats.concealment = stats.concealment

		-- Croupier's Rake
		self.melee_weapons.croupier_rake.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.croupier_rake.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.croupier_rake.expire_t = stats.expire_t
		self.melee_weapons.croupier_rake.stats.min_damage = stats.min_damage
		self.melee_weapons.croupier_rake.stats.max_damage = stats.max_damage
		self.melee_weapons.croupier_rake.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.croupier_rake.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.croupier_rake.stats.charge_time = stats.charge_time
		self.melee_weapons.croupier_rake.stats.range = stats.range
		self.melee_weapons.croupier_rake.stats.concealment = stats.concealment

		-- Potato Masher
		self.melee_weapons.model24.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.model24.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.model24.expire_t = stats.expire_t
		self.melee_weapons.model24.stats.min_damage = stats.min_damage
		self.melee_weapons.model24.stats.max_damage = stats.max_damage
		self.melee_weapons.model24.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.model24.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.model24.stats.charge_time = stats.charge_time
		self.melee_weapons.model24.stats.range = stats.range
		self.melee_weapons.model24.stats.concealment = stats.concealment

		-- Microphone Stand
		self.melee_weapons.micstand.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.micstand.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.micstand.expire_t = stats.expire_t
		self.melee_weapons.micstand.stats.min_damage = stats.min_damage
		self.melee_weapons.micstand.stats.max_damage = stats.max_damage
		self.melee_weapons.micstand.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.micstand.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.micstand.stats.charge_time = stats.charge_time
		self.melee_weapons.micstand.stats.range = stats.range
		self.melee_weapons.micstand.stats.concealment = stats.concealment

		-- Clover's Shillelagh
		self.melee_weapons.shillelagh.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.shillelagh.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.shillelagh.expire_t = stats.expire_t
		self.melee_weapons.shillelagh.stats.min_damage = stats.min_damage
		self.melee_weapons.shillelagh.stats.max_damage = stats.max_damage
		self.melee_weapons.shillelagh.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.shillelagh.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.shillelagh.stats.charge_time = stats.charge_time
		self.melee_weapons.shillelagh.stats.range = stats.range
		self.melee_weapons.shillelagh.stats.concealment = stats.concealment

		-- Shepherd's Cane
		self.melee_weapons.stick.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.stick.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.stick.expire_t = stats.expire_t
		self.melee_weapons.stick.stats.min_damage = stats.min_damage
		self.melee_weapons.stick.stats.max_damage = stats.max_damage
		self.melee_weapons.stick.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.stick.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.stick.stats.charge_time = stats.charge_time
		self.melee_weapons.stick.stats.range = stats.range
		self.melee_weapons.stick.stats.concealment = stats.concealment

		-- Poker
		self.melee_weapons.poker.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.poker.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.poker.expire_t = stats.expire_t
		self.melee_weapons.poker.stats.min_damage = stats.min_damage
		self.melee_weapons.poker.stats.max_damage = stats.max_damage
		self.melee_weapons.poker.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.poker.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.poker.stats.charge_time = stats.charge_time
		self.melee_weapons.poker.stats.range = stats.range
		self.melee_weapons.poker.stats.concealment = stats.concealment

		-- Lucille Baseball Bat
		self.melee_weapons.barbedwire.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.barbedwire.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.barbedwire.expire_t = stats.expire_t
		self.melee_weapons.barbedwire.stats.min_damage = stats.min_damage
		self.melee_weapons.barbedwire.stats.max_damage = stats.max_damage
		self.melee_weapons.barbedwire.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.barbedwire.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.barbedwire.stats.charge_time = stats.charge_time
		self.melee_weapons.barbedwire.stats.range = stats.range
		self.melee_weapons.barbedwire.stats.concealment = stats.concealment

		-- Monkey Wrench
		self.melee_weapons.shock.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.shock.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.shock.expire_t = stats.expire_t
		self.melee_weapons.shock.stats.min_damage = stats.min_damage
		self.melee_weapons.shock.stats.max_damage = stats.max_damage
		self.melee_weapons.shock.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.shock.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.shock.stats.charge_time = stats.charge_time
		self.melee_weapons.shock.stats.range = stats.range
		self.melee_weapons.shock.stats.concealment = stats.concealment

	-- 80/480	|	80/480
		stats = {
			melee_damage_delay = 0.2,
			repeat_expire_t = 0.6,
			expire_t = 1,
			min_damage = 8,
			max_damage = 48,
			min_damage_effect = 0.5,
			max_damage_effect = 0.5,
			charge_time = 2,
			range = 250,
			concealment = 28 
		}

		-- Pounder
		self.melee_weapons.nin.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.nin.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.nin.expire_t = stats.expire_t
		self.melee_weapons.nin.stats.min_damage = stats.min_damage
		self.melee_weapons.nin.stats.max_damage = stats.max_damage
		self.melee_weapons.nin.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.nin.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.nin.stats.charge_time = stats.charge_time
		self.melee_weapons.nin.stats.range = stats.range
		self.melee_weapons.nin.stats.concealment = stats.concealment

		-- Chain Whip
		self.melee_weapons.road.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.road.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.road.expire_t = stats.expire_t
		self.melee_weapons.road.stats.min_damage = stats.min_damage
		self.melee_weapons.road.stats.max_damage = stats.max_damage
		self.melee_weapons.road.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.road.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.road.stats.charge_time = stats.charge_time
		self.melee_weapons.road.stats.range = stats.range
		self.melee_weapons.road.stats.concealment = stats.concealment

		-- Ice Pick
		self.melee_weapons.iceaxe.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.iceaxe.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.iceaxe.expire_t = stats.expire_t
		self.melee_weapons.iceaxe.stats.min_damage = stats.min_damage
		self.melee_weapons.iceaxe.stats.max_damage = stats.max_damage
		self.melee_weapons.iceaxe.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.iceaxe.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.iceaxe.stats.charge_time = stats.charge_time
		self.melee_weapons.iceaxe.stats.range = stats.range
		self.melee_weapons.iceaxe.stats.concealment = stats.concealment

		-- Rezkoye
		self.melee_weapons.oxide.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.oxide.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.oxide.expire_t = stats.expire_t
		self.melee_weapons.oxide.stats.min_damage = stats.min_damage
		self.melee_weapons.oxide.stats.max_damage = stats.max_damage
		self.melee_weapons.oxide.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.oxide.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.oxide.stats.charge_time = stats.charge_time
		self.melee_weapons.oxide.stats.range = stats.range
		self.melee_weapons.oxide.stats.concealment = stats.concealment

		-- Kento's Tanto
		self.melee_weapons.hauteur.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.hauteur.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.hauteur.expire_t = stats.expire_t
		self.melee_weapons.hauteur.stats.min_damage = stats.min_damage
		self.melee_weapons.hauteur.stats.max_damage = stats.max_damage
		self.melee_weapons.hauteur.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.hauteur.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.hauteur.stats.charge_time = stats.charge_time
		self.melee_weapons.hauteur.stats.range = stats.range
		self.melee_weapons.hauteur.stats.concealment = stats.concealment

		-- Two Handed Great Ruler
		self.melee_weapons.meter.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.meter.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.meter.expire_t = stats.expire_t
		self.melee_weapons.meter.stats.min_damage = stats.min_damage
		self.melee_weapons.meter.stats.max_damage = stats.max_damage
		self.melee_weapons.meter.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.meter.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.meter.stats.charge_time = stats.charge_time
		self.melee_weapons.meter.stats.range = stats.range
		self.melee_weapons.meter.stats.concealment = stats.concealment

		-- El Verdugo
		self.melee_weapons.agave.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.agave.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.agave.expire_t = stats.expire_t
		self.melee_weapons.agave.stats.min_damage = stats.min_damage
		self.melee_weapons.agave.stats.max_damage = stats.max_damage
		self.melee_weapons.agave.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.agave.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.agave.stats.charge_time = stats.charge_time
		self.melee_weapons.agave.stats.range = stats.range
		self.melee_weapons.agave.stats.concealment = stats.concealment

		-- Lumber Lite L2
		self.melee_weapons.cs.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.cs.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.cs.expire_t = stats.expire_t
		self.melee_weapons.cs.stats.min_damage = stats.min_damage
		self.melee_weapons.cs.stats.max_damage = stats.max_damage
		self.melee_weapons.cs.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.cs.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.cs.stats.charge_time = stats.charge_time
		self.melee_weapons.cs.stats.range = stats.range
		self.melee_weapons.cs.stats.concealment = stats.concealment

		-- Shinsakuto Katana
		self.melee_weapons.sandsteel.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.sandsteel.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.sandsteel.expire_t = stats.expire_t
		self.melee_weapons.sandsteel.stats.min_damage = stats.min_damage
		self.melee_weapons.sandsteel.stats.max_damage = stats.max_damage
		self.melee_weapons.sandsteel.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.sandsteel.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.sandsteel.stats.charge_time = stats.charge_time
		self.melee_weapons.sandsteel.stats.range = stats.range
		self.melee_weapons.sandsteel.stats.concealment = stats.concealment

		-- Pitchfork
		self.melee_weapons.pitchfork.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.pitchfork.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.pitchfork.expire_t = stats.expire_t
		self.melee_weapons.pitchfork.stats.min_damage = stats.min_damage
		self.melee_weapons.pitchfork.stats.max_damage = stats.max_damage
		self.melee_weapons.pitchfork.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.pitchfork.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.pitchfork.stats.charge_time = stats.charge_time
		self.melee_weapons.pitchfork.stats.range = stats.range
		self.melee_weapons.pitchfork.stats.concealment = stats.concealment

		-- Bearded Axe
		self.melee_weapons.beardy.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.beardy.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.beardy.expire_t = stats.expire_t
		self.melee_weapons.beardy.stats.min_damage = stats.min_damage
		self.melee_weapons.beardy.stats.max_damage = stats.max_damage
		self.melee_weapons.beardy.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.beardy.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.beardy.stats.charge_time = stats.charge_time
		self.melee_weapons.beardy.stats.range = stats.range
		self.melee_weapons.beardy.stats.concealment = stats.concealment

		-- Gold Fever
		self.melee_weapons.mining_pick.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.mining_pick.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.mining_pick.expire_t = stats.expire_t
		self.melee_weapons.mining_pick.stats.min_damage = stats.min_damage
		self.melee_weapons.mining_pick.stats.max_damage = stats.max_damage
		self.melee_weapons.mining_pick.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.mining_pick.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.mining_pick.stats.charge_time = stats.charge_time
		self.melee_weapons.mining_pick.stats.range = stats.range
		self.melee_weapons.mining_pick.stats.concealment = stats.concealment

		-- Great Sword
		self.melee_weapons.great.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.great.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.great.expire_t = stats.expire_t
		self.melee_weapons.great.stats.min_damage = stats.min_damage
		self.melee_weapons.great.stats.max_damage = stats.max_damage
		self.melee_weapons.great.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.great.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.great.stats.charge_time = stats.charge_time
		self.melee_weapons.great.stats.range = stats.range
		self.melee_weapons.great.stats.concealment = stats.concealment

		-- The Spear of Freedom
		self.melee_weapons.freedom.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.freedom.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.freedom.expire_t = stats.expire_t
		self.melee_weapons.freedom.stats.min_damage = stats.min_damage
		self.melee_weapons.freedom.stats.max_damage = stats.max_damage
		self.melee_weapons.freedom.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.freedom.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.freedom.stats.charge_time = stats.charge_time
		self.melee_weapons.freedom.stats.range = stats.range
		self.melee_weapons.freedom.stats.concealment = stats.concealment

		-- Fire Axe
		self.melee_weapons.fireaxe.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.fireaxe.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.fireaxe.expire_t = stats.expire_t
		self.melee_weapons.fireaxe.stats.min_damage = stats.min_damage
		self.melee_weapons.fireaxe.stats.max_damage = stats.max_damage
		self.melee_weapons.fireaxe.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.fireaxe.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.fireaxe.stats.charge_time = stats.charge_time
		self.melee_weapons.fireaxe.stats.range = stats.range
		self.melee_weapons.fireaxe.stats.concealment = stats.concealment

	-- 20/40	|	200/400
		stats = {
			melee_damage_delay = 0.3,
			repeat_expire_t = 0.9,
			expire_t = 1.1,
			min_damage = 12,
			max_damage = 12,
			min_damage_effect = 2,
			max_damage_effect = 8,
			charge_time = 1,
			range = 250,
			concealment = 27 
		}

		-- K.L.A.S. Shovel
		self.melee_weapons.shovel.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.shovel.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.shovel.expire_t = stats.expire_t
		self.melee_weapons.shovel.stats.min_damage = stats.min_damage
		self.melee_weapons.shovel.stats.max_damage = stats.max_damage
		self.melee_weapons.shovel.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.shovel.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.shovel.stats.charge_time = stats.charge_time
		self.melee_weapons.shovel.stats.range = stats.range
		self.melee_weapons.shovel.stats.concealment = stats.concealment

		-- Leather Sap
		self.melee_weapons.sap.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.sap.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.sap.expire_t = stats.expire_t
		self.melee_weapons.sap.stats.min_damage = stats.min_damage
		self.melee_weapons.sap.stats.max_damage = stats.max_damage
		self.melee_weapons.sap.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.sap.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.sap.stats.charge_time = stats.charge_time
		self.melee_weapons.sap.stats.range = stats.range
		self.melee_weapons.sap.stats.concealment = stats.concealment

		-- Carpenter's Delight
		self.melee_weapons.hammer.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.hammer.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.hammer.expire_t = stats.expire_t
		self.melee_weapons.hammer.stats.min_damage = stats.min_damage
		self.melee_weapons.hammer.stats.max_damage = stats.max_damage
		self.melee_weapons.hammer.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.hammer.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.hammer.stats.charge_time = stats.charge_time
		self.melee_weapons.hammer.stats.range = stats.range
		self.melee_weapons.hammer.stats.concealment = stats.concealment

		-- Morning Star
		self.melee_weapons.morning.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.morning.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.morning.expire_t = stats.expire_t
		self.melee_weapons.morning.stats.min_damage = stats.min_damage
		self.melee_weapons.morning.stats.max_damage = stats.max_damage
		self.melee_weapons.morning.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.morning.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.morning.stats.charge_time = stats.charge_time
		self.melee_weapons.morning.stats.range = stats.range
		self.melee_weapons.morning.stats.concealment = stats.concealment

		-- Ding Dong Breaching Tool
		self.melee_weapons.dingdong.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.dingdong.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.dingdong.expire_t = stats.expire_t
		self.melee_weapons.dingdong.stats.min_damage = stats.min_damage
		self.melee_weapons.dingdong.stats.max_damage = stats.max_damage
		self.melee_weapons.dingdong.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.dingdong.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.dingdong.stats.charge_time = stats.charge_time
		self.melee_weapons.dingdong.stats.range = stats.range
		self.melee_weapons.dingdong.stats.concealment = stats.concealment

		-- Tenderizer
		self.melee_weapons.tenderizer.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.tenderizer.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.tenderizer.expire_t = stats.expire_t
		self.melee_weapons.tenderizer.stats.min_damage = stats.min_damage
		self.melee_weapons.tenderizer.stats.max_damage = stats.max_damage
		self.melee_weapons.tenderizer.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.tenderizer.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.tenderizer.stats.charge_time = stats.charge_time
		self.melee_weapons.tenderizer.stats.range = stats.range
		self.melee_weapons.tenderizer.stats.concealment = stats.concealment

	-- 20		|	20
		stats = {
			melee_damage_delay = 0.15,
			repeat_expire_t = 0.6,
			expire_t = 1,
			min_damage = 2,
			max_damage = 2,
			min_damage_effect = 1,
			max_damage_effect = 1,
			charge_time = 2,
			range = 200,
			concealment = 29 
		}

		-- Electrical Brass Knuckles
		self.melee_weapons.zeus.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.zeus.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.zeus.expire_t = stats.expire_t
		self.melee_weapons.zeus.stats.min_damage = stats.min_damage
		self.melee_weapons.zeus.stats.max_damage = stats.max_damage
		self.melee_weapons.zeus.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.zeus.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.zeus.stats.charge_time = stats.charge_time
		self.melee_weapons.zeus.stats.range = stats.range
		self.melee_weapons.zeus.stats.concealment = stats.concealment

		-- Buzzer
		self.melee_weapons.taser.melee_damage_delay = stats.melee_damage_delay
		self.melee_weapons.taser.repeat_expire_t = stats.repeat_expire_t
		self.melee_weapons.taser.expire_t = stats.expire_t
		self.melee_weapons.taser.stats.min_damage = stats.min_damage
		self.melee_weapons.taser.stats.max_damage = stats.max_damage
		self.melee_weapons.taser.stats.min_damage_effect = stats.min_damage_effect
		self.melee_weapons.taser.stats.max_damage_effect = stats.max_damage_effect
		self.melee_weapons.taser.stats.charge_time = stats.charge_time
		self.melee_weapons.taser.stats.range = stats.range
		self.melee_weapons.taser.stats.concealment = stats.concealment


	--[[ self.melee_weapons.fight.stats.min_damage = 7
	self.melee_weapons.fight.stats.max_damage = 45
	self.melee_weapons.fight.stats.min_damage_effect = 1
	self.melee_weapons.fight.stats.max_damage_effect = 1
	self.melee_weapons.fight.stats.charge_time = 2
	self.melee_weapons.fight.stats.range = 250
	self.melee_weapons.fight.expire_t = 0.6
	self.melee_weapons.fight.repeat_expire_t = 0.8 ]]
end