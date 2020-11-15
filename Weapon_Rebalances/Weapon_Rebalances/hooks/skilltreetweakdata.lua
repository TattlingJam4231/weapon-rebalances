local original_init = SkillTreeTweakData.init

function SkillTreeTweakData:init()
	original_init(self)
	
	self.skills.dance_instructor = {
		{
			upgrades = {
				"pistol_magazine_capacity_inc_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"pistol_reload_speed_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_dance_instructor",
		desc_id = "menu_dance_instructor_desc",
		icon_xy = {
			11,
			0
		}
	}
	self.skills.expert_handling = {
		{
			upgrades = {
				"pistol_stacked_accuracy_bonus_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"pistol_fire_rate_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_expert_handling",
		desc_id = "menu_expert_handling_desc",
		icon_xy = {
			11,
			1
		}
	}
end