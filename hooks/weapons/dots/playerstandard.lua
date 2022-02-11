function PlayerStandard:_check_melee_dot_damage(col_ray, defense_data, melee_entry, charge_lerp_value)
	if not defense_data or defense_data.type == "death" then
		return
	end

	local dot_data = tweak_data.blackmarket.melee_weapons[melee_entry].dot_data

	if not dot_data then
		return
	end

	local data = managers.dot:create_dot_data(self:lerp_melee_dot_data_wr(dot_data, charge_lerp_value))
	local damage_class = CoreSerialize.string_to_classtable(data.damage_class)

	damage_class:start_dot_damage(col_ray, nil, nil, data, melee_entry)
end

function PlayerStandard:lerp_melee_dot_data_wr(dot_data, lerp_value)
	local dot_data = deep_clone(dot_data)
	if dot_data.custom_data and dot_data.custom_data.max_values then
		local custom_data = dot_data.custom_data
		local max_values = custom_data.max_values
		for stat, _ in pairs(custom_data) do
			custom_data[stat] = max_values[stat] and math.lerp(custom_data[stat], max_values[stat], lerp_value) or custom_data[stat]
		end
	end
	return dot_data
end

local melee_vars = {
	"player_melee",
	"player_melee_var2"
}

function PlayerStandard:_do_melee_damage(t, bayonet_melee, melee_hit_ray, melee_entry, hand_id)
	melee_entry = melee_entry or managers.blackmarket:equipped_melee_weapon()
	local instant_hit = tweak_data.blackmarket.melee_weapons[melee_entry].instant
	local melee_damage_delay = tweak_data.blackmarket.melee_weapons[melee_entry].melee_damage_delay or 0
	local charge_lerp_value = instant_hit and 0 or self:_get_melee_charge_lerp_value(t, melee_damage_delay)

	self._ext_camera:play_shaker(melee_vars[math.random(#melee_vars)], math.max(0.3, charge_lerp_value))

	local sphere_cast_radius = 20
	local col_ray = nil

	if melee_hit_ray then
		col_ray = melee_hit_ray ~= true and melee_hit_ray or nil
	else
		col_ray = self:_calc_melee_hit_ray(t, sphere_cast_radius)
	end

	if col_ray and alive(col_ray.unit) then
		local damage, damage_effect = managers.blackmarket:equipped_melee_weapon_damage_info(charge_lerp_value)
		local damage_effect_mul = math.max(managers.player:upgrade_value("player", "melee_knockdown_mul", 1), managers.player:upgrade_value(self._equipped_unit:base():weapon_tweak_data().categories and self._equipped_unit:base():weapon_tweak_data().categories[1], "melee_knockdown_mul", 1))
		damage = damage * managers.player:get_melee_dmg_multiplier()
		damage_effect = damage_effect * damage_effect_mul
		col_ray.sphere_cast_radius = sphere_cast_radius
		local hit_unit = col_ray.unit

		if hit_unit:character_damage() then
			if bayonet_melee then
				self._unit:sound():play("fairbairn_hit_body", nil, false)
			else
				local hit_sfx = "hit_body"

				if hit_unit:character_damage() and hit_unit:character_damage().melee_hit_sfx then
					hit_sfx = hit_unit:character_damage():melee_hit_sfx()
				end

				self:_play_melee_sound(melee_entry, hit_sfx, self._melee_attack_var)
			end

			if not hit_unit:character_damage()._no_blood then
				managers.game_play_central:play_impact_flesh({
					col_ray = col_ray
				})
				managers.game_play_central:play_impact_sound_and_effects({
					no_decal = true,
					no_sound = true,
					col_ray = col_ray
				})
			end

			self._camera_unit:base():play_anim_melee_item("hit_body")
		else
			if self._on_melee_restart_drill and hit_unit:base() and (hit_unit:base().is_drill or hit_unit:base().is_saw) then
				hit_unit:base():on_melee_hit(managers.network:session():local_peer():id())
			end

			if bayonet_melee then
				self._unit:sound():play("knife_hit_gen", nil, false)
			else
				self:_play_melee_sound(melee_entry, "hit_gen", self._melee_attack_var)
			end

			self._camera_unit:base():play_anim_melee_item("hit_gen")
			managers.game_play_central:play_impact_sound_and_effects({
				no_decal = true,
				no_sound = true,
				col_ray = col_ray,
				effect = Idstring("effects/payday2/particles/impacts/fallback_impact_pd2")
			})
		end

		local custom_data = nil

		if _G.IS_VR and hand_id then
			custom_data = {
				engine = hand_id == 1 and "right" or "left"
			}
		end

		managers.rumble:play("melee_hit", nil, nil, custom_data)
		managers.game_play_central:physics_push(col_ray)

		local character_unit, shield_knock = nil
		local can_shield_knock = managers.player:has_category_upgrade("player", "shield_knock")

		if can_shield_knock and hit_unit:in_slot(8) and alive(hit_unit:parent()) and not hit_unit:parent():character_damage():is_immune_to_shield_knockback() then
			shield_knock = true
			character_unit = hit_unit:parent()
		end

		character_unit = character_unit or hit_unit

		if character_unit:character_damage() and character_unit:character_damage().damage_melee then
			local dmg_multiplier = 1

			if not managers.enemy:is_civilian(character_unit) and not managers.groupai:state():is_enemy_special(character_unit) then
				dmg_multiplier = dmg_multiplier * managers.player:upgrade_value("player", "non_special_melee_multiplier", 1)
			else
				dmg_multiplier = dmg_multiplier * managers.player:upgrade_value("player", "melee_damage_multiplier", 1)
			end

			dmg_multiplier = dmg_multiplier * managers.player:upgrade_value("player", "melee_" .. tostring(tweak_data.blackmarket.melee_weapons[melee_entry].stats.weapon_type) .. "_damage_multiplier", 1)

			if managers.player:has_category_upgrade("melee", "stacking_hit_damage_multiplier") then
				self._state_data.stacking_dmg_mul = self._state_data.stacking_dmg_mul or {}
				self._state_data.stacking_dmg_mul.melee = self._state_data.stacking_dmg_mul.melee or {
					nil,
					0
				}
				local stack = self._state_data.stacking_dmg_mul.melee

				if stack[1] and t < stack[1] then
					dmg_multiplier = dmg_multiplier * (1 + managers.player:upgrade_value("melee", "stacking_hit_damage_multiplier", 0) * stack[2])
				else
					stack[2] = 0
				end
			end

			local health_ratio = self._ext_damage:health_ratio()
			local damage_health_ratio = managers.player:get_damage_health_ratio(health_ratio, "melee")

			if damage_health_ratio > 0 then
				local damage_ratio = damage_health_ratio
				dmg_multiplier = dmg_multiplier * (1 + managers.player:upgrade_value("player", "melee_damage_health_ratio_multiplier", 0) * damage_ratio)
			end

			dmg_multiplier = dmg_multiplier * managers.player:temporary_upgrade_value("temporary", "berserker_damage_multiplier", 1)
			local target_dead = character_unit:character_damage().dead and not character_unit:character_damage():dead()
			local target_hostile = managers.enemy:is_enemy(character_unit) and not tweak_data.character[character_unit:base()._tweak_table].is_escort and character_unit:brain():is_hostile()
			local life_leach_available = managers.player:has_category_upgrade("temporary", "melee_life_leech") and not managers.player:has_activate_temporary_upgrade("temporary", "melee_life_leech")

			if target_dead and target_hostile and life_leach_available then
				managers.player:activate_temporary_upgrade("temporary", "melee_life_leech")
				self._unit:character_damage():restore_health(managers.player:temporary_upgrade_value("temporary", "melee_life_leech", 1))
			end

			local action_data = {
				variant = "melee"
			}

			if _G.IS_VR and melee_entry == "weapon" and not bayonet_melee then
				dmg_multiplier = 0.1
			end

			action_data.damage = shield_knock and 0 or damage * dmg_multiplier
			action_data.damage_effect = damage_effect
			action_data.attacker_unit = self._unit
			action_data.col_ray = col_ray

			if shield_knock then
				action_data.shield_knock = can_shield_knock
			end

			action_data.name_id = melee_entry
			action_data.charge_lerp_value = charge_lerp_value

			if managers.player:has_category_upgrade("melee", "stacking_hit_damage_multiplier") then
				self._state_data.stacking_dmg_mul = self._state_data.stacking_dmg_mul or {}
				self._state_data.stacking_dmg_mul.melee = self._state_data.stacking_dmg_mul.melee or {
					nil,
					0
				}
				local stack = self._state_data.stacking_dmg_mul.melee

				if character_unit:character_damage().dead and not character_unit:character_damage():dead() then
					stack[1] = t + managers.player:upgrade_value("melee", "stacking_hit_expire_t", 1)
					stack[2] = math.min(stack[2] + 1, tweak_data.upgrades.max_melee_weapon_dmg_mul_stacks or 5)
				else
					stack[1] = nil
					stack[2] = 0
				end
			end

			local defense_data = character_unit:character_damage():damage_melee(action_data)

			self:_check_melee_dot_damage(col_ray, defense_data, melee_entry, charge_lerp_value)	--added charge_lerp_value
			self:_perform_sync_melee_damage(hit_unit, col_ray, action_data.damage)

			if tweak_data.blackmarket.melee_weapons[melee_entry].tase_data and character_unit:character_damage().damage_tase then
				local action_data = {
					variant = tweak_data.blackmarket.melee_weapons[melee_entry].tase_data.tase_strength,
					damage = 0,
					attacker_unit = self._unit,
					col_ray = col_ray
				}

				character_unit:character_damage():damage_tase(action_data)
			end

			if tweak_data.blackmarket.melee_weapons[melee_entry].fire_dot_data and character_unit:character_damage().damage_fire then
				local action_data = {
					variant = "fire",
					damage = 0,
					attacker_unit = self._unit,
					col_ray = col_ray,
					fire_dot_data = tweak_data.blackmarket.melee_weapons[melee_entry].fire_dot_data
				}

				character_unit:character_damage():damage_fire(action_data)
			end

			return defense_data
		else
			self:_perform_sync_melee_damage(hit_unit, col_ray, damage)
		end
	end

	if managers.player:has_category_upgrade("melee", "stacking_hit_damage_multiplier") then
		self._state_data.stacking_dmg_mul = self._state_data.stacking_dmg_mul or {}
		self._state_data.stacking_dmg_mul.melee = self._state_data.stacking_dmg_mul.melee or {
			nil,
			0
		}
		local stack = self._state_data.stacking_dmg_mul.melee
		stack[1] = nil
		stack[2] = 0
	end

	return col_ray
end



















Hooks:PostHook(PlayerStandard, "_update_check_actions", "WR PlayerStandard _update_check_actions", function(self, t, dt, paused)
	local input = self:_get_input(t, dt, paused)
	
	new_action = self:_check_action_switch_ammo_wr(t,input)
end)

function PlayerStandard:_check_action_switch_ammo_wr(t, input)
	local new_action = nil
	local action_forbidden = false

	if _G.IS_VR then
		if not input.btn_weapon_firemode_press and not self._toggle_underbarrel_wanted then
			return new_action
		end
	elseif not input.btn_deploy_bipod and not self._toggle_underbarrel_wanted then
		return new_action
	end

	action_forbidden = self:_is_throwing_projectile() or self:_is_meleeing() or self:is_equipping() or self:_changing_weapon() or self:shooting() or self:_is_reloading() or self:is_switching_stances() or self:_interacting() or self:running() and not self._equipped_unit:base():run_and_shoot_allowed()

	if self._running and not self._equipped_unit:base():run_and_shoot_allowed() and not self._end_running_expire_t then
		self:_interupt_action_running(t)

		self._toggle_underbarrel_wanted = true

		return
	end

	if not action_forbidden then
		self._toggle_underbarrel_wanted = false
		local weapon = self._equipped_unit:base()

		local switch_ammo = weapon:switch_ammo()

		if switch_ammo ~= nil then
			local alt_ammo_name_id = weapon:underbarrel_name_id()
			local alt_ammo_tweak = tweak_data.weapon[underbarrel_name_id]
			new_action = true

			if weapon.reset_cached_gadget then
				weapon:reset_cached_gadget()
			end

			if weapon._update_stats_values then
				weapon:_update_stats_values(true)
			end

			local anim_ids = nil
			local switch_delay = 1

			-- if switch_ammo then
			-- 	anim_ids = Idstring("underbarrel_enter_" .. weapon.name_id)
			-- 	switch_delay = underbarrel_tweak.timers.equip_underbarrel

			-- 	self:set_animation_state("underbarrel")
			-- else
			-- 	anim_ids = Idstring("underbarrel_exit_" .. weapon.name_id)
			-- 	switch_delay = underbarrel_tweak.timers.unequip_underbarrel

			-- 	self:set_animation_state("standard")
			-- end

			if anim_ids then
				self._ext_camera:play_redirect(anim_ids, 1)
			end

			self:set_animation_weapon_hold(nil)
			self:set_stance_switch_delay(switch_delay)

			if alive(self._equipped_unit) then
				managers.hud:set_ammo_amount(self._equipped_unit:base():selection_index(), self._equipped_unit:base():ammo_info())
				managers.hud:set_teammate_weapon_firemode(HUDManager.PLAYER_PANEL, self._unit:inventory():equipped_selection(), self._equipped_unit:base():fire_mode())
			end

			managers.network:session():send_to_peers_synched("sync_underbarrel_switch", self._equipped_unit:base():selection_index(), underbarrel_name_id, underbarrel_state)
		end
	end

	return new_action
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