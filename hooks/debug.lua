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



local mvec1 = Vector3()
local mvec2 = Vector3()
local mrot1 = Rotation()
-- local oldfunction = ProjectileBase._detect_and_give_dmg
function ProjectileBase:throw(params)
	self._owner = params.owner
	local velocity = params.dir
	local adjust_z = 50
	local launch_speed = 250
	local push_at_body_index = nil

	if params.projectile_entry and tweak_data.projectiles[params.projectile_entry] then
		
		-- local mytable = {tweak_data.projectiles[params.projectile_entry]}
		-- table.save(mytable,"C:\\Users\\USER\\Desktop\\payday debug\\debug.txt")
		
		adjust_z = tweak_data.projectiles[params.projectile_entry].adjust_z or adjust_z
		launch_speed = tweak_data.projectiles[params.projectile_entry].launch_speed or launch_speed
		push_at_body_index = tweak_data.projectiles[params.projectile_entry].push_at_body_index
	end

	velocity = velocity * launch_speed
	velocity = Vector3(velocity.x, velocity.y, velocity.z + adjust_z)
	local mass_look_up_modifier = self._mass_look_up_modifier or 2
	local mass = math.max(mass_look_up_modifier * (1 + math.min(0, params.dir.z)), 1)

	if self._simulated then
		if push_at_body_index then
			self._unit:push_at(mass, velocity, self._unit:body(push_at_body_index):center_of_mass())
		else
			self._unit:push_at(mass, velocity, self._unit:position())
		end
	else
		self._velocity = velocity
	end

	if params.projectile_entry and tweak_data.blackmarket.projectiles[params.projectile_entry] then
		local tweak_entry = tweak_data.blackmarket.projectiles[params.projectile_entry]
		local physic_effect = tweak_entry.physic_effect

		if physic_effect then
			World:play_physic_effect(physic_effect, self._unit)
		end

		if tweak_entry.add_trail_effect then
			self:add_trail_effect(tweak_entry.add_trail_effect)
		end

		local unit_name = tweak_entry.sprint_unit

		if unit_name then
			local new_dir = Vector3(params.dir.y * -1, params.dir.x, params.dir.z)
			local sprint = World:spawn_unit(Idstring(unit_name), self._unit:position() + new_dir * 50, self._unit:rotation())
			local rot = Rotation(params.dir, math.UP)

			mrotation.x(rot, mvec1)
			mvector3.multiply(mvec1, 0.15)
			mvector3.add(mvec1, new_dir)
			mvector3.add(mvec1, math.UP / 2)
			mvector3.multiply(mvec1, 100)
			sprint:push_at(mass, mvec1, sprint:position())
		end

		self:set_projectile_entry(params.projectile_entry)
	end
end










