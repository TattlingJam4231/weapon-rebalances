function WeaponFactoryManager:_get_forbidden_parts(factory_id, blueprint)
	local factory = tweak_data.weapon.factory
	local forbidden = {}
	local override = self:_get_override_parts(factory_id, blueprint)

	for _, part_id in ipairs(blueprint) do
		local part = self:get_part_data(part_id, factory_id, blueprint, override)

		if part.depends_on then
			local part_forbidden = true

			for _, other_part_id in ipairs(blueprint) do
				local other_part = self:get_part_data(other_part_id, factory_id, blueprint, override)

				if part.depends_on == other_part.type then
					part_forbidden = false

					break
				end
				if part.depends_on == other_part.name_id then
					part_forbidden = false

					break
				end
			end

			if part_forbidden then
				forbidden[part_id] = part.depends_on
			end
		end

		if part.forbids then
			for _, forbidden_id in ipairs(part.forbids) do
				forbidden[forbidden_id] = part_id
			end
		end

		if part.adds then
			local add_forbidden = self:_get_forbidden_parts(factory_id, part.adds)

			for forbidden_id, part_id in pairs(add_forbidden) do
				forbidden[forbidden_id] = part_id
			end
		end
	end

	return forbidden
end

function WeaponFactoryManager:get_stats(factory_id, blueprint)
	local factory = tweak_data.weapon.factory
	local forbidden = self:_get_forbidden_parts(factory_id, blueprint)
	local override = self:_get_override_parts(factory_id, blueprint)
	local stats = {}
	for _, part_id in ipairs(blueprint) do
		if not forbidden[part_id] and factory.parts[part_id].stats then
			local part = self:get_part_data(part_id, factory_id, blueprint)

			for stat_type, value in pairs(part.stats) do
				if type(value) == "number" then
					stats[stat_type] = stats[stat_type] or 0
					stats[stat_type] = stats[stat_type] + value
				elseif type(value) == "table" then
					stats[stat_type] = stats[stat_type] or {}

					for i = 1, #value do
						stats[stat_type][i] = stats[stat_type][i] or 0
						stats[stat_type][i] = stats[stat_type][i] + value[i]
					end
				end
			end
		end
	end

	

	-- if factory_id == "wpn_fps_shot_r870" then
	-- 	local mytable = {stats}
	-- 	table.save(mytable,"C:\\Users\\USER\\Desktop\\payday 2 modding\\debug\\debug.txt")
	-- end



	return stats
end

function WeaponFactoryManager:get_part_data_by_part_id_from_weapon(part_id, factory_id, blueprint, equipped_mods)
	local override = self:_get_override_parts(factory_id, blueprint)

	return self:get_part_data(part_id, factory_id, equipped_mods, override)
end

function WeaponFactoryManager:get_custom_stats_from_weapon(factory_id, blueprint)
	local factory = tweak_data.weapon.factory
	local t = {}

	for _, id in ipairs(self:get_assembled_blueprint(factory_id, blueprint)) do
		local part = self:get_part_data(id, factory_id, blueprint)

		if part.custom_stats then
			t[id] = part.custom_stats
		end
	end

	return t
end

function WeaponFactoryManager:get_ammo_data_from_weapon(factory_id, blueprint)
	local factory = tweak_data.weapon.factory
	local t = {}

	for _, id in ipairs(self:get_assembled_blueprint(factory_id, blueprint)) do
		if factory.parts[id].type == "ammo" then
			local part = self:get_part_data(id, factory_id, blueprint)
			t = part.custom_stats
		end
	end

	return t
end

function WeaponFactoryManager:get_part_data(part_id, factory_id, equipped_mods, override)
	local part = deep_clone(self:_part_data(part_id, factory_id, override))
	if equipped_mods and part.overrides then
		for _, override in ipairs(part.overrides) do
			if override.depends_on and table.contains(equipped_mods, override.depends_on) then
				if override.stats then part.stats = override.stats end
				if override.custom_stats then part.custom_stats = override.custom_stats end
			end
		end
	end
	return part
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