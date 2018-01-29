---
-- @author Max Wiens-Evangelista
-- @copyright Max Wiens-Evangelista 2018
-- Genaric rectangle prototype

local Polygon = require 'Polygon'
local extends = extends

--start of prototype class
module("Rectangle")
extends(_M, Polygon)


local height = 0
local width = 0

---
-- Rectangle constructor
-- @param w Width of rectangle
-- @param h Height of rectangle
function load(self, w, h)
	self.width = w or width
	self.height = h or height
end



---
-- Calculates the area of the rectangle
-- @return Area of rectangle
function getArea(self)
	return self.height*self.width
end

---
-- Calculates the perimiter of the rectangle
-- @return perimiter of rectangle
function getPerimiter(self)
	return 2*(self.height+self.width)
end