function NewRaycastWeaponBase:_update_stats_values(disallow_replenish, ammo_data)

	local blueprint = {}
	if self:is_category("underbarrel") then
		if tweak_data.weapon[self._name_id].use_data.selection_index == 3 then
			blueprint = self:create_underbarrel_blueprint_wr(managers.blackmarket:equipped_secondary().blueprint, tweak_data.weapon[self._name_id].forbids)
			factory_id = managers.blackmarket:equipped_secondary().factory_id

			
			-- table.insert(mytable, factory_id)
			-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")


		elseif tweak_data.weapon[self._name_id].use_data.selection_index == 4 then
			blueprint = self:create_underbarrel_blueprint_wr(managers.blackmarket:equipped_primary().blueprint, tweak_data.weapon[self._name_id].forbids)
			factory_id = managers.blackmarket:equipped_primary().factory_id
		else
			blueprint = deep_clone(self._blueprint)
			factory_id = self._factory_id
		end
	else
		blueprint = deep_clone(self._blueprint)
		factory_id = self._factory_id
	end
	
	self:_default_damage_falloff()
	self:_check_sound_switch()

	self._silencer = managers.weapon_factory:has_perk("silencer", factory_id, blueprint)
	self._locked_fire_mode = managers.weapon_factory:has_perk("fire_mode_auto", factory_id, blueprint) and ids_auto or managers.weapon_factory:has_perk("fire_mode_single", factory_id, blueprint) and ids_single
	self._fire_mode = self._locked_fire_mode or self:get_recorded_fire_mode(self:_weapon_tweak_data_id()) or Idstring(self:weapon_tweak_data().FIRE_MODE or "single")
	self._ammo_data = ammo_data or managers.weapon_factory:get_ammo_data_from_weapon(factory_id, blueprint) or {}

	self._can_shoot_through_shield = tweak_data.weapon[self._name_id].can_shoot_through_shield
	self._can_shoot_through_enemy = tweak_data.weapon[self._name_id].can_shoot_through_enemy
	self._can_shoot_through_wall = tweak_data.weapon[self._name_id].can_shoot_through_wall
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

	self._armor_piercing_chance = self:weapon_tweak_data().armor_piercing_chance or 0
	local primary_category = self:weapon_tweak_data().categories and self:weapon_tweak_data().categories[1]
	self._movement_penalty = tweak_data.upgrades.weapon_movement_penalty[primary_category] or 1
	local custom_stats = managers.weapon_factory:get_custom_stats_from_weapon(factory_id, blueprint)

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
	end

	local damage_falloff = {
		optimal_distance = self._optimal_distance,
		optimal_range = self._optimal_range,
		near_falloff = self._near_falloff,
		far_falloff = self._far_falloff,
		near_multiplier = self._near_mul,
		far_multiplier = self._far_mul
	}

	managers.blackmarket:modify_damage_falloff(damage_falloff, custom_stats)

	self._optimal_distance = damage_falloff.optimal_distance
	self._optimal_range = damage_falloff.optimal_range
	self._near_falloff = damage_falloff.near_falloff
	self._far_falloff = damage_falloff.far_falloff
	self._near_mul = damage_falloff.near_multiplier
	self._far_mul = damage_falloff.far_multiplier

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

	local parts_stats = managers.weapon_factory:get_stats(factory_id, blueprint)
	local stats = deep_clone(base_stats)
	local stats_tweak_data = tweak_data.weapon.stats
	local modifier_stats = self:weapon_tweak_data().stats_modifiers
	local bonus_stats = self._cosmetics_bonus and self._cosmetics_data and self._cosmetics_data.bonus and tweak_data.economy.bonuses[self._cosmetics_data.bonus] and tweak_data.economy.bonuses[self._cosmetics_data.bonus].stats or {}

	if managers.job:is_current_job_competitive() or managers.weapon_factory:has_perk("bonus", factory_id, blueprint) then
		bonus_stats = {}
	end

	if stats.zoom then
		stats.zoom = math.min(stats.zoom + managers.player:upgrade_value(primary_category, "zoom_increase", 0), #stats_tweak_data.zoom)
	end

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




	-- local mytable = {stats}
	-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")




	self._alert_size = self._current_stats.alert_size or self._alert_size
	self._suppression = self._current_stats.suppression or self._suppression
	self._zoom = self._current_stats.zoom or self._zoom
	self._spread = self._current_stats.spread or self._spread
	self._recoil = self._current_stats.recoil or self._recoil
	self._spread_moving = self._current_stats.spread_moving or self._spread_moving
	self._extra_ammo = self._current_stats.extra_ammo or self._extra_ammo
	self._total_ammo_mod = self._current_stats.total_ammo_mod or self._total_ammo_mod
	self._reload = self._current_stats.reload or self._reload
	self._spread_multiplier = self._current_stats.spread_multi or self._spread_multiplier
	self._scopes = managers.weapon_factory:get_parts_from_weapon_by_type_or_perk("scope", factory_id, blueprint)
	self._can_highlight_with_perk = managers.weapon_factory:has_perk("highlight", factory_id, blueprint)
	self._can_highlight_with_skill = managers.player:has_category_upgrade("weapon", "steelsight_highlight_specials")
	self._can_highlight = self._can_highlight_with_perk or self._can_highlight_with_skill



	if self._name_id == "type54_underbarrel" then
		-- table.insert(mytable, {self, blueprint})
		-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")
	end



	self:_check_second_sight()
	self:_check_reticle_obj()

	if not disallow_replenish then
		self:replenish()
	end

	local user_unit = self._setup and self._setup.user_unit
	local current_state = alive(user_unit) and user_unit:movement() and user_unit:movement()._current_state
	self._fire_rate_multiplier = managers.blackmarket:fire_rate_multiplier(self._name_id, self:weapon_tweak_data().categories, self._silencer, nil, current_state, blueprint)
	
end

function NewRaycastWeaponBase:create_underbarrel_blueprint_wr(weapon_blueprint, forbids)

	if not forbids then
		return weapon_blueprint
	end

	local blueprint = {}
	local factory = tweak_data.weapon.factory
	for _, part_id in ipairs(weapon_blueprint) do

		local forbidden = false
		for _, part_type in ipairs(forbids) do
			if part_type == tweak_data.weapon.factory.parts[part_id].type then
				forbidden = true
				break
			end
		end

		if not forbidden then
			table.insert(blueprint, part_id)
		end
	end

	return blueprint
end

function NewRaycastWeaponBase:update_reloading(t, dt, time_left)
		

	-- local mytable = {self:ammo_base()}
	-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")

	self:ammo_base()
	
	local ammo_base = self:ammo_base_wr()

	if self._use_shotgun_reload and self._next_shell_reloded_t and self._next_shell_reloded_t < t then

		local speed_multiplier = self:reload_speed_multiplier()
		self._next_shell_reloded_t = self._next_shell_reloded_t + self:reload_shell_expire_t() / speed_multiplier
		
		if self._use_shotgun_reload == "dual" then
			ammo_base:set_ammo_remaining_in_clip(math.min(ammo_base:get_ammo_max_per_clip(), ammo_base:get_ammo_remaining_in_clip() + math.min(2, ammo_base:get_ammo_total() - ammo_base:get_ammo_remaining_in_clip())))
		else
			ammo_base:set_ammo_remaining_in_clip(math.min(ammo_base:get_ammo_max_per_clip(), ammo_base:get_ammo_remaining_in_clip() + 1))
		end

		managers.job:set_memory("kill_count_no_reload_" .. tostring(self._name_id), nil, true)
		return true
	end
end

function NewRaycastWeaponBase:reload_expire_t()
	local ammo_base = self:ammo_base_wr()

	if self._use_shotgun_reload then

		local ammo_remaining_in_clip = ammo_base:get_ammo_remaining_in_clip()
	
		if self._use_shotgun_reload == "dual" then
			return math.ceil(math.min(ammo_base:get_ammo_total() - ammo_remaining_in_clip, ammo_base:get_ammo_max_per_clip() - ammo_remaining_in_clip) / 2) * self:reload_shell_expire_t()
		end

		return math.min(ammo_base:get_ammo_total() - ammo_remaining_in_clip, ammo_base:get_ammo_max_per_clip() - ammo_remaining_in_clip) * self:reload_shell_expire_t()
	end

	return nil
end

function NewRaycastWeaponBase:switch_ammo()
	local alt_ammo = managers.weapon_factory:get_part_from_weapon_by_type("special", self._parts)

	if alt_ammo and alive(alt_ammo.unit) and alt_ammo.unit:base() and alt_ammo.unit:base().toggle then
		alt_ammo.unit:base():toggle()

		return alt_ammo.unit:base():is_on()
	end

	return nil
end

function NewRaycastWeaponBase:gadget_overrides_ammo_base()
	if self._cached_gadget == nil and self._assembly_complete then
		local gadgets = managers.weapon_factory:get_parts_from_weapon_by_type_or_perk("alt ammo", self._factory_id, self._blueprint)
		local gadget = nil

		for i, id in ipairs(gadgets) do
			gadget = self._parts[id]

			if gadget then
				local gadget_base = gadget.unit and gadget.unit:base() or gadget.base and gadget:base()

				if gadget_base and gadget_base:is_on() and gadget_base:overrides_ammo_base() then
					self._cached_gadget = gadget_base
				end
			end
		end

		if self._cached_gadget == nil then
			self._cached_gadget = false
		end
	end

	



	local mytable = {self._cached_gadget}
	table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")




	return self._cached_gadget
end

function NewRaycastWeaponBase:ammo_base_wr()
	local base = self.parent_weapon and self.parent_weapon:base() or self

	if base:gadget_overrides_weapon_functions() then
		

		-- local mytable = {"test_1"}
		-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")


		
		base = base:gadget_overrides_weapon_functions():ammo_base() or base
	else
		

		-- local mytable = {"test_2"}
		-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")


		base = base:gadget_overrides_ammo_base() or base
	end

	return base
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