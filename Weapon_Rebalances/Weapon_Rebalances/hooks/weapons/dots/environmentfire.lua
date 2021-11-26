function EnvironmentFire:on_spawn(data, normal, user_unit, added_time, range_multiplier)
	local custom_params = {
		camera_shake_max_mul = 4,
		sound_muffle_effect = true,
		effect = data.effect_name,
		sound_event = data.sound_event,
		feedback_range = data.range * 2,
		sound_event_burning = data.sound_event_burning,
		sound_event_impact_duration = data.sound_event_impact_duration,
		sound_event_duration = data.burn_duration + added_time
	}
	self._data = data
	self._normal = normal
	self._added_time = added_time
	self._range_multiplier = range_multiplier
	self._user_unit = user_unit
	self._burn_duration = data.burn_duration + added_time
	self._burn_tick_counter = 0
	self._burn_tick_period = data.burn_tick_period
	self._range = data.range * range_multiplier
	self._curve_pow = data.curve_pow
	self._damage = data.damage
	self._player_damage = data.player_damage
	self._fire_dot_data = deep_clone(data.fire_dot_data)
	self._fire_alert_radius = data.fire_alert_radius
	self._is_molotov = data.is_molotov
	self._hexes = data.hexes or 6
	local range = self._range
	local raycast = nil
	local slotmask = managers.slot:get_mask("molotov_raycasts")
	local vector = nil

	if normal == nil or mvector3.length(normal) < 0.1 then
		normal = Vector3(0, 0, 1)
	end

	local offset = Vector3(normal.z, normal.z, -normal.x - normal.y)
	if offset.x == 0 and offset.y == 0 and offset.z == 0 then
		offset = Vector3(-normal.y - normal.z, normal.x, normal.x)
	end
	mvector3.normalize(offset)

    if data.is_trip_mine then
        local v_offset = Vector3(normal.z, normal.z, -normal.x - normal.y)
        if v_offset.x == 0 and v_offset.y == 0 and v_offset.z == 0 then
            v_offset = Vector3(-normal.y - normal.z, normal.x, normal.x)
        end
        mvector3.normalize(v_offset)

        local rotation = Rotation()
        local position = self._unit:position()

        mrotation.set_axis_angle(rotation, normal, 90)
        mvector3.rotate_with(v_offset, rotation)
        
        mrotation.set_axis_angle(rotation, v_offset, -60)
        mvector3.rotate_with(offset, rotation)
        


        local mytable = {
            {normal.x, normal.y, normal.z},
            {v_offset.x, v_offset.y, v_offset.z},
            {offset.x, offset.y, offset.z}
        }
        table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")






        mvector3.multiply(offset, range * 2) 

        mrotation.set_axis_angle(rotation, normal, 60)

        vector = position + Vector3(0, 0, 0)
        raycast = World:raycast("ray", position, vector, "slot_mask", slotmask)
        local ray_cast2, fake_ball_main = nil

        if raycast == nil then
            local vector21 = vector + Vector3(0, 0, -150)
            raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector21, "slot_mask", slotmask)

            if raycast == nil then
                local vector41 = vector21 - 50 * normal
                raycast = World:raycast("ray", vector21 + 20 * normal, vector41, "slot_mask", slotmask)

                if raycast ~= nil then
                    managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)

                    ray_cast2 = raycast
                else
                    local vector31 = vector + Vector3(0, 0, -1500)
                    raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector31, "slot_mask", slotmask)

                    if raycast ~= nil then
                        managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)

                        ray_cast2 = raycast
                    end
                end
            else
                managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)

                ray_cast2 = raycast
            end

            if ray_cast2 ~= nil then
                self._molotov_damage_effect_table[1].body = ray_cast2.body
                self._molotov_damage_effect_table[1].body_initial_position = ray_cast2.body:position()
                self._molotov_damage_effect_table[1].body_initial_rotation = ray_cast2.body:rotation()
                self._molotov_damage_effect_table[1].effect_initial_position = ray_cast2.position
                self._molotov_damage_effect_table[1].effect_initial_normal = ray_cast2.normal
            end
        end

        for i = 1, self._hexes * 2 do
            if i == self._hexes + 1 then
                mvector3.multiply(offset, 2)
            end
            vector = position + offset
            raycast = World:raycast("ray", position, vector, "slot_mask", slotmask)
            local ray_cast, fake_ball_outline = nil

            if raycast == nil then
                local vector2 = vector + Vector3(0, 0, -150)
                raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector2, "slot_mask", slotmask)

                if raycast == nil then
                    local vector4 = vector2 - 50 * normal
                    raycast = World:raycast("ray", vector2 + 20 * normal, vector4, "slot_mask", slotmask)

                    if raycast ~= nil then
                        managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)

                        ray_cast = raycast
                    else
                        local vector3 = vector + Vector3(0, 0, -1500)
                        raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector3, "slot_mask", slotmask)

                        if raycast ~= nil then
                            managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)

                            ray_cast = raycast
                        end
                    end
                else
                    managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)

                    ray_cast = raycast
                end

                if ray_cast ~= nil then
                    local tableSize = #self._molotov_damage_effect_table
                    self._molotov_damage_effect_table[tableSize].body = ray_cast.body
                    self._molotov_damage_effect_table[tableSize].body_initial_position = ray_cast.body:position()
                    self._molotov_damage_effect_table[tableSize].body_initial_rotation = ray_cast.body:rotation()
                    self._molotov_damage_effect_table[tableSize].effect_initial_position = ray_cast.position
                    self._molotov_damage_effect_table[tableSize].effect_initial_normal = ray_cast.normal
                end
            else
                table.insert(self._molotov_damage_effect_table, nil)
            end

            mvector3.rotate_with(offset, rotation)
        end
    else
        mvector3.multiply(offset, range * 2)

        local rotation = Rotation()
        local position = self._unit:position()
    
        mrotation.set_axis_angle(rotation, normal, 60)
    
        vector = position + Vector3(0, 0, 0)
        raycast = World:raycast("ray", position, vector, "slot_mask", slotmask)
        local ray_cast2, fake_ball_main = nil
    
        if raycast == nil then
            local vector21 = vector + Vector3(0, 0, -150)
            raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector21, "slot_mask", slotmask)
    
            if raycast == nil then
                local vector41 = vector21 - 50 * normal
                raycast = World:raycast("ray", vector21 + 20 * normal, vector41, "slot_mask", slotmask)
    
                if raycast ~= nil then
                    managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)
    
                    ray_cast2 = raycast
                else
                    local vector31 = vector + Vector3(0, 0, -1500)
                    raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector31, "slot_mask", slotmask)
    
                    if raycast ~= nil then
                        managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)
    
                        ray_cast2 = raycast
                    end
                end
            else
                managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)
    
                ray_cast2 = raycast
            end
    
            if ray_cast2 ~= nil then
                self._molotov_damage_effect_table[1].body = ray_cast2.body
                self._molotov_damage_effect_table[1].body_initial_position = ray_cast2.body:position()
                self._molotov_damage_effect_table[1].body_initial_rotation = ray_cast2.body:rotation()
                self._molotov_damage_effect_table[1].effect_initial_position = ray_cast2.position
                self._molotov_damage_effect_table[1].effect_initial_normal = ray_cast2.normal
            end
        end
    
        for i = 1, self._hexes do
            vector = position + offset
            raycast = World:raycast("ray", position, vector, "slot_mask", slotmask)
            local ray_cast, fake_ball_outline = nil
    
            if raycast == nil then
                local vector2 = vector + Vector3(0, 0, -150)
                raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector2, "slot_mask", slotmask)
    
                if raycast == nil then
                    local vector4 = vector2 - 50 * normal
                    raycast = World:raycast("ray", vector2 + 20 * normal, vector4, "slot_mask", slotmask)
    
                    if raycast ~= nil then
                        managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)
    
                        ray_cast = raycast
                    else
                        local vector3 = vector + Vector3(0, 0, -1500)
                        raycast = World:raycast("ray", vector + Vector3(0, 0, 20), vector3, "slot_mask", slotmask)
    
                        if raycast ~= nil then
                            managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)
    
                            ray_cast = raycast
                        end
                    end
                else
                    managers.fire:play_sound_and_effects(raycast.position, raycast.normal, range, custom_params, self._molotov_damage_effect_table)
    
                    ray_cast = raycast
                end
    
                if ray_cast ~= nil then
                    local tableSize = #self._molotov_damage_effect_table
                    self._molotov_damage_effect_table[tableSize].body = ray_cast.body
                    self._molotov_damage_effect_table[tableSize].body_initial_position = ray_cast.body:position()
                    self._molotov_damage_effect_table[tableSize].body_initial_rotation = ray_cast.body:rotation()
                    self._molotov_damage_effect_table[tableSize].effect_initial_position = ray_cast.position
                    self._molotov_damage_effect_table[tableSize].effect_initial_normal = ray_cast.normal
                end
            else
                table.insert(self._molotov_damage_effect_table, nil)
            end
    
            mvector3.rotate_with(offset, rotation)
        end
    end

	self._unit:set_visible(false)
end

function EnvironmentFire:update(unit, t, dt)
	if self._burn_duration <= 0 then
		self._unit:set_slot(0)
	else
		self._burn_duration = self._burn_duration - dt
		self._burn_tick_counter = self._burn_tick_counter + dt

		for _, damage_effect_entry in pairs(self._molotov_damage_effect_table) do
			local effect_body_alive = alive(damage_effect_entry.body)

			if effect_body_alive and damage_effect_entry.body ~= nil then
				local body_pos = damage_effect_entry.body:position()
				local distance = mvector3.distance(body_pos, damage_effect_entry.effect_initial_position)

				if distance >= 0.1 then
					mvector3.subtract(body_pos, damage_effect_entry.body_initial_position)

					local effect_new_location = damage_effect_entry.effect_initial_position + body_pos
					damage_effect_entry.effect_current_position = effect_new_location

					World:effect_manager():move(damage_effect_entry.effect_id, effect_new_location)
				end
			end
		end

		if self._burn_tick_period < self._burn_tick_counter then
			self:_do_damage()
            -- self._range = self._range + 100
		end
	end
end

















--[[
   Save Table to File
   Load Table from File
   v 1.0
   
   Lua 5.2 compatible
   
   Only Saves Tables, Numbers and Strings
   Insides Table References are saved
   Does not save Userdata, Metatables, Functions and indices of these
   ----------------------------------------------------
   table.save( table , filename )
   
   on failure: returns an error msg
   
   ----------------------------------------------------
   table.load( filename or stringtable )
   
   Loads a table that has been saved via the table.save function
   
   on success: returns a previously saved table
   on failure: returns as second argument an error msg
   ----------------------------------------------------
   
   Licensed under the same terms as Lua itself.
]]--
do
    -- declare local variables
    --// exportstring( string )
    --// returns a "Lua" portable version of the string
    local function exportstring( s )
       return string.format("%q", s)
    end
 
    --// The Save Function
    function table.save(  tbl,filename )
       local charS,charE = "   ","\n"
       local file,err = io.open( filename, "wb" )
       if err then return err end
 
       -- initiate variables for save procedure
       local tables,lookup = { tbl },{ [tbl] = 1 }
       file:write( "return {"..charE )
 
       for idx,t in ipairs( tables ) do
          file:write( "-- Table: {"..idx.."}"..charE )
          file:write( "{"..charE )
          local thandled = {}
 
          for i,v in ipairs( t ) do
             thandled[i] = true
             local stype = type( v )
             -- only handle value
             if stype == "table" then
                if not lookup[v] then
                   table.insert( tables, v )
                   lookup[v] = #tables
                end
                file:write( charS.."{"..lookup[v].."},"..charE )
             elseif stype == "string" then
                file:write(  charS..exportstring( v )..","..charE )
             elseif stype == "number" then
                file:write(  charS..tostring( v )..","..charE )
             end
          end
 
          for i,v in pairs( t ) do
             -- escape handled values
             if (not thandled[i]) then
             
                local str = ""
                local stype = type( i )
                -- handle index
                if stype == "table" then
                   if not lookup[i] then
                      table.insert( tables,i )
                      lookup[i] = #tables
                   end
                   str = charS.."[{"..lookup[i].."}]="
                elseif stype == "string" then
                   str = charS.."["..exportstring( i ).."]="
                elseif stype == "number" then
                   str = charS.."["..tostring( i ).."]="
                end
             
                if str ~= "" then
                   stype = type( v )
                   -- handle value
                   if stype == "table" then
                      if not lookup[v] then
                         table.insert( tables,v )
                         lookup[v] = #tables
                      end
                      file:write( str.."{"..lookup[v].."},"..charE )
                   elseif stype == "string" then
                      file:write( str..exportstring( v )..","..charE )
                   elseif stype == "number" then
                      file:write( str..tostring( v )..","..charE )
                   end
                end
             end
          end
          file:write( "},"..charE )
       end
       file:write( "}" )
       file:close()
    end
 
    --// The Load Function
    function table.load( sfile )
       local ftables,err = loadfile( sfile )
       if err then return _,err end
       local tables = ftables()
       for idx = 1,#tables do
          local tolinki = {}
          for i,v in pairs( tables[idx] ) do
             if type( v ) == "table" then
                tables[idx][i] = tables[v[1]]
             end
             if type( i ) == "table" and tables[i[1]] then
                table.insert( tolinki,{ i,tables[i[1]] } )
             end
          end
          -- link indices
          for _,v in ipairs( tolinki ) do
             tables[idx][v[2]],tables[idx][v[1]] =  tables[idx][v[1]],nil
          end
       end
       return tables[1]
    end
 -- close do
 end
 
 -- ChillCode