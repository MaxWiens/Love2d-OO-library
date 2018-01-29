---
-- @author Max Wiens-Evangelista
-- @copyright Max Wiens-Evangelista 2018
-- Genaric Polygon prototype

local Object = require 'Object'
local error = error 
local extends = extends

--start of prototype class
module("Polygon")
extends(_M, Object) -- allowing the module to be used as a class

---
-- A global load function is required for an class and act as a constructor.
--
-- @param var1 The value assigned to _var1
-- @param var2 the value assigned to _var2
function load(self)
end

---
-- (Abstract)
-- Calculates the area of the polygon
-- @return Area of polygon
function getArea(self)
	error('function not implemented in '..self._NAME)
end

---
-- (Abstract)
-- Calculates the perimiter of the polygon
-- @return perimiter of polygon
function getPerimiter(self)
	error('function not implemented in '..self._NAME)
end