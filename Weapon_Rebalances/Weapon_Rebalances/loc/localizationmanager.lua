Hooks:Add("LocalizationManagerPostInit", "Weapon Rebalances Localization", function(loc)
	LocalizationManager:add_localized_strings({
		["menu_dance_instructor_desc"] = 		"BASIC: ##2 points##\n" ..
												"Your pistol magazine sizes are increased by ##5## bullets.\n\n" ..
												"ACE: ##4 points##\n" ..
												"You reload all pistols ##50%## faster.",

		["menu_expert_handling_desc"] = 		"BASIC: ##3 points##\n" ..
												"Each successful pistol hit gives you a 10% increased accuracy bonus for ##10## seconds and can stack ##4## times.\n\n" ..
												"ACE: ##6 points##\n" ..
												"You gain a ##50%## increased rate of fire with pistols.",

		["menu_sniper_graze_damage_desc"] = 	"BASIC: ##4 points##\n" ..
												"Snipers that hit their target deal ##20%## of the damage dealt in a ##1m## radius around the bullet trajectory.\n\n" ..
												"When fired in single shot mode, Assault Rifles that hit their target deal ##20%## of the damage dealt in a ##2.75m## radius around the bullet impact.\n\n" ..
												"ACE: ##8 points##\n" ..
												"If a bullet would headshot someone, the graze skill will deal ##100%## of the damage dealt instead of ##20%##.",

		["menu_speedy_reload_beta_desc"] = 		"BASIC: ##3 points##\n" ..
												"Increases your reload speed with SMGs, Assault Rifles and Sniper Rifles by ##35%##\n\n" ..
												"ACE: ##6 points##\n" ..
												"Any killing headshot will increase your reload speed by ##100%## for ##4## seconds. " ..
												"Can only be triggerd by SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode.",

		["menu_shotgun_cqb_beta_desc"] = 		"BASIC: ##2 points##\n" ..
												"You reload Shotguns ##15%## faster.\n\n" ..
												"ACE: ##4 points##\n" ..
												"You reload Shotguns an additional ##35%## faster. You gain a ##125%## increased steel sight zoom speed when using Shotguns.",

		["bm_wp_upg_a_custom_desc"] =			"Fewer pellets but larger impact. Pellets can penetrate one enemy and can penetrate walls at close range.",

		["bm_wp_upg_a_explosive_desc"] =		"Fires three explosive charges. This ammo type is harder to find.",

		["bm_wp_upg_a_piercing_desc"] =			"Fires poison tipped darts. Penetrates body armor.",

		["bm_wp_upg_a_slug_desc"] =				"Fires a single lead slug that penetrates body armor, enemies, shields and walls up to eight times.",

		["bm_wp_upg_a_dragons_breath_desc"] = 	"Fires pellets that go up in sparks and flames. Burns through shields and body armor. This ammo type is harder to find."
	})
end)