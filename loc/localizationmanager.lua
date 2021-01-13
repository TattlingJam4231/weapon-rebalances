Hooks:Add("LocalizationManagerPostInit", "Weapon Rebalances Localization", function(loc)
	LocalizationManager:add_localized_strings({
		["menu_dance_instructor_desc"] = "BASIC: ##2 points##\nYour pistol magazine sizes are increased by ##5## bullets.\n\nACE: ##4 points##\nYou realod all pistols ##50%## faster.",
		["menu_expert_handling_desc"] = "BASIC: ##3 points##\nEach successful pistol hit gives you a 10% increased accuracy bonus for ##10## seconds and can stack ##4## times.\n\nACE: ##6 points##\nYou gain a ##50%## increased rate of fire with pistols.",
		["menu_sniper_graze_damage_desc"] = "BASIC: ##4 points##\nSnipers that hit their target deal ##20%## of the damage dealt in a ##1m## radius around the bullet trajectory. \n\nWhen fired in single shot mode, Assault Rifles that hit their target deal ##20%## of the damage dealt in a ##2.75m## radius around the bullet impact.\n\nACE: ##8 points##\nIf a bullet would headshot-kill someone, the graze skill will deal ##100%## of the damage dealt instead of ##20%##."
	})
end)