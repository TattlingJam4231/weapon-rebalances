local original_init = WeaponFactoryTweakData.create_ammunition

function WeaponFactoryTweakData:create_ammunition()
	original_init(self)
	
	local assault_rifles = {"wpn_fps_ass_ching"}
	local smgs = {}
	local pistols = {}
	
	self.parts.wpn_upg_a_fmj_t4 = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_slug",
		dlc = "gage_pack_shotgun",
		name_id = "FMJ",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			damage = -55,
			spread = 2,
			total_ammo_mod = 0
		},
		custom_stats = {
			armor_piercing_add = 0,
			can_shoot_through_shield = false,
			can_shoot_through_wall = false,
			can_shoot_through_enemy = true
		}
	}
	
	for _, factory_id in ipairs(assault_rifles) do
		if self[factory_id] and self[factory_id].uses_parts then
			table.insert(self[factory_id].uses_parts, "wpn_upg_a_fmj_t4")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_upg_a_fmj_t4")
		end
	end
	
	
end