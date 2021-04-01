if not wr_tweakstats then
	if not tweak_data then return end

	tweak_data.projectiles.launcher_rocket = {
		damage = 620,
		launch_speed = 2500,
		curve_pow = 0.1,
		player_damage = 40,
		range = 800,
		init_timer = 2.5,
		mass_look_up_modifier = 1,
		sound_event = "rpg_explode",
		name_id = "bm_launcher_rocket"
	}

	tweak_data.projectiles.rocket_ray_frag = {
		damage = 210,
		launch_speed = 2500,
		curve_pow = 0.1,
		player_damage = 20,
		range = 600,
		init_timer = 2.5,
		mass_look_up_modifier = 1,
		sound_event = "rpg_explode",
		name_id = "bm_launcher_rocket",
		projectile_trail = true,
		adjust_z = 0,
		push_at_body_index = 0
	}

	tweak_data.projectiles.launcher_frag_china = {
		damage = 96,
		launch_speed = 1250,
		curve_pow = 0,
		player_damage = 8,
		range = 250,
		init_timer = 2.5,
		mass_look_up_modifier = 1,
		sound_event = "gl_explode",
		name_id = "bm_launcher_frag"
		}

	tweak_data.projectiles.launcher_frag_arbiter = {
		damage = 54,
		launch_speed = 7000,
		curve_pow = 0.4,
		player_damage = 4,
		range = 350,
		init_timer = 2.5,
		mass_look_up_modifier = 1,
		sound_event = "gl_explode",
		name_id = "bm_launcher_frag"
	}

	wr_tweakstats = true
end