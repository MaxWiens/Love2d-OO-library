---
-- @author Max Wiens-Evangelista
-- @copyright Max Wiens-Evangelista 2018
-- Genaric Square prototype

local Rectangle = require 'Rectangle'
local extends = extends

--start of prototype class
module("Square")
extends(_M, Rectangle)

local width = 0

---
-- Square constructor
-- @param w Width of square
function load(self, w)
	self.width = w or width
end

---
-- Calculates the area of the square
-- @return Area of square
function getArea(self)
	return self.width*self.width
end

---
-- Calculates the perimiter of the square
-- @return perimiter of square
function getPerimiter(self)
	return self.width*4
end