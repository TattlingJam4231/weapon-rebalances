function DOTManager:update(t, dt)
	for index = #self._doted_enemies, 1, -1 do
		local dot_info = self._doted_enemies[index]
		local tick_period = dot_info.dot_tick_period or 0.5
		
		if dot_info.dot_counter >= tick_period then
			self:_damage_dot(dot_info)
			dot_info.dot_counter = 0
		end
		
		if dot_info.decay_counter then
			if dot_info.decay_counter >= dot_info.decay_period then
				dot_info.dot_damage = dot_info.dot_damage - dot_info.damage_decay
				dot_info.decay_counter = 0
			else
				dot_info.decay_counter = dot_info.decay_counter + dt
			end
		end		
		
		if t > dot_info.dot_damage_received_time + dot_info.dot_length then
			if dot_info.variant == "fire" then
				self:_remove_flame_effects_from_doted_unit(dot_info.enemy_unit)
				self:_stop_burn_body_sound(dot_info.sound_source)
			end
			table.remove(self._doted_enemies, index)
		else
			dot_info.dot_counter = dot_info.dot_counter + dt
		end
	end
end

function DOTManager:add_doted_enemy(col_ray, enemy_unit, dot_damage_received_time, weapon_unit, dot_data, weapon_id)
	local dot_info = self:_add_doted_enemy(col_ray, enemy_unit, dot_damage_received_time, weapon_unit, dot_data, weapon_id)
end

function DOTManager:sync_add_dot_damage(col_ray, enemy_unit, dot_damage_received_time, weapon_unit, dot_data)
	if enemy_unit then
		local t = TimerManager:game():time()

		self:_add_doted_enemy(col_ray, enemy_unit, t, weapon_unit, dot_data)
	end
end

function DOTManager:_add_doted_enemy(col_ray, enemy_unit, dot_damage_received_time, weapon_unit, dot_data, weapon_id)
	local contains = false

	if self._doted_enemies then
		for _, dot_info in ipairs(self._doted_enemies) do
				
			if dot_info.enemy_unit == enemy_unit and dot_info.variant == dot_data.variant then
				if not dot_info.reset_dot_length and dot_info.dot_damage_received_time + dot_info.dot_length < dot_damage_received_time + dot_length then
					dot_info.dot_damage_received_time = dot_damage_received_time
					dot_info.dot_length = dot_length
				end
				
				--update dot_damage
				if dot_info.scale_damage and dot_data.scale_damage then
					if dot_info.damage_cap then
						dot_info.dot_damage = math.min(dot_info.dot_damage + dot_data.scale_damage, dot_info.damage_cap)
					else
						dot_info.dot_damage = dot_info.dot_damage + dot_data.scale_damage
					end
				end
					
				--update dot_length
				if dot_info.damage_decay and dot_info.decay_period then
					dot_info.dot_length = ((dot_info.dot_damage / dot_info.damage_decay) * dot_info.decay_period) + 0.1
					dot_info.dot_damage_received_time = dot_damage_received_time
					
				elseif dot_info.scale_length and dot_data.scale_length then
				
					local elapsed_time = (TimerManager:game():time() - dot_info.dot_damage_received_time)
					dot_info.dot_length = dot_info.dot_length - elapsed_time
					dot_info.dot_damage_received_time = dot_damage_received_time
					
					if dot_info.diminish_scale_length then
						if dot_info.diminish_scale_length and dot_info.diminish_scale_length <= dot_info.dot_length then
							dot_info.dot_length = dot_info.dot_length + (dot_data.scale_length * (dot_info.diminish_scale_length / (dot_info.dot_length + dot_data.scale_length)))
						else
							dot_info.dot_length = dot_info.dot_length + dot_data.scale_length
						end
						
					elseif dot_info.length_cap then
						dot_info.dot_length = math.min(dot_info.dot_length + dot_data.scale_length, dot_info.length_cap)
					else
						dot_info.dot_length = dot_info.dot_length + dot_data.scale_length
					end
				end

				--update dot_tick_period
				if dot_info.scale_tick_period and dot_data.scale_tick_period then
					dot_info.dot_tick_period = math.max(dot_info.dot_tick_period - dot_data.scale_tick_period, dot_info.min_tick_period)
				end
				
				dot_info.hurt_animation = dot_info.hurt_animation or dot_data.hurt_animation
				contains = true
			end
		end

		if not contains then
			local dot_info = deep_clone(dot_data)
			
			dot_info.col_ray = col_ray
			dot_info.dot_counter = 0
			dot_info.enemy_unit = enemy_unit
			dot_info.dot_damage_received_time = dot_damage_received_time
			dot_info.weapon_unit = weapon_unit
			dot_info.weapon_id = weapon_id
			
			if dot_info.damage_decay and dot_info.decay_period then
				dot_info.dot_length = ((dot_info.dot_damage / dot_info.damage_decay) * dot_info.decay_period) + 0.1
				dot_info.decay_counter = 0
			end
			
			table.insert(self._doted_enemies, dot_info)
			
			if dot_data.variant == "fire" then
				self:_start_enemy_fire_effect(dot_info)
				self:start_burn_body_sound(dot_info)
			end
			
			self:check_achievemnts(enemy_unit, dot_damage_received_time)
		end
	end
end

function DOTManager:_damage_dot(dot_info)
	local action_data = dot_info
	action_data.attacker_unit = managers.player:player_unit()
	action_data.damage = dot_info.dot_damage

	if dot_info.variant then
		DOTBulletBase:give_damage_dot(action_data)
	end
end

function DOTManager:create_dot_data(dot_info)
	local dot_types = {
		poison = {
			damage_class = "PoisonBulletBase",
			dot_damage = 25,
			dot_length = 6,
			hurt_animation_chance = 1
		},
		fire = {
			damage_class = "FlameBulletBase",
			dot_damage = 10,
			dot_length = 3.1
		}
	}
	
	local dot_data = dot_types[dot_info.type]

	if dot_info.custom_data then
		local custom_data = dot_info.custom_data
		
		dot_data.variant = dot_info.type
		dot_data.dot_trigger_chance = custom_data.dot_trigger_chance or 100
		dot_data.hurt_animation_chance = custom_data.hurt_animation_chance or 0
		dot_data.dot_trigger_max_distance = custom_data.dot_trigger_max_distance
		dot_data.dot_can_crit = custom_data.dot_can_crit or false
		-- dot_data.dot_damage = custom_data.dot_damage or dot_data.dot_damage
		--Damage Variables
		dot_data.dot_damage = custom_data.damage and custom_data.damage/10 or custom_data.dot_damage or dot_data.dot_damage
		
		if custom_data.scale_damage then
			dot_data.scale_damage = custom_data.scale_damage/10
		end
		if custom_data.damage_cap then
			dot_data.damage_cap = custom_data.damage_cap/10
		end
		if custom_data.damage_decay then
			dot_data.damage_decay = custom_data.damage_decay/10
		end
		dot_data.decay_period = custom_data.decay_period
		
		--Length variables
		dot_data.dot_length = custom_data.dot_length or dot_data.dot_length
		if custom_data.reset_dot_length == nil then
			dot_data.reset_dot_length = true
		end
		dot_data.scale_length = custom_data.scale_length
		dot_data.length_cap = custom_data.length_cap
		dot_data.diminish_scale_length = custom_data.diminish_scale_length
		
		--Tick Period variables
		dot_data.dot_tick_period = custom_data.dot_tick_period or dot_data.dot_tick_period
		dot_data.scale_tick_period = custom_data.scale_tick_period
		dot_data.min_tick_period = custom_data.min_tick_period or 0.1
	end
	
	return dot_data
end

-- from firemanager -------------------------

function DOTManager:_remove_flame_effects_from_doted_unit(enemy_unit)
	if self._doted_enemies then
		for _, dot_info in ipairs(self._doted_enemies) do
			if dot_info.fire_effects and dot_info.enemy_unit == enemy_unit then
				for __, fire_effect_id in ipairs(dot_info.fire_effects) do
					World:effect_manager():fade_kill(fire_effect_id)
				end
			end
		end
	end
end

function DOTManager:start_burn_body_sound(dot_info, delay)
	local sound_loop_burn_body = SoundDevice:create_source("FireBurnBody")

	sound_loop_burn_body:set_position(dot_info.enemy_unit:position())
	sound_loop_burn_body:post_event("burn_loop_body")

	dot_info.sound_source = sound_loop_burn_body

	if delay then
		managers.enemy:add_delayed_clbk("FireBurnBody", callback(self, self, "_stop_burn_body_sound", sound_loop_burn_body), TimerManager:game():time() + delay - 0.5)
	end
end

function DOTManager:_stop_burn_body_sound(sound_source)
	sound_source:post_event("burn_loop_body_stop")
	managers.enemy:add_delayed_clbk("FireBurnBodyFade", callback(self, self, "_release_sound_source", {
		sound_source = sound_source
	}), TimerManager:game():time() + 0.5)
end

function DOTManager:_release_sound_source(...)
end

local tmp_used_flame_objects = nil
function DOTManager:_start_enemy_fire_effect(dot_info)
	local num_objects = #tweak_data.fire.fire_bones
	local num_effects = math.random(3, num_objects)

	if not tmp_used_flame_objects then
		tmp_used_flame_objects = {}

		for _, effect in ipairs(tweak_data.fire.fire_bones) do
			table.insert(tmp_used_flame_objects, false)
		end
	end

	local idx = 1
	local effect_id = nil
	local effects_table = {}

	for i = 1, num_effects, 1 do
		while tmp_used_flame_objects[idx] do
			idx = math.random(1, num_objects)
		end

		local effect = tweak_data.fire.effects.endless[tweak_data.fire.effects_cost[i]]
		local bone = dot_info.enemy_unit:get_object(Idstring(tweak_data.fire.fire_bones[idx]))

		if bone then
			effect_id = World:effect_manager():spawn({
				effect = Idstring(effect),
				parent = bone
			})

			table.insert(effects_table, effect_id)
		end

		tmp_used_flame_objects[idx] = true
	end

	dot_info.fire_effects = effects_table

	for idx, _ in ipairs(tmp_used_flame_objects) do
		tmp_used_flame_objects[idx] = false
	end
end