function FPCameraPlayerBase:recoil_kick(up, down, left, right)
	if math.abs(self._recoil_kick.accumulated) < 100 --[[ changed to 100 from 20 ]] then 
		local v = math.lerp(up, down, math.random())

		self._recoil_kick.accumulated = (self._recoil_kick.accumulated or 0) + (v * 5 / (5 + self._recoil_kick.accumulated)) -- added multiplier to v of (5 / (5 + self._recoil_kick.accumulated))

	end

	local h = math.lerp(left, right, math.random())


	-- Weapon Rebalances
	local recoil_max = math.abs((self._recoil_kick.h.accumulated or 0) + (h * 5 / (5 + self._recoil_kick.h.accumulated)))
	local recoil_min = math.abs((self._recoil_kick.h.accumulated or 0) + h)
	self._recoil_kick.h.accumulated = recoil_min < recoil_max and (self._recoil_kick.h.accumulated or 0) + h or (self._recoil_kick.h.accumulated or 0) + (h * 5 / (5 + self._recoil_kick.h.accumulated)) -- added multiplier to h of (5 / (5 + self._recoil_kick.accumulated)) if horizontal recoil would move camera away from center
	-- Weapon Rebalances


end

function FPCameraPlayerBase:_vertical_recoil_kick(t, dt)
	local player_state = managers.player:current_state()

	if player_state == "bipod" then
		self:break_recoil()

		return 0
	end

	local r_value = 0

	if self._recoil_kick.current and self._episilon < math.abs(self._recoil_kick.accumulated - self._recoil_kick.current) --[[ checks against absolute value of the difference ]] and 0 < self._recoil_kick.accumulated --[[ added check for recoil above 0 ]] then
		local n = math.step(self._recoil_kick.current, self._recoil_kick.accumulated, 40 * dt)
		r_value = n - self._recoil_kick.current
		self._recoil_kick.current = n


	-- Weapon Rebalances
	elseif self._recoil_wait and self._recoil_kick.to_reduce then
		self._recoil_wait = self._recoil_wait - dt

		self._recoil_kick.current = nil
		local n = math.lerp(math.max(self._recoil_kick.to_reduce, 0), 0, (9 / (1 + 10 * self._recoil_wait)) * dt)
		r_value = -(math.max(self._recoil_kick.to_reduce, 0) - n)
		self._recoil_kick.to_reduce = n

		if self._recoil_kick.to_reduce == 0 then
			self._recoil_kick.to_reduce = nil
		end
	-- Weapon Rebalances


		if self._recoil_wait < 0 then
			self._recoil_wait = nil
		end
	elseif self._recoil_kick.to_reduce then
		self._recoil_kick.current = nil
		local n = math.lerp(math.max(self._recoil_kick.to_reduce, 0), 0, 9 * dt)
		r_value = -(math.max(self._recoil_kick.to_reduce, 0) - n)
		self._recoil_kick.to_reduce = n

		if self._recoil_kick.to_reduce == 0 then
			self._recoil_kick.to_reduce = nil
		end
	end

	return r_value
end

function FPCameraPlayerBase:_horizonatal_recoil_kick(t, dt)
	local player_state = managers.player:current_state()

	if player_state == "bipod" then
		return 0
	end

	local r_value = 0

	if self._recoil_kick.h.current and self._episilon < math.abs(self._recoil_kick.h.accumulated - self._recoil_kick.h.current) then
		local n = math.step(self._recoil_kick.h.current, self._recoil_kick.h.accumulated, 40 * dt)
		r_value = n - self._recoil_kick.h.current
		self._recoil_kick.h.current = n
	

	-- Weapon Rebalances
	elseif self._recoil_wait and self._recoil_kick.h.to_reduce then
		self._recoil_wait = self._recoil_wait - dt
		
		self._recoil_kick.h.current = nil
		local n = math.lerp(self._recoil_kick.h.to_reduce, 0, (5 / (1 + self._recoil_wait)) * dt)
		r_value = -(self._recoil_kick.h.to_reduce - n)
		self._recoil_kick.h.to_reduce = n

		if self._recoil_kick.h.to_reduce == 0 then
			self._recoil_kick.h.to_reduce = nil
		end
	-- Weapon Rebalances


		if self._recoil_wait < 0 then
			self._recoil_wait = nil
		end
	elseif self._recoil_kick.h.to_reduce then
		self._recoil_kick.h.current = nil
		local n = math.lerp(self._recoil_kick.h.to_reduce, 0, 5 * dt)
		r_value = -(self._recoil_kick.h.to_reduce - n)
		self._recoil_kick.h.to_reduce = n

		if self._recoil_kick.h.to_reduce == 0 then
			self._recoil_kick.h.to_reduce = nil
		end
	end

	return r_value
end