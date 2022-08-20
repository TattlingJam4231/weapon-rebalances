Hooks:Add("LocalizationManagerPostInit", "WRd Localization", function(loc)
	LocalizationManager:add_localized_strings({
		["menu_dance_instructor_desc"] = 				"BASIC: ##2 points##\n" ..
														"Your pistol magazine sizes are increased by ##5## bullets.\n\n" ..
														"ACE: ##4 points##\n" ..
														"You reload all pistols ##50%## faster.",

		["menu_expert_handling_desc"] = 				"BASIC: ##3 points##\n" ..
														"Each successful pistol hit gives you a 10% increased accuracy bonus for ##10## seconds and can stack ##4## times.\n\n" ..
														"ACE: ##6 points##\n" ..
														"You gain a ##50%## increased rate of fire with pistols.",

		["menu_sniper_graze_damage_desc"] = 			"BASIC: ##4 points##\n" ..
														"Snipers that hit their target deal ##20%## of the damage dealt in a ##1m## radius around the bullet trajectory.\n\n" ..
														"When fired in single shot fire mode, SMGs and Assault Rifles that hit their target deal ##20%## of the damage dealt in a ##2.5m## radius around the bullet impact.\n\n" ..
														"ACE: ##8 points##\n" ..
														"If a bullet would headshot someone, the graze skill will deal ##100%## of the damage dealt instead of ##20%##.",

		["menu_speedy_reload_beta_desc"] = 				"BASIC: ##3 points##\n" ..
														"Increases your reload speed with SMGs, Assault Rifles and Sniper Rifles by ##35%##\n\n" ..
														"ACE: ##6 points##\n" ..
														"Any killing headshot will increase your reload speed by ##100%## for ##4## seconds. " ..
														"Can only be triggerd by SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode.",

		["menu_shotgun_cqb_beta_desc"] = 				"BASIC: ##2 points##\n" ..
														"You reload Shotguns ##15%## faster.\n\n" ..
														"ACE: ##4 points##\n" ..
														"You reload Shotguns an additional ##35%## faster. You gain a ##125%## increased steel sight zoom speed when using Shotguns.",

		["menu_triathlete_beta_desc"] =					"BASIC: ##1 points##\n" ..
														"Increases your supply of cable ties by ##4##. You can cable tie hostages ##75%## faster.\n\n" ..
														"ACE: ##3 points##\n" ..
														"You and your crew gain ##1## damage absorption for each hostage you have. This effect stacks with up to a maximum of ##4## hostages.\n\n" ..
														"Note: This effect does not stack with other players Forced Friendship skill.",

		["menu_single_shot_ammo_return_beta_desc"] =	"BASIC: ##3 points##\n" ..
														"Getting a headshot within ##2## seconds of your previous headshot will refund ##1## bullet to your used weapon. " ..
														"Can only be triggered by SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode.\n\n" ..
														"ACE: ##6 points##\n" ..
														"The time window is increased to ##4## seconds.",

		["menu_fire_control_beta_desc"] = 				"BASIC: ##2 points##\n" ..
														"Your accuracy penalty is decreased by ##20%## when shooting while moving.\n\n" ..
														"ACE: ##4 points##\n" ..
														"You gain ##12## weapon accuracy while firing from the hip.",

		["menu_bandoliers_beta_desc"] = 				"BASIC: ##4 points##\n" ..
														"Your total ammo capacity is increased by ##25%##.\n\n" ..
														"ACE: ##8 points##\n" ..
														"Increases the amount of ammo you gain from ammo boxes by ##50%##." ..
														"You also gain a ##5%## base chance to get a throwable from an ammo box." ..
														"The base chance is increased by ##1%## for each ammo box you pick up that does not contain a throwable." ..
														"When a throwable has been found, the chance is reset to its base value.",

		["menu_up_you_go_beta_desc"] = 					"BASIC: ##2 points##\n" ..
														"You take ##30%## less damage for ##10## seconds after being revived.\n\n" .. 
														"ACE: ##4 points##\n" ..
														"You receive an additional ##20%## of your max health when revived.",

		["menu_combat_medic_beta_desc"] = 				"BASIC: ##1 points##\n" ..
														"You gain a ##30%## damage reduction for ##5## seconds both after and during reviving another player.\n\n" .. 
														"ACE: ##3 points##\n" ..
														"Reviving a crew  member gives them an additional ##15%## of their max health.",

		["bm_wp_upg_a_custom_desc"] =					"Fewer pellets but larger impact. Pellets can penetrate one enemy and can penetrate walls at close range.",

		["bm_wp_upg_a_explosive_desc"] =				"Fires one explosive charge that kills or stuns targets. This ammo type is harder to find.",

		["bm_wp_upg_a_piercing_desc"] =					"Fires darts that have a longer effective range. Penetrates body armor and causes enemies to bleed.",

		["bm_wp_upg_a_slug_desc"] =						"Fires a single lead slug that has a longer effective range. Penetrates enemies, shields and walls up to four times. Penetrates body armor.",

		["bm_wp_upg_a_dragons_breath_desc"] = 			"Fires pellets that go up in sparks and flames. Burns through shields and body armor. This ammo type is harder to find."
	})
end)