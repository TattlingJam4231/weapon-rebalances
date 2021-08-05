Hooks:PostHook(BlackMarketTweakData, "_init_projectiles", "WR ProjectilesTweakData init", function(self)

    --piglet
        self.projectiles.launcher_frag_m32.time_cheat = 0.5
        self.projectiles.launcher_incendiary_m32 .time_cheat = 0.5
        self.projectiles.launcher_electric_m32.time_cheat = 0.5

end)