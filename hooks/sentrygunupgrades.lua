local original_init = UpgradesTweakData.init
function UpgradesTweakData:init(...)
	original_init(self, ...)
	
	self.sentry_gun_base_ammo = 600
	
end
