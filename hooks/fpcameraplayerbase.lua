local new = true

function FPCameraPlayerBase:recoil_kick(up, down, left, right)
	if new then

		if math.abs(self._recoil_kick.accumulated) < 100 then
			local v = math.lerp(up, down, math.random())
			self._recoil_kick.accumulated = (self._recoil_kick.accumulated or 0) + (v * 5 / (5 + self._recoil_kick.accumulated))
		end

		local h = math.lerp(left, right, math.random())
		local recoil_max = math.abs((self._recoil_kick.h.accumulated or 0) + (h * 5 / (5 + self._recoil_kick.h.accumulated)))
		local recoil_min = math.abs((self._recoil_kick.h.accumulated or 0) + h)
		self._recoil_kick.h.accumulated = recoil_min < recoil_max and (self._recoil_kick.h.accumulated or 0) + h or (self._recoil_kick.h.accumulated or 0) + (h * 5 / (5 + self._recoil_kick.h.accumulated))

	else

		if math.abs(self._recoil_kick.accumulated) < 20 then
			local v = math.lerp(up, down, math.random())
			self._recoil_kick.accumulated = (self._recoil_kick.accumulated or 0) + v
		end
	
		local h = math.lerp(left, right, math.random())
		self._recoil_kick.h.accumulated = (self._recoil_kick.h.accumulated or 0) + h

	end
end

function FPCameraPlayerBase:_vertical_recoil_kick(t, dt)
	local player_state = managers.player:current_state()

	if player_state == "bipod" then
		self:break_recoil()

		return 0
	end

	local r_value = 0

	if self._recoil_kick.current and self._episilon < math.abs(self._recoil_kick.accumulated - self._recoil_kick.current) and 0 < self._recoil_kick.accumulated then
		local n = math.step(self._recoil_kick.current, self._recoil_kick.accumulated, 40 * dt)
		r_value = n - self._recoil_kick.current
		self._recoil_kick.current = n
	elseif self._recoil_wait and self._recoil_kick.to_reduce then
		self._recoil_wait = self._recoil_wait - dt

		self._recoil_kick.current = nil
		local n = math.lerp(math.max(self._recoil_kick.to_reduce, 0), 0, (9 / (1 + 10 * self._recoil_wait)) * dt)
		r_value = -(math.max(self._recoil_kick.to_reduce, 0) - n)
		self._recoil_kick.to_reduce = n

		if self._recoil_kick.to_reduce == 0 then
			self._recoil_kick.to_reduce = nil
		end

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
	elseif self._recoil_wait and self._recoil_kick.h.to_reduce then
		self._recoil_wait = self._recoil_wait - dt
		
		self._recoil_kick.h.current = nil
		local n = math.lerp(self._recoil_kick.h.to_reduce, 0, (5 / (1 + self._recoil_wait)) * dt)
		r_value = -(self._recoil_kick.h.to_reduce - n)
		self._recoil_kick.h.to_reduce = n

		if self._recoil_kick.h.to_reduce == 0 then
			self._recoil_kick.h.to_reduce = nil
		end

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