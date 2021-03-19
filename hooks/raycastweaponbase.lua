function RaycastWeaponBase:_collect_hits(from, to)
	local ray_hits = nil
	local hit_enemy = false
	local enemy_mask = managers.slot:get_mask("enemies")
	local wall_mask = managers.slot:get_mask("world_geometry", "vehicles")
	local shield_mask = managers.slot:get_mask("enemy_shield_check")
	local ai_vision_ids = Idstring("ai_vision")
	local bulletproof_ids = Idstring("bulletproof")
	
	local units_hit = {}
	local unique_hits = {}
	
	local penetrations = 0
	local enemy_penetrations = 0
	local wall_penetrations = 0
	local prev_hit_wall = {}
	local shield_penetrations = 0
	
	if self._ammo_data.can_shoot_through_armor_plating then

		if self._can_shoot_through_wall then
			ray_hits = World:raycast_wall("ray", from, to, "slot_mask", self._bullet_slotmask, "ignore_unit", self._setup.ignore_units, "thickness", 40, "thickness_mask", wall_mask)
		else
			ray_hits = World:raycast_all("ray", from, to, "slot_mask", self._bullet_slotmask, "ignore_unit", self._setup.ignore_units)
		end
		
		for i, hit in ipairs(ray_hits) do
			if not units_hit[hit.unit:key()] then
				if hit.body:name() == Idstring("body_shields") then
					hit.unit:damage():run_sequence_simple("int_seq_shield_detach")
					hit.unit:character_damage():set_shield_health(0)
				elseif hit.body:name() == Idstring("head") then
					units_hit[hit.unit:key()] = true
					unique_hits[#unique_hits + 1] = hit
					hit.hit_position = hit.position
				end
			end
		end
	elseif self._can_shoot_through_wall then
		ray_hits = World:raycast_wall("ray", from, to, "slot_mask", self._bullet_slotmask, "ignore_unit", self._setup.ignore_units, "thickness", 40, "thickness_mask", wall_mask)
	else
		ray_hits = World:raycast_all("ray", from, to, "slot_mask", self._bullet_slotmask, "ignore_unit", self._setup.ignore_units)
	end
	
	for i, hit in ipairs(ray_hits) do
		if not units_hit[hit.unit:key()] then
			units_hit[hit.unit:key()] = true
			unique_hits[#unique_hits + 1] = hit
			hit.hit_position = hit.position
			hit_enemy = hit_enemy or hit.unit:in_slot(enemy_mask)
			local weak_body = hit.body:has_ray_type(ai_vision_ids)
			weak_body = weak_body or hit.body:has_ray_type(bulletproof_ids)
			
			if self._ammo_data.can_shoot_through_armor_plating then
				--nothing
			elseif hit_enemy then
				if not self._can_shoot_through_enemy then
					break
				elseif self._ammo_data.max_enemy_penetration_distance and self._ammo_data.max_enemy_penetration_distance < hit.distance then
					break
				elseif (type(self._can_shoot_through_enemy) == "number") and (self._can_shoot_through_enemy < math.random()) then
					break
				elseif  self._ammo_data.max_enemy_penetrations then
					if self._ammo_data.max_enemy_penetrations == enemy_penetrations then
						break
					else
						enemy_penetrations = enemy_penetrations + 1
					end
				elseif  self._ammo_data.max_penetrations then
					if self._ammo_data.max_penetrations == penetrations then
						break
					else
						penetrations = penetrations + 1
					end
				end
			elseif hit.unit:in_slot(wall_mask) and weak_body then
				if not self._can_shoot_through_wall then
					break
				elseif self._ammo_data.max_wall_penetration_distance and self._ammo_data.max_wall_penetration_distance < hit.distance then
					break
				elseif (type(self._can_shoot_through_wall) == "number") and (self._can_shoot_through_wall < math.random()) then
					break
				elseif  self._ammo_data.max_wall_penetrations then
					if self._ammo_data.max_wall_penetrations == wall_penetrations then
						if prev_hit_wall.distance then
							if hit.distance - prev_hit_wall.distance > 40 then
								break
							end
						else
							break
						end
					else
						if prev_hit_wall.distance then
							if hit.distance - prev_hit_wall.distance > 40 then
								wall_penetrations = wall_penetrations + 1
								prev_hit_wall.distance = hit.distance
							else
								--nothing
							end
						else
							wall_penetrations = wall_penetrations + 1
							prev_hit_wall.distance = hit.distance
						end
					end
				elseif  self._ammo_data.max_penetrations then
					if self._ammo_data.max_penetrations == penetrations then
						if prev_hit_wall.distance then
							if hit.distance - prev_hit_wall.distance > 40 then
								break
							end
						else
							break
						end
					else
						if prev_hit_wall.distance then
							if hit.distance - prev_hit_wall.distance > 40 then
								penetrations = penetrations + 1
								prev_hit_wall.distance = hit.distance
							else
								--nothing
							end
						else
							penetrations = penetrations + 1
							prev_hit_wall.distance = hit.distance
						end
					end
				end
			elseif hit.unit:in_slot(shield_mask) then
				if not self._can_shoot_through_shield then
					break
				elseif self._ammo_data.max_shield_penetration_distance and self._ammo_data.max_shield_penetration_distance < hit.distance then
					break
				elseif (type(self._can_shoot_through_shield) == "number") and (self._can_shoot_through_shield < math.random()) then
					break
				elseif  self._ammo_data.max_shield_penetrations then
					if self._ammo_data.max_shield_penetrations == shield_penetrations then
						break
					else
						shield_penetrations = shield_penetrations + 1
					end
				elseif  self._ammo_data.max_penetrations then
					if self._ammo_data.max_penetrations == penetrations then
						break
					else
						penetrations = penetrations + 1
					end
				end
			end
		end
	end

	return unique_hits, hit_enemy
end

function RaycastWeaponBase:add_ammo(ratio, add_amount_override)

	local function _add_ammo(ammo_base, ratio, add_amount_override)
		if ammo_base:get_ammo_max() == ammo_base:get_ammo_total() then
			return false, 0
		end

		local multiplier_min = 1
		local multiplier_max = 1
		
		--pick up modifiers from attachments don't negate pick up modifiers from skills and perks
			if ammo_base._ammo_data and ammo_base._ammo_data.ammo_pickup_min_mul then
				multiplier_min = managers.player:upgrade_value("player", "pick_up_ammo_multiplier", 1)
				multiplier_min = multiplier_min + managers.player:upgrade_value("player", "pick_up_ammo_multiplier_2", 1) - 1
				multiplier_min = multiplier_min + managers.player:crew_ability_upgrade_value("crew_scavenge", 0)
				multiplier_min = multiplier_min * ammo_base._ammo_data.ammo_pickup_min_mul
			else
				multiplier_min = managers.player:upgrade_value("player", "pick_up_ammo_multiplier", 1)
				multiplier_min = multiplier_min + managers.player:upgrade_value("player", "pick_up_ammo_multiplier_2", 1) - 1
				multiplier_min = multiplier_min + managers.player:crew_ability_upgrade_value("crew_scavenge", 0)
			end

			if ammo_base._ammo_data and ammo_base._ammo_data.ammo_pickup_max_mul then
				multiplier_max = managers.player:upgrade_value("player", "pick_up_ammo_multiplier", 1)
				multiplier_max = multiplier_max + managers.player:upgrade_value("player", "pick_up_ammo_multiplier_2", 1) - 1
				multiplier_max = multiplier_max + managers.player:crew_ability_upgrade_value("crew_scavenge", 0)
				multiplier_max = multiplier_max * ammo_base._ammo_data.ammo_pickup_max_mul
			else
				multiplier_max = managers.player:upgrade_value("player", "pick_up_ammo_multiplier", 1)
				multiplier_max = multiplier_max + managers.player:upgrade_value("player", "pick_up_ammo_multiplier_2", 1) - 1
				multiplier_max = multiplier_max + managers.player:crew_ability_upgrade_value("crew_scavenge", 0)
			end
		--
		local add_amount = add_amount_override
		local picked_up = true

		if not add_amount then
			local rng_ammo = math.lerp(ammo_base._ammo_pickup[1] * multiplier_min, ammo_base._ammo_pickup[2] * multiplier_max, math.random())
			picked_up = rng_ammo > 0
			add_amount = math.max(0, math.round(rng_ammo))
		end

		add_amount = math.floor(add_amount * (ratio or 1))

		ammo_base:set_ammo_total(math.clamp(ammo_base:get_ammo_total() + add_amount, 0, ammo_base:get_ammo_max()))

		return picked_up, add_amount
	end

	local picked_up, add_amount = nil
	picked_up, add_amount = _add_ammo(self, ratio, add_amount_override)

	if self.AKIMBO then
		local akimbo_rounding = self:get_ammo_total() % 2 + #self._fire_callbacks

		if akimbo_rounding > 0 then
			_add_ammo(self, nil, akimbo_rounding)
		end
	end

	for _, gadget in ipairs(self:get_all_override_weapon_gadgets()) do
		if gadget and gadget.ammo_base then
			local p, a = _add_ammo(gadget:ammo_base(), ratio, add_amount_override)
			picked_up = p or picked_up
			add_amount = add_amount + a
		end
	end

	return picked_up, add_amount
end

function DOTBulletBase:on_collision(col_ray, weapon_unit, user_unit, damage, blank)
	local result = DOTBulletBase.super.on_collision(self, col_ray, weapon_unit, user_unit, damage, blank, self.NO_BULLET_INPACT_SOUND)
	local hit_unit = col_ray.unit

	if hit_unit:character_damage() and hit_unit:character_damage().damage_dot and not hit_unit:character_damage():dead() then
		result = self:start_dot_damage(col_ray, weapon_unit, user_unit, self:_dot_data_by_weapon(weapon_unit))
	end

	return result
end

function DOTBulletBase:_dot_data_by_weapon(weapon_unit)
	if not alive(weapon_unit) then
		return nil
	end

	if weapon_unit:base()._ammo_data and weapon_unit:base()._ammo_data.dot_data then
		return managers.dot:create_dot_data(weapon_unit:base()._ammo_data.dot_data)
	elseif weapon_unit.base and weapon_unit:base()._name_id then
		local weapon_name_id = weapon_unit:base()._name_id

		if tweak_data.weapon[weapon_name_id] and tweak_data.weapon[weapon_name_id].dot_data then
			return managers.dot:create_dot_data(tweak_data.weapon[weapon_name_id].dot_data)
		end
	end

	return nil
end

function DOTBulletBase:start_dot_damage(col_ray, weapon_unit, user_unit, dot_data, weapon_id)
	dot_data = dot_data or self.DOT_DATA
	local hurt_animation = not dot_data.hurt_animation_chance or math.rand(1) < dot_data.hurt_animation_chance
	
	local flammable = nil
	local char_tweak = tweak_data.character[col_ray.unit:base()._tweak_table]
	flammable = char_tweak.flammable == nil and true or char_tweak.flammable
	local distance = 1000
	local hit_loc = col_ray.hit_position

	if hit_loc and user_unit and user_unit.position then
		distance = mvector3.distance(hit_loc, user_unit:position())
	end
	
	local dot_max_distance = dot_data.dot_trigger_max_distance
	local dot_trigger_chance = dot_data.dot_trigger_chance or 100

	local start_dot_damage_roll = math.random(1, 100)
	
	if dot_data.variant == "fire" then
		if not flammable then
			return
		end
	end

	if	start_dot_damage_roll <= dot_trigger_chance then
		if dot_max_distance then
			if dot_max_distance < distance then
				return
			end
		end
		managers.dot:add_doted_enemy(col_ray, col_ray.unit, TimerManager:game():time(), weapon_unit, dot_data, weapon_id)
	end
end

function DOTBulletBase:give_damage_dot(action_data)
	local col_ray = action_data.col_ray
	local defense_data = {}

	if col_ray and col_ray.unit and alive(col_ray.unit) and col_ray.unit:character_damage() then
		defense_data = col_ray.unit:character_damage():damage_dot(action_data)
	end

	return defense_data
end

FireBulletBase = FireBulletBase or class(DOTBulletBase)
FireBulletBase.VARIANT = "fire"

function FireBulletBase:play_impact_sound_and_effects(weapon_unit, col_ray, no_sound)
end

function FlameBulletBase:on_collision(col_ray, weapon_unit, user_unit, damage, blank)
	local hit_unit = col_ray.unit
	local play_impact_flesh = false

	if hit_unit:damage() and col_ray.body:extension() and col_ray.body:extension().damage then
		local sync_damage = not blank and hit_unit:id() ~= -1
		local network_damage = math.ceil(damage * 163.84)
		damage = network_damage / 163.84

		if sync_damage then
			local normal_vec_yaw, normal_vec_pitch = self._get_vector_sync_yaw_pitch(col_ray.normal, 128, 64)
			local dir_vec_yaw, dir_vec_pitch = self._get_vector_sync_yaw_pitch(col_ray.ray, 128, 64)

			managers.network:session():send_to_peers_synched("sync_body_damage_bullet", col_ray.unit:id() ~= -1 and col_ray.body or nil, user_unit:id() ~= -1 and user_unit or nil, normal_vec_yaw, normal_vec_pitch, col_ray.position, dir_vec_yaw, dir_vec_pitch, math.min(16384, network_damage))
		end

		local local_damage = not blank or hit_unit:id() == -1

		if local_damage then
			col_ray.body:extension().damage:damage_bullet(user_unit, col_ray.normal, col_ray.position, col_ray.ray, 1)
			col_ray.body:extension().damage:damage_damage(user_unit, col_ray.normal, col_ray.position, col_ray.ray, damage)

			if alive(weapon_unit) and weapon_unit:base().categories and weapon_unit:base():categories() then
				for _, category in ipairs(weapon_unit:base():categories()) do
					col_ray.body:extension().damage:damage_bullet_type(category, user_unit, col_ray.normal, col_ray.position, col_ray.ray, 1)
				end
			end
		end
	end

	local result = nil

	if hit_unit:character_damage() and hit_unit:character_damage().damage_fire then
		local is_alive = not hit_unit:character_damage():dead()
		result = self:give_fire_damage(col_ray, weapon_unit, user_unit, damage)

		if hit_unit:character_damage() and hit_unit:character_damage().damage_dot and not hit_unit:character_damage():dead() then
			result = self:start_dot_damage(col_ray, weapon_unit, user_unit, self:_dot_data_by_weapon(weapon_unit))
		end

		if result ~= "friendly_fire" then
			local is_dead = hit_unit:character_damage():dead()

			if weapon_unit:base()._ammo_data and weapon_unit:base()._ammo_data.push_units then
				local push_multiplier = self:_get_character_push_multiplier(weapon_unit, is_alive and is_dead)

				managers.game_play_central:physics_push(col_ray, push_multiplier)
			end
		else
			play_impact_flesh = false
		end
	elseif weapon_unit:base()._ammo_data and weapon_unit:base()._ammo_data.push_units then
		managers.game_play_central:physics_push(col_ray)
	end

	if play_impact_flesh then
		managers.game_play_central:play_impact_flesh({
			no_sound = true,
			col_ray = col_ray
		})
	end

	self:play_impact_sound_and_effects(weapon_unit, col_ray)

	return result
end

function FlameBulletBase:give_fire_damage(col_ray, weapon_unit, user_unit, damage, armor_piercing)
	local fire_dot_data = nil

	if weapon_unit.base and weapon_unit:base()._ammo_data and weapon_unit:base()._ammo_data.bullet_class == "FlameBulletBase" then
		if weapon_unit:base()._ammo_data.dot_data then else fire_dot_data = weapon_unit:base()._ammo_data.fire_dot_data end
	elseif weapon_unit.base and weapon_unit:base()._name_id then
		local weapon_name_id = weapon_unit:base()._name_id

		if tweak_data.weapon[weapon_name_id] and tweak_data.weapon[weapon_name_id].fire_dot_data then
			if weapon_unit:base().dot_data then else fire_dot_data = weapon_unit:base().fire_dot_data end
		end
	end

	local action_data = {
		variant = "fire",
		damage = damage,
		weapon_unit = weapon_unit,
		attacker_unit = user_unit,
		col_ray = col_ray,
		armor_piercing = armor_piercing,
		fire_dot_data = fire_dot_data
	}
	local defense_data = col_ray.unit:character_damage():damage_fire(action_data)

	return defense_data
end

function FlameBulletBase:start_dot_damage(col_ray, weapon_unit, user_unit, dot_data, weapon_id)
	dot_data = dot_data or self.DOT_DATA
	local hurt_animation = not dot_data.hurt_animation_chance or math.rand(1) < dot_data.hurt_animation_chance
	
	local flammable = nil
	local char_tweak = tweak_data.character[col_ray.unit:base()._tweak_table]
	flammable = char_tweak.flammable == nil and true or char_tweak.flammable
	local distance = 1000
	local hit_loc = col_ray.hit_position

	if hit_loc and user_unit and user_unit.position then
		distance = mvector3.distance(hit_loc, user_unit:position())
	end
	
	local dot_max_distance = dot_data.dot_trigger_max_distance
	local dot_trigger_chance = dot_data.dot_trigger_chance or 100

	local start_dot_damage_roll = math.random(1, 100)
	
	if dot_data.variant == "fire" then
		if not flammable then
			return
		end
	end

	if	start_dot_damage_roll <= dot_trigger_chance then
		if dot_max_distance then
			if dot_max_distance < distance then
				return
			end
		end
		managers.dot:add_doted_enemy(col_ray, col_ray.unit, TimerManager:game():time(), weapon_unit, dot_data, weapon_id)
	end
end

function FlameBulletBase:_dot_data_by_weapon(weapon_unit)
	if not alive(weapon_unit) then
		return nil
	end

	if weapon_unit:base()._ammo_data and weapon_unit:base()._ammo_data.dot_data then
		return managers.dot:create_dot_data(weapon_unit:base()._ammo_data.dot_data)
	elseif weapon_unit.base and weapon_unit:base()._name_id then
		local weapon_name_id = weapon_unit:base()._name_id

		if tweak_data.weapon[weapon_name_id] and tweak_data.weapon[weapon_name_id].dot_data then
			return managers.dot:create_dot_data(tweak_data.weapon[weapon_name_id].dot_data)
		end
	end

	return nil
end