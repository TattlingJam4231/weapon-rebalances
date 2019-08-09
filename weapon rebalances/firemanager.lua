-- 	dot variables
--		hurt_animation_chance: chance for animation on proc
--		dot_damage: damage delt per tick
--		dot_length: duration of dot
--		dot_tick_period: time between each damage tick
--		scale_length: time added each hit on a doted enemy(overrides default dot timer refresh)
--		scale_damage: damage added each hit on a doted enemy
--		dot_decay: damage lost per decay tick
--		dot_decay_rate: number of damage ticks per decay tick
--		dot_decay variables override both default dot timer refresh and scale_length

function FireManager:update(t, dt)
	for index = #self._doted_enemies, 1, -1 do
		local dot_info = self._doted_enemies[index]

		local tickrate = dot_info.dot_tick_period or 0.5
		
		dot_info.decay_counter = dot_info.decay_counter or 0
		
		if t > dot_info.fire_damage_received_time and dot_info.fire_dot_counter >= tickrate then
			self:_damage_fire_dot(dot_info)
			
			dot_info.decay_counter = dot_info.decay_counter + 1
			
			if dot_info.dot_decay and dot_info.decay_counter == dot_info.dot_decay_rate then
				dot_info.dot_damage = dot_info.dot_damage - dot_info.dot_decay
				
				dot_info.decay_counter = 0
			end

			dot_info.fire_dot_counter = 0
		end

		if t > dot_info.fire_damage_received_time + dot_info.dot_length then
			if dot_info.fire_effects then
				for _, fire_effect_id in ipairs(dot_info.fire_effects) do
					World:effect_manager():fade_kill(fire_effect_id)
				end
			end

			self:_remove_flame_effects_from_doted_unit(dot_info.enemy_unit)
			self:_stop_burn_body_sound(dot_info.sound_source)
			table.remove(self._doted_enemies, index)

			if dot_info.enemy_unit and alive(dot_info.enemy_unit) then
				self._dozers_on_fire[dot_info.enemy_unit:id()] = nil
			end
		else
			dot_info.fire_dot_counter = dot_info.fire_dot_counter + dt
		end
	end
end

function FireManager:_add_doted_enemy(enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, dot_tick_period, scale_length, scale_damage, dot_decay, dot_decay_rate, user_unit, is_molotov)
	local contains = false

	if self._doted_enemies then
		for _, dot_info in ipairs(self._doted_enemies) do
			if dot_info.enemy_unit == enemy_unit then
				if dot_info.scale_damage then
					dot_info.dot_damage = dot_info.dot_damage + scale_damage
				end
				
				if dot_info.dot_decay and dot_info.dot_decay_rate then
					dot_info.dot_length = ((dot_info.dot_damage / dot_info.dot_decay) * dot_info.dot_decay_rate * dot_info.dot_tick_period) + 0.1
				elseif dot_info.scale_length then
					dot_info.dot_length = dot_info.dot_length + scale_length
				elseif dot_info.fire_damage_received_time + dot_info.dot_length < fire_damage_received_time + dot_length then
					dot_info.fire_damage_received_time = fire_damage_received_time
					dot_info.dot_length = dot_length
				end
				
				contains = true
			end
		end

		if not contains then
			local dot_info = {
				fire_dot_counter = 0,
				enemy_unit = enemy_unit,
				fire_damage_received_time = fire_damage_received_time,
				weapon_unit = weapon_unit,
				dot_length = dot_length,
				dot_damage = dot_damage,
				dot_tick_period = dot_tick_period,
				scale_length = scale_length or nil,
				scale_damage = scale_damage or nil,
				dot_decay = dot_decay or nil,
				dot_decay_rate = dot_decay_rate or nil,
				user_unit = user_unit,
				is_molotov = is_molotov
			}

			table.insert(self._doted_enemies, dot_info)
			self:_start_enemy_fire_effect(dot_info)
			self:start_burn_body_sound(dot_info)
		end

		self:check_achievemnts(enemy_unit, fire_damage_received_time)
	end
end

function FireManager:sync_add_fire_dot(enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, dot_tick_period, scale_length, scale_damage, dot_decay, dot_decay_rate, user_unit, is_molotov)
	if enemy_unit then
		local t = TimerManager:game():time()

		self:_add_doted_enemy(enemy_unit, t, weapon_unit, dot_length, dot_damage, dot_tick_period, scale_length, scale_damage, dot_decay, dot_decay_rate, user_unit, is_molotov)
	end
end

function FireManager:add_doted_enemy(enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, dot_tick_period, scale_length, scale_damage, dot_decay, dot_decay_rate, user_unit, is_molotov)
	local dot_info = self:_add_doted_enemy(enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, dot_tick_period, scale_length, scale_damage, dot_decay, dot_decay_rate, user_unit, is_molotov)

	managers.network:session():send_to_peers_synched("sync_add_doted_enemy", enemy_unit, fire_damage_received_time, weapon_unit, dot_length, dot_damage, dot_tick_period, scale_length, scale_damage, dot_decay, dot_decay_rate, user_unit, is_molotov)
end

function FireManager:_start_enemy_fire_effect(dot_info)
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

function FireManager:_damage_fire_dot(dot_info)
	if dot_info.user_unit and dot_info.user_unit == managers.player:player_unit() or not dot_info.user_unit and Network:is_server() then
		local attacker_unit = managers.player:player_unit()
		local col_ray = {
			unit = dot_info.enemy_unit
		}
		local damage = dot_info.dot_damage
		local ignite_character = false
		local variant = "fire"
		local weapon_unit = dot_info.weapon_unit
		local is_fire_dot_damage = true
		local is_molotov = dot_info.is_molotov

		FlameBulletBase:give_fire_damage_dot(col_ray, weapon_unit, attacker_unit, damage, is_fire_dot_damage, is_molotov)
	end
end

function FireManager:_fade_out_burn_loop_sound(custom_params)
	local fade_duration = 2

	custom_params.sound_source:post_event("burn_loop_gen_stop_fade")
	managers.enemy:add_delayed_clbk("MolotovFading", callback(GrenadeBase, GrenadeBase, "_dispose_of_sound", custom_params), TimerManager:game():time() + fade_duration)
end
