function NewRaycastWeaponBase:_update_stats_values(disallow_replenish, ammo_data)

	local ids_single = Idstring("single")
	local ids_auto = Idstring("auto")
	local ids_burst = Idstring("burst")

	self:_default_damage_falloff()
	self:_check_sound_switch()

	self._silencer = managers.weapon_factory:has_perk("silencer", self._factory_id, self._blueprint)
	local weapon_perks = managers.weapon_factory:get_perks(self._factory_id, self._blueprint) or {}

	if weapon_perks.fire_mode_auto then
		self._locked_fire_mode = ids_auto
	elseif weapon_perks.fire_mode_single then
		self._locked_fire_mode = ids_single
	elseif weapon_perks.fire_mode_burst then
		self._locked_fire_mode = ids_burst
	else
		self._locked_fire_mode = nil
	end

	self._fire_mode = self._locked_fire_mode or self:get_recorded_fire_mode(self:_weapon_tweak_data_id()) or Idstring(self:weapon_tweak_data().FIRE_MODE or "single")
	self._ammo_data = ammo_data or managers.weapon_factory:get_ammo_data_from_weapon(self._factory_id, self._blueprint) or {}
	self._can_shoot_through_shield = tweak_data.weapon[self._name_id].can_shoot_through_shield
	self._can_shoot_through_enemy = tweak_data.weapon[self._name_id].can_shoot_through_enemy
	self._can_shoot_through_wall = tweak_data.weapon[self._name_id].can_shoot_through_wall
	self._armor_piercing_chance = self:weapon_tweak_data().armor_piercing_chance or 0
	local primary_category = self:weapon_tweak_data().categories and self:weapon_tweak_data().categories[1]
	self._movement_penalty = tweak_data.upgrades.weapon_movement_penalty[primary_category] or 1
	self._burst_count = self:weapon_tweak_data().BURST_COUNT or 3
	local custom_stats = managers.weapon_factory:get_custom_stats_from_weapon(self._factory_id, self._blueprint)

	for part_id, stats in pairs(custom_stats) do
		if stats.movement_speed then
			self._movement_penalty = self._movement_penalty * stats.movement_speed
		end

		if tweak_data.weapon.factory.parts[part_id].type ~= "ammo" then
			if stats.ammo_pickup_min_mul then
				self._ammo_data.ammo_pickup_min_mul = self._ammo_data.ammo_pickup_min_mul and self._ammo_data.ammo_pickup_min_mul * stats.ammo_pickup_min_mul or stats.ammo_pickup_min_mul
			end

			if stats.ammo_pickup_max_mul then
				self._ammo_data.ammo_pickup_max_mul = self._ammo_data.ammo_pickup_max_mul and self._ammo_data.ammo_pickup_max_mul * stats.ammo_pickup_max_mul or stats.ammo_pickup_max_mul
			end
		end
		
		if stats.burst_count then
			self._burst_count = stats.burst_count
		end

		if stats.ammo_offset then
			self._ammo_data.ammo_offset = (self._ammo_data.ammo_offset or 0) + stats.ammo_offset
		end

		if stats.fire_rate_multiplier then
			self._ammo_data.fire_rate_multiplier = (self._ammo_data.fire_rate_multiplier or 0) + stats.fire_rate_multiplier - 1
		end
	end

	local damage_falloff = {
		optimal_distance = self._optimal_distance,
		optimal_range = self._optimal_range,
		near_falloff = self._near_falloff,
		far_falloff = self._far_falloff,
		near_multiplier = self._near_mul, --[[ bug fix, was self._near_multiplier, should have been self._near_mul ]]
		far_multiplier = self._far_mul --[[ bug fix, was self._far_multiplier, should have been self._far_mul ]]
	}

	managers.blackmarket:modify_damage_falloff(damage_falloff, custom_stats)

	self._optimal_distance = damage_falloff.optimal_distance
	self._optimal_range = damage_falloff.optimal_range
	self._near_falloff = damage_falloff.near_falloff
	self._far_falloff = damage_falloff.far_falloff
	self._near_mul --[[ bug fix, was self._near_multiplier, should have been self._near_mul ]] = damage_falloff.near_multiplier
	self._far_mul --[[ bug fix, was self._far_multiplier, should have been self._far_mul ]] = damage_falloff.far_multiplier

	if self._ammo_data then
		if self._ammo_data.can_shoot_through_shield ~= nil then
			self._can_shoot_through_shield = self._ammo_data.can_shoot_through_shield
		end

		if self._ammo_data.can_shoot_through_enemy ~= nil then
			self._can_shoot_through_enemy = self._ammo_data.can_shoot_through_enemy
		end

		if self._ammo_data.can_shoot_through_wall ~= nil then
			self._can_shoot_through_wall = self._ammo_data.can_shoot_through_wall
		end

		if self._ammo_data.bullet_class ~= nil then
			self._bullet_class = CoreSerialize.string_to_classtable(self._ammo_data.bullet_class)
			self._bullet_slotmask = self._bullet_class:bullet_slotmask()
			self._blank_slotmask = self._bullet_class:blank_slotmask()
		end

		if self._ammo_data.armor_piercing_add ~= nil then
			self._armor_piercing_chance = math.clamp(self._armor_piercing_chance + self._ammo_data.armor_piercing_add, 0, 1)
		end

		if self._ammo_data.armor_piercing_mul ~= nil then
			self._armor_piercing_chance = math.clamp(self._armor_piercing_chance * self._ammo_data.armor_piercing_mul, 0, 1)
		end
	end

	if self._silencer then
		self._muzzle_effect = Idstring(self:weapon_tweak_data().muzzleflash_silenced or "effects/payday2/particles/weapons/9mm_auto_silence_fps")
	elseif self._ammo_data and self._ammo_data.muzzleflash ~= nil then
		self._muzzle_effect = Idstring(self._ammo_data.muzzleflash)
	else
		self._muzzle_effect = Idstring(self:weapon_tweak_data().muzzleflash or "effects/particles/test/muzzleflash_maingun")
	end

	self._muzzle_effect_table = {
		effect = self._muzzle_effect,
		parent = self._obj_fire,
		force_synch = self._muzzle_effect_table.force_synch or false
	}
	local base_stats = self:weapon_tweak_data().stats

	if not base_stats then
		return
	end

	local parts_stats = managers.weapon_factory:get_stats(self._factory_id, self._blueprint)
	local stats = deep_clone(base_stats)
	local stats_tweak_data = tweak_data.weapon.stats
	local modifier_stats = self:weapon_tweak_data().stats_modifiers
	local bonus_stats = self._cosmetics_bonus and self._cosmetics_data and self._cosmetics_data.bonus and tweak_data.economy.bonuses[self._cosmetics_data.bonus] and tweak_data.economy.bonuses[self._cosmetics_data.bonus].stats or {}

	if managers.job:is_current_job_competitive() or managers.weapon_factory:has_perk("bonus", self._factory_id, self._blueprint) then
		bonus_stats = {}
	end

	if stats.zoom then
		stats.zoom = math.min(stats.zoom + managers.player:upgrade_value(primary_category, "zoom_increase", 0), #stats_tweak_data.zoom)
	end


	-- Weapon Rebalances
	if parts_stats and parts_stats.magnification then
		self._magnification = parts_stats.magnification
	end
	-- Weapon Rebalances


	for stat, _ in pairs(stats) do
		if stats[stat] < 1 or stats[stat] > #stats_tweak_data[stat] then
			Application:error("[NewRaycastWeaponBase] Base weapon stat is out of bound!", "stat: " .. stat, "index: " .. stats[stat], "max_index: " .. #stats_tweak_data[stat], "This stat will be clamped!")
		end

		if parts_stats[stat] then
			stats[stat] = stats[stat] + parts_stats[stat]
		end

		if bonus_stats[stat] then
			stats[stat] = stats[stat] + bonus_stats[stat]
		end

		stats[stat] = math.clamp(stats[stat], 1, #stats_tweak_data[stat])
	end

	self._current_stats_indices = stats
	self._current_stats = {}

	for stat, i in pairs(stats) do
		self._current_stats[stat] = stats_tweak_data[stat] and stats_tweak_data[stat][i] or 1

		if modifier_stats and modifier_stats[stat] then
			self._current_stats[stat] = self._current_stats[stat] * modifier_stats[stat]
		end
	end

	self._current_stats.alert_size = stats_tweak_data.alert_size[math.clamp(stats.alert_size, 1, #stats_tweak_data.alert_size)]

	if modifier_stats and modifier_stats.alert_size then
		self._current_stats.alert_size = self._current_stats.alert_size * modifier_stats.alert_size
	end

	if stats.concealment then
		stats.suspicion = math.clamp(#stats_tweak_data.concealment - base_stats.concealment - (parts_stats.concealment or 0), 1, #stats_tweak_data.concealment)
		self._current_stats.suspicion = stats_tweak_data.concealment[stats.suspicion]
	end

	if parts_stats and parts_stats.spread_multi then
		self._current_stats.spread_multi = parts_stats.spread_multi
	end

	self._alert_size = self._current_stats.alert_size or self._alert_size
	self._suppression = self._current_stats.suppression or self._suppression
	self._zoom = self._current_stats.zoom or self._zoom
	self._spread = self._current_stats.spread or self._spread
	self._recoil = self._current_stats.recoil or self._recoil
	self._spread_moving = self._current_stats.spread_moving or self._spread_moving
	self._extra_ammo = self._current_stats.extra_ammo or self._extra_ammo
	self._total_ammo_mod = self._current_stats.total_ammo_mod or self._total_ammo_mod
	
	if self._ammo_data.ammo_offset then
		self._extra_ammo = self._extra_ammo + self._ammo_data.ammo_offset
	end

	self._reload = self._current_stats.reload or self._reload
	self._spread_multiplier = self._current_stats.spread_multi or self._spread_multiplier
	self._scopes = managers.weapon_factory:get_parts_from_weapon_by_type_or_perk("scope", self._factory_id, self._blueprint)
	self._can_highlight_with_perk = managers.weapon_factory:has_perk("highlight", self._factory_id, self._blueprint)
	self._can_highlight_with_skill = managers.player:has_category_upgrade("weapon", "steelsight_highlight_specials")
	self._can_highlight = self._can_highlight_with_perk or self._can_highlight_with_skill

	self:_check_second_sight()
	self:_check_reticle_obj()

	if not disallow_replenish then
		self:replenish()
	end

	local user_unit = self._setup and self._setup.user_unit
	local current_state = alive(user_unit) and user_unit:movement() and user_unit:movement()._current_state
	self._fire_rate_multiplier = managers.blackmarket:fire_rate_multiplier(self._name_id, self:weapon_tweak_data().categories, self._silencer, nil, current_state, self._blueprint)
	
	if self._ammo_data.fire_rate_multiplier then
		self._fire_rate_multiplier = self._fire_rate_multiplier + self._ammo_data.fire_rate_multiplier

		local mytable = {self._fire_rate_multiplier}
		table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")
		
		
	end
end

function NewRaycastWeaponBase:replenish()
	local ammo_max_multiplier = managers.player:upgrade_value("player", "extra_ammo_multiplier", 1)

	for _, category in ipairs(self:weapon_tweak_data().categories) do
		ammo_max_multiplier = ammo_max_multiplier * managers.player:upgrade_value(category, "extra_ammo_multiplier", 1)
	end

	ammo_max_multiplier = ammo_max_multiplier + ammo_max_multiplier * (self._total_ammo_mod or 0)

	if managers.player:has_category_upgrade("player", "add_armor_stat_skill_ammo_mul") then
		ammo_max_multiplier = ammo_max_multiplier * managers.player:body_armor_value("skill_ammo_mul", nil, 1)
	end

	local total_ammo_add = self._total_ammo_add or 0 --Weapon Rebalances

	ammo_max_multiplier = managers.modifiers:modify_value("WeaponBase:GetMaxAmmoMultiplier", ammo_max_multiplier)
	local ammo_max_per_clip = self:calculate_ammo_max_per_clip()
	local ammo_max = math.round((tweak_data.weapon[self._name_id].AMMO_MAX + managers.player:upgrade_value(self._name_id, "clip_amount_increase") * ammo_max_per_clip) * ammo_max_multiplier + math.floor(total_ammo_add)) --added total_ammo_add
	ammo_max_per_clip = math.min(ammo_max_per_clip, ammo_max)

	self:set_ammo_max_per_clip(ammo_max_per_clip)
	self:set_ammo_max(ammo_max)
	self:set_ammo_total(ammo_max)
	self:set_ammo_remaining_in_clip(ammo_max_per_clip)

	self._ammo_pickup = tweak_data.weapon[self._name_id].AMMO_PICKUP

	if self._assembly_complete then
		for _, gadget in ipairs(self:get_all_override_weapon_gadgets()) do
			if gadget and gadget.replenish then
				gadget:replenish()
			end
		end
	end

	self:update_damage()
end

function NewRaycastWeaponBase:update_reloading(t, dt, time_left)
	if self._use_shotgun_reload and self._next_shell_reloded_t and self._next_shell_reloded_t < t then
		local speed_multiplier = self:reload_speed_multiplier()
		local shotgun_reload_tweak = self:_get_shotgun_reload_tweak_data(not self._started_reload_empty)
		local ammo_to_reload = 1
		local next_queue_data = nil

		if shotgun_reload_tweak and shotgun_reload_tweak.reload_queue then
			self._shotgun_queue_index = self._shotgun_queue_index % #shotgun_reload_tweak.reload_queue + 1

			if self._shotgun_queue_index == #shotgun_reload_tweak.reload_queue then
				self._next_shell_reloded_t = self._next_shell_reloded_t + (shotgun_reload_tweak.reload_queue_wrap or 0)
			end

			local queue_data = shotgun_reload_tweak.reload_queue[self._shotgun_queue_index]
			ammo_to_reload = queue_data and queue_data.reload_num or 1
			next_queue_data = shotgun_reload_tweak.reload_queue[self._shotgun_queue_index + 1]
			self._next_shell_reloded_t = self._next_shell_reloded_t + (next_queue_data and next_queue_data.expire_t or 0.5666666666666667) / speed_multiplier
		else
			self._next_shell_reloded_t = self._next_shell_reloded_t + self:reload_shell_expire_t(not self._started_reload_empty) / speed_multiplier
			ammo_to_reload = shotgun_reload_tweak and shotgun_reload_tweak.reload_num or 1
		end


		--Weapon Reblances
		if self._use_shotgun_reload == "dual" then
			self:set_ammo_remaining_in_clip(math.min(self:get_ammo_max_per_clip(), self:get_ammo_remaining_in_clip() + math.min(2, self:get_ammo_total() - self:get_ammo_remaining_in_clip())))
		else
		--Weapon Reblances


			self:set_ammo_remaining_in_clip(math.min(self:get_ammo_max_per_clip(), self:get_ammo_remaining_in_clip() + math.min(ammo_to_reload, self:get_ammo_total() - self:get_ammo_remaining_in_clip())))
		end
		managers.job:set_memory("kill_count_no_reload_" .. tostring(self._name_id), nil, true)

		if not next_queue_data or not next_queue_data.skip_update_ammo then
			self:update_ammo_objects()
		end

		return true
	end
end

function NewRaycastWeaponBase:reload_expire_t(is_not_empty)
	if self._use_shotgun_reload then
		local ammo_total = self:get_ammo_total()
		local ammo_max_per_clip = self:get_ammo_max_per_clip()
		local ammo_remaining_in_clip = self:get_ammo_remaining_in_clip()
		local ammo_to_reload = math.min(ammo_total - ammo_remaining_in_clip, ammo_max_per_clip - ammo_remaining_in_clip)
		local shotgun_reload_tweak = self:_get_shotgun_reload_tweak_data(is_not_empty)

		if shotgun_reload_tweak and shotgun_reload_tweak.reload_queue then
			local reload_expire_t = 0
			local queue_index = 0
			local queue_data = nil
			local queue_num = #shotgun_reload_tweak.reload_queue

			while ammo_to_reload > 0 do
				if queue_index == queue_num then
					reload_expire_t = reload_expire_t + (shotgun_reload_tweak.reload_queue_wrap or 0)
				end

				queue_index = queue_index % queue_num + 1
				queue_data = shotgun_reload_tweak.reload_queue[queue_index]
				reload_expire_t = reload_expire_t + queue_data.expire_t or 0.5666666666666667
				ammo_to_reload = ammo_to_reload - (queue_data.reload_num or 1)
			end

			return reload_expire_t
		end

		local reload_shell_expire_t = self:reload_shell_expire_t(is_not_empty)
		local reload_num = shotgun_reload_tweak and shotgun_reload_tweak.reload_num or 1


		--Weapon Rebalances
		if self._use_shotgun_reload == "dual" then
			return math.ceil(math.min(ammo_total - ammo_remaining_in_clip, ammo_max_per_clip - ammo_remaining_in_clip) / 2) * reload_shell_expire_t
		end
		--Weapon Rebalances


		return math.ceil(ammo_to_reload / reload_num) * reload_shell_expire_t
	end

	return nil
end

function NewRaycastWeaponBase:recoil_wait() --rewritten
	local recoil_wait = self:weapon_tweak_data().recoil_wait or {flat = 1, curve = 1}
	local multiplier_flat = recoil_wait.flat or 0.5
	local multiplier_curve = recoil_wait.curve or 0.5
	local fire_rate = self:weapon_tweak_data().fire_mode_data.fire_rate
	wait = {
		flat = fire_rate * multiplier_flat,
		curve = fire_rate * multiplier_curve
	}
	return wait

end

function NewRaycastWeaponBase:zoom()


	-- Weapon Rebalances
	if self._magnification then
		local magnification = self._magnification

		local width = 960
		local base_fov = 63
		local focal_length = width / math.tan(base_fov / 2)

		if self:is_second_sight_on() then
			local gadget_magnification = tweak_data.weapon.factory.parts[self._second_sight_data.part_id].stats.gadget_magnification
			local gadget_magnification_mul = tweak_data.weapon.factory.parts[self._second_sight_data.part_id].stats.gadget_magnification_mul

			if gadget_magnification_mul then
				magnification = 2 * math.atan(width / (focal_length * magnification * gadget_magnification_mul))
			elseif gadget_magnification then
				magnification = 2 * math.atan(width / (focal_length * gadget_magnification))
			end
		else
			magnification = 2 * math.atan(width / (focal_length * magnification))
		end
		return magnification
	end
	-- Weapon Rebalances


	if self:is_second_sight_on() then
		local gadget_zoom_stats = tweak_data.weapon.factory.parts[self._second_sight_data.part_id].stats.gadget_zoom

		if not gadget_zoom_stats then
			local tweak_stats = tweak_data.weapon.factory.parts[self._second_sight_data.part_id].stats

			if not tweak_stats.gadget_zoom_add then
				debug_pause("Invalid second sight:", self._second_sight_data.part_id)
			end

			gadget_zoom_stats = math.min(NewRaycastWeaponBase.super.zoom(self) + tweak_stats.gadget_zoom_add, #tweak_data.weapon.stats.zoom)
		end

		return tweak_data.weapon.stats.zoom[gadget_zoom_stats]
	end

	return NewRaycastWeaponBase.super.zoom(self)
end

Hooks:PostHook(NewRaycastWeaponBase, "_update_stats_values", "WR NewRaycastWeaponBase _update_stats_values", function(self, disallow_replenish)

	self:_get_penetration_stats_wr()
	self:_update_penetration_stats_wr()

	local parts_stats = managers.weapon_factory:get_stats(self._factory_id, self._blueprint)

	local spread_multiplier = tweak_data.weapon[self._name_id].spread_multiplier
	if parts_stats then
		if parts_stats.spread_multi then
			self._spread_multiplier = spread_multiplier and {spread_multiplier[1] * parts_stats.spread_multi[1], spread_multiplier[2] * parts_stats.spread_multi[2]} or parts_stats.spread_multi
		end

		if parts_stats.magazine_add then
			self.extra_ammo = self.extra_ammo + math.floor(parts_stats.magazine_add)
		end

		if parts_stats.total_ammo_add then
			self._total_ammo_add = parts_stats.total_ammo_add
		end
	end

	if not disallow_replenish then
		self:replenish()
	end
	self._spread_multiplier = spread_multiplier or	self._spread_multiplier
	
end)

function NewRaycastWeaponBase:_get_penetration_stats_wr()

	self._can_shoot_through_armor_plating = tweak_data.weapon[self._name_id].can_shoot_through_armor_plating

	self._max_shield_penetration_distance = tweak_data.weapon[self._name_id].max_shield_penetration_distance
	self._max_enemy_penetration_distance = tweak_data.weapon[self._name_id].max_enemy_penetration_distance
	self._max_wall_penetration_distance = tweak_data.weapon[self._name_id].max_wall_penetration_distance

	self._max_shield_penetrations = tweak_data.weapon[self._name_id].max_shield_penetrations
	self._max_enemy_penetrations = tweak_data.weapon[self._name_id].max_enemy_penetrations
	self._max_wall_penetrations = tweak_data.weapon[self._name_id].max_wall_penetrations

	self._shield_pen_energy_loss = tweak_data.weapon[self._name_id].shield_pen_energy_loss
	self._enemy_pen_energy_loss = tweak_data.weapon[self._name_id].enemy_pen_energy_loss
	self._wall_pen_energy_loss = tweak_data.weapon[self._name_id].wall_pen_energy_loss

end

function NewRaycastWeaponBase:_update_penetration_stats_wr()
	if self._ammo_data then

		if self._ammo_data.can_shoot_through_armor_plating ~= nil then
			self._can_shoot_through_armor_plating = self._ammo_data.can_shoot_through_armor_plating
		end



		if self._ammo_data.max_shield_penetration_distance ~= nil then
			self._max_shield_penetration_distance = self._ammo_data.max_shield_penetration_distance
		end

		if self._ammo_data.max_enemy_penetration_distance ~= nil then
			self._max_enemy_penetration_distance = self._ammo_data.max_enemy_penetration_distance
		end

		if self._ammo_data.max_wall_penetration_distance ~= nil then
			self._max_wall_penetration_distance = self._ammo_data.max_wall_penetration_distance
		end

		

		if self._ammo_data.max_shield_penetrations ~= nil then
			self._max_shield_penetrations = self._ammo_data.max_shield_penetrations
		end

		if self._ammo_data.max_enemy_penetrations ~= nil then
			self._max_enemy_penetrations = self._ammo_data.max_enemy_penetrations
		end

		if self._ammo_data.max_wall_penetrations ~= nil then
			self._max_wall_penetrations = self._ammo_data.max_wall_penetrations
		end

		if self._ammo_data.max_penetrations ~= nil then
			self._max_penetrations = self._ammo_data.max_penetrations
		end



		if self._ammo_data.shield_pen_energy_loss ~= nil then
			self._shield_pen_energy_loss = self._ammo_data.shield_pen_energy_loss
		end

		if self._ammo_data.enemy_pen_energy_loss ~= nil then
			self._enemy_pen_energy_loss = self._ammo_data.enemy_pen_energy_loss
		end

		if self._ammo_data.wall_pen_energy_loss ~= nil then
			self._wall_pen_energy_loss = self._ammo_data.wall_pen_energy_loss
		end
	end
end







function NewRaycastWeaponBase:stance_mod() -- this bug fix is stupid, where the heck else is this function being used
end

function NewRaycastWeaponBase:stance_mod_wr() -- this bug fix is stupid
	if not self._blueprint or not self._factory_id then
		return nil
	end

	local using_second_sight = self:is_second_sight_on()

	return managers.weapon_factory:get_stance_mod(self._factory_id, self._blueprint, using_second_sight)
end


















--[[
   Save Table to File
   Load Table from File
   v 1.0
   
   Lua 5.2 compatible
   
   Only Saves Tables, Numbers and Strings
   Insides Table References are saved
   Does not save Userdata, Metatables, Functions and indices of these
   ----------------------------------------------------
   table.save( table , filename )
   
   on failure: returns an error msg
   
   ----------------------------------------------------
   table.load( filename or stringtable )
   
   Loads a table that has been saved via the table.save function
   
   on success: returns a previously saved table
   on failure: returns as second argument an error msg
   ----------------------------------------------------
   
   Licensed under the same terms as Lua itself.
]]--
do
	-- declare local variables
	--// exportstring( string )
	--// returns a "Lua" portable version of the string
	local function exportstring( s )
	   return string.format("%q", s)
	end
 
	--// The Save Function
	function table.save(  tbl,filename )
	   local charS,charE = "   ","\n"
	   local file,err = io.open( filename, "wb" )
	   if err then return err end
 
	   -- initiate variables for save procedure
	   local tables,lookup = { tbl },{ [tbl] = 1 }
	   file:write( "return {"..charE )
 
	   for idx,t in ipairs( tables ) do
		  file:write( "-- Table: {"..idx.."}"..charE )
		  file:write( "{"..charE )
		  local thandled = {}
 
		  for i,v in ipairs( t ) do
			 thandled[i] = true
			 local stype = type( v )
			 -- only handle value
			 if stype == "table" then
				if not lookup[v] then
				   table.insert( tables, v )
				   lookup[v] = #tables
				end
				file:write( charS.."{"..lookup[v].."},"..charE )
			 elseif stype == "string" then
				file:write(  charS..exportstring( v )..","..charE )
			 elseif stype == "number" then
				file:write(  charS..tostring( v )..","..charE )
			 end
		  end
 
		  for i,v in pairs( t ) do
			 -- escape handled values
			 if (not thandled[i]) then
			 
				local str = ""
				local stype = type( i )
				-- handle index
				if stype == "table" then
				   if not lookup[i] then
					  table.insert( tables,i )
					  lookup[i] = #tables
				   end
				   str = charS.."[{"..lookup[i].."}]="
				elseif stype == "string" then
				   str = charS.."["..exportstring( i ).."]="
				elseif stype == "number" then
				   str = charS.."["..tostring( i ).."]="
				end
			 
				if str ~= "" then
				   stype = type( v )
				   -- handle value
				   if stype == "table" then
					  if not lookup[v] then
						 table.insert( tables,v )
						 lookup[v] = #tables
					  end
					  file:write( str.."{"..lookup[v].."},"..charE )
				   elseif stype == "string" then
					  file:write( str..exportstring( v )..","..charE )
				   elseif stype == "number" then
					  file:write( str..tostring( v )..","..charE )
				   end
				end
			 end
		  end
		  file:write( "},"..charE )
	   end
	   file:write( "}" )
	   file:close()
	end
 
	--// The Load Function
	function table.load( sfile )
	   local ftables,err = loadfile( sfile )
	   if err then return _,err end
	   local tables = ftables()
	   for idx = 1,#tables do
		  local tolinki = {}
		  for i,v in pairs( tables[idx] ) do
			 if type( v ) == "table" then
				tables[idx][i] = tables[v[1]]
			 end
			 if type( i ) == "table" and tables[i[1]] then
				table.insert( tolinki,{ i,tables[i[1]] } )
			 end
		  end
		  -- link indices
		  for _,v in ipairs( tolinki ) do
			 tables[idx][v[2]],tables[idx][v[1]] =  tables[idx][v[1]],nil
		  end
	   end
	   return tables[1]
	end
 -- close do
 end
 
 -- ChillCode