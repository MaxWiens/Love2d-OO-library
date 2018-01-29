---
-- @author Max Wiens-Evangelista
-- @copyright Max Wiens-Evangelista 2018
-- A number of utility functions.

local pairs = pairs 
local type = type 
local math = math 
local tonumber = tonumber 
module("util")
---
-- Creates a new table which has all the values of a table passed
-- in to the function. This copy does not share any references with
-- the old table.
--
-- @param table Table to clone
-- @return Copied table
function deepClone(table)
	local newTable = {}
	for key, value in pairs(table) do
		if type(value) == 'table' and key ~= '_M' then
			newTable[key] = {}
			newTable[key] = _M.deepClone(value)
		else
			newTable[key] = value
		end
	end
	return newTable
end