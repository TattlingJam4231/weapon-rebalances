function WeaponDescription._get_mods_stats(name, base_stats, equipped_mods, bonus_stats)
	local mods_stats = {}
	local modifier_stats = tweak_data.weapon[name].stats_modifiers

	for _, stat in pairs(WeaponDescription._stats_shown) do
		mods_stats[stat.name] = {
			index = 0,
			value = 0
		}
	end

	if equipped_mods then
		local tweak_stats = tweak_data.weapon.stats
		local tweak_factory = tweak_data.weapon.factory.parts
		local factory_id = managers.weapon_factory:get_factory_id_by_weapon_id(name)
		local default_blueprint = managers.weapon_factory:get_default_blueprint_by_factory_id(factory_id)

		if bonus_stats then
			for _, stat in pairs(WeaponDescription._stats_shown) do
				if stat.name == "magazine" then
					local ammo = mods_stats[stat.name].index
					ammo = ammo and ammo + (tweak_data.weapon[name].stats.extra_ammo or 0)
					mods_stats[stat.name].value = mods_stats[stat.name].value + (ammo and tweak_data.weapon.stats.extra_ammo[ammo] or 0)
				elseif stat.name == "totalammo" then
					local ammo = bonus_stats.total_ammo_mod
					mods_stats[stat.name].index = mods_stats[stat.name].index + (ammo or 0)
				else
					mods_stats[stat.name].index = mods_stats[stat.name].index + (bonus_stats[stat.name] or 0)
				end
			end
		end

		local part_data = nil

		for _, mod in ipairs(equipped_mods) do
			part_data = managers.weapon_factory:get_part_data_by_part_id_from_weapon(mod, factory_id, default_blueprint, equipped_mods)

			if part_data then
				for _, stat in pairs(WeaponDescription._stats_shown) do
					if part_data.stats then
						if stat.name == "magazine" then
							local ammo = part_data.stats.extra_ammo
							ammo = ammo and ammo + (tweak_data.weapon[name].stats.extra_ammo or 0)
							mods_stats[stat.name].value = mods_stats[stat.name].value + (ammo and tweak_data.weapon.stats.extra_ammo[ammo] or 0)
						elseif stat.name == "totalammo" then
							local ammo = part_data.stats.total_ammo_mod
							mods_stats[stat.name].index = mods_stats[stat.name].index + (ammo or 0)
						elseif stat.name == "reload" then
							if not base_stats[stat.name].index then
								debug_pause("weapon is missing reload stat", name)
							end

							mods_stats[stat.name].index = mods_stats[stat.name].index + (part_data.stats[stat.name] or 0)
						else
							mods_stats[stat.name].index = mods_stats[stat.name].index + (part_data.stats[stat.name] or 0)
						end
					end
				end
			end
		end

		local index, stat_name = nil

		for _, stat in pairs(WeaponDescription._stats_shown) do
			stat_name = stat.name

			if mods_stats[stat.name].index and tweak_stats[stat_name] then
				if stat_name == "reload" then
					local chosen_index = math.clamp(base_stats[stat_name].index + mods_stats[stat_name].index, 1, #tweak_stats[stat_name])
					local reload_time = managers.blackmarket:get_reload_time(name)
					local mult = 1 / tweak_stats[stat_name][chosen_index]
					local mod_value = reload_time * mult
					mods_stats[stat.name].value = mod_value - base_stats[stat.name].value
				else
					if stat_name == "concealment" then
						index = base_stats[stat.name].index + mods_stats[stat.name].index
					else
						index = math.clamp(base_stats[stat.name].index + mods_stats[stat.name].index, 1, #tweak_stats[stat_name])
					end

					mods_stats[stat.name].value = stat.index and index or tweak_stats[stat_name][index] * tweak_data.gui.stats_present_multiplier
					local offset = math.min(tweak_stats[stat_name][1], tweak_stats[stat_name][#tweak_stats[stat_name]]) * tweak_data.gui.stats_present_multiplier

					if stat.offset then
						mods_stats[stat.name].value = mods_stats[stat.name].value - offset
					end

					if stat.revert then
						local max_stat = math.max(tweak_stats[stat_name][1], tweak_stats[stat_name][#tweak_stats[stat_name]]) * tweak_data.gui.stats_present_multiplier

						if stat.offset then
							max_stat = max_stat - offset
						end

						mods_stats[stat.name].value = max_stat - mods_stats[stat.name].value
					end

					if modifier_stats and modifier_stats[stat.name] then
						local mod = modifier_stats[stat.name]

						if stat.revert and not stat.index then
							local real_base_value = tweak_stats[stat_name][index]
							local modded_value = real_base_value * mod
							local offset = math.min(tweak_stats[stat_name][1], tweak_stats[stat_name][#tweak_stats[stat_name]])

							if stat.offset then
								modded_value = modded_value - offset
							end

							local max_stat = math.max(tweak_stats[stat_name][1], tweak_stats[stat_name][#tweak_stats[stat_name]])

							if stat.offset then
								max_stat = max_stat - offset
							end

							local new_value = (max_stat - modded_value) * tweak_data.gui.stats_present_multiplier

							if mod ~= 0 and (tweak_stats[stat_name][1] < modded_value or modded_value < tweak_stats[stat_name][#tweak_stats[stat_name]]) then
								new_value = (new_value + mods_stats[stat.name].value / mod) / 2
							end

							mods_stats[stat.name].value = new_value
						else
							mods_stats[stat.name].value = mods_stats[stat.name].value * mod
						end
					end

					if stat.percent then
						local max_stat = stat.index and #tweak_stats[stat.name] or math.max(tweak_stats[stat.name][1], tweak_stats[stat.name][#tweak_stats[stat.name]]) * tweak_data.gui.stats_present_multiplier

						if stat.offset then
							max_stat = max_stat - offset
						end

						local ratio = mods_stats[stat.name].value / max_stat
						mods_stats[stat.name].value = ratio * 100
					end

					mods_stats[stat.name].value = mods_stats[stat.name].value - base_stats[stat.name].value
				end
			end
		end
	end

	return mods_stats
end

function WeaponDescription._get_weapon_mod_stats(mod_name, weapon_name, base_stats, mods_stats, equipped_mods)
	local tweak_stats = tweak_data.weapon.stats
	local tweak_factory = tweak_data.weapon.factory.parts
	local modifier_stats = tweak_data.weapon[weapon_name].stats_modifiers
	local factory_id = managers.weapon_factory:get_factory_id_by_weapon_id(weapon_name)
	local default_blueprint = managers.weapon_factory:get_default_blueprint_by_factory_id(factory_id)
	local part_data = nil
	local mod_stats = {
		chosen = {},
		equip = {}
	}

	for _, stat in pairs(WeaponDescription._stats_shown) do
		mod_stats.chosen[stat.name] = 0
		mod_stats.equip[stat.name] = 0
	end

	mod_stats.chosen.name = mod_name

	if equipped_mods then
		for _, mod in ipairs(equipped_mods) do
			if tweak_factory[mod] and tweak_factory[mod_name].type == tweak_factory[mod].type then
				mod_stats.equip.name = mod

				break
			end
		end
	end

	local curr_stats = base_stats
	local index, wanted_index = nil

	for _, mod in pairs(mod_stats) do
		part_data = nil

		if mod.name then
			if tweak_data.blackmarket.weapon_skins[mod.name] and tweak_data.blackmarket.weapon_skins[mod.name].bonus and tweak_data.economy.bonuses[tweak_data.blackmarket.weapon_skins[mod.name].bonus] then
				part_data = {
					stats = tweak_data.economy.bonuses[tweak_data.blackmarket.weapon_skins[mod.name].bonus].stats
				}
			else
				part_data = managers.weapon_factory:get_part_data_by_part_id_from_weapon(mod.name, factory_id, default_blueprint, equipped_mods)
			end
		end

		for _, stat in pairs(WeaponDescription._stats_shown) do
			if part_data and part_data.stats then
				if stat.name == "magazine" then
					local ammo = part_data.stats.extra_ammo
					ammo = ammo and ammo + (tweak_data.weapon[weapon_name].stats.extra_ammo or 0)
					mod[stat.name] = ammo and tweak_data.weapon.stats.extra_ammo[ammo] or 0
				elseif stat.name == "totalammo" then
					local chosen_index = part_data.stats.total_ammo_mod or 0
					chosen_index = math.clamp(base_stats[stat.name].index + chosen_index, 1, #tweak_stats.total_ammo_mod)
					mod[stat.name] = base_stats[stat.name].value * tweak_stats.total_ammo_mod[chosen_index]
				elseif stat.name == "reload" then
					local chosen_index = part_data.stats.reload or 0
					chosen_index = math.clamp(base_stats[stat.name].index + chosen_index, 1, #tweak_stats[stat.name])
					local reload_time = managers.blackmarket:get_reload_time(weapon_name)
					local mult = 1 / tweak_data.weapon.stats[stat.name][chosen_index]
					local mod_value = reload_time * mult
					mod[stat.name] = mod_value - base_stats[stat.name].value
				else
					local chosen_index = part_data.stats[stat.name] or 0

					if tweak_stats[stat.name] then
						wanted_index = curr_stats[stat.name].index + chosen_index
						index = math.clamp(wanted_index, 1, #tweak_stats[stat.name])
						mod[stat.name] = stat.index and index or tweak_stats[stat.name][index] * tweak_data.gui.stats_present_multiplier

						if wanted_index ~= index then
							print("[WeaponDescription._get_weapon_mod_stats] index went out of bound, estimating value", "mod_name", mod_name, "stat.name", stat.name, "wanted_index", wanted_index, "index", index)

							if stat.index then
								index = wanted_index
								mod[stat.name] = index
							elseif index ~= curr_stats[stat.name].index then
								local diff_value = tweak_stats[stat.name][index] - tweak_stats[stat.name][curr_stats[stat.name].index]
								local diff_index = index - curr_stats[stat.name].index
								local diff_ratio = diff_value / diff_index
								diff_index = wanted_index - index
								diff_value = diff_index * diff_ratio
								mod[stat.name] = mod[stat.name] + diff_value * tweak_data.gui.stats_present_multiplier
							end
						end

						local offset = math.min(tweak_stats[stat.name][1], tweak_stats[stat.name][#tweak_stats[stat.name]]) * tweak_data.gui.stats_present_multiplier

						if stat.offset then
							mod[stat.name] = mod[stat.name] - offset
						end

						if stat.revert then
							local max_stat = math.max(tweak_stats[stat.name][1], tweak_stats[stat.name][#tweak_stats[stat.name]]) * tweak_data.gui.stats_present_multiplier

							if stat.revert then
								max_stat = max_stat - offset
							end

							mod[stat.name] = max_stat - mod[stat.name]
						end

						if modifier_stats and modifier_stats[stat.name] then
							local mod_stat = modifier_stats[stat.name]

							if stat.revert and not stat.index then
								local real_base_value = tweak_stats[stat.name][index]
								local modded_value = real_base_value * mod_stat
								local offset = math.min(tweak_stats[stat.name][1], tweak_stats[stat.name][#tweak_stats[stat.name]])

								if stat.offset then
									modded_value = modded_value - offset
								end

								local max_stat = math.max(tweak_stats[stat.name][1], tweak_stats[stat.name][#tweak_stats[stat.name]])

								if stat.offset then
									max_stat = max_stat - offset
								end

								local new_value = (max_stat - modded_value) * tweak_data.gui.stats_present_multiplier

								if mod_stat ~= 0 and (tweak_stats[stat.name][1] < modded_value or modded_value < tweak_stats[stat.name][#tweak_stats[stat.name]]) then
									new_value = (new_value + mod[stat.name] / mod_stat) / 2
								end

								mod[stat.name] = new_value
							else
								mod[stat.name] = mod[stat.name] * mod_stat
							end
						end

						if stat.percent then
							local max_stat = stat.index and #tweak_stats[stat.name] or math.max(tweak_stats[stat.name][1], tweak_stats[stat.name][#tweak_stats[stat.name]]) * tweak_data.gui.stats_present_multiplier

							if stat.offset then
								max_stat = max_stat - offset
							end

							local ratio = mod[stat.name] / max_stat
							mod[stat.name] = ratio * 100
						end

						mod[stat.name] = mod[stat.name] - curr_stats[stat.name].value
					end
				end
			end
		end
	end

	return mod_stats
end