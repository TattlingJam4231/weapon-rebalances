PlayerAction.TriggerHappy = {
	Priority = 1,
	Function = function (player_manager, damage_bonus, max_stacks, max_time, duration)
		local co = coroutine.running()
		local current_time = Application:time()
		local current_stacks = 1
        local data = self:upgrade_value("pistol", "stacking_hit_damage_multiplier", 0)

		local function on_hit(unit, attack_data)
			local attacker_unit = attack_data.attacker_unit

			if attacker_unit == player_manager:player_unit() then
				current_stacks = current_stacks + 1

				if current_stacks <= max_stacks then
					player_manager:mul_to_property("trigger_happy", damage_bonus)
				end

				if current_stacks >= max_stacks then

                    max_time = current_time + data.max_time
				end
			end
		end

		player_manager:mul_to_property("trigger_happy", damage_bonus)
		player_manager:register_message(Message.OnEnemyShot, co, on_hit)

		while current_time < max_time do
			current_time = Application:time()

			if not player_manager:is_current_weapon_of_category("pistol") then
				break
			end

			coroutine.yield(co)
		end

		player_manager:remove_property("trigger_happy")
		player_manager:unregister_message(Message.OnEnemyShot, co)
	end
}