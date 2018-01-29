---
-- @author Max Wiens-Evangelista
-- @copyright Max Wiens-Evangelista 2018
-- This love2d project is a demonstration of the expanded lua libraries made to easily 
-- expand the capabilities of Love2d. 

local oop = require 'oop'
oop.initalize(_G) -- Required initalization
local GenaricObject = require 'GenaricObject'
local Square = require 'Square'
local Polygon = require 'Polygon'
local Rectangle = require 'Rectangle'
local Square = require 'Square'


-- Sets the function enviornment to a blank table to simplfy the global table and
-- decrease potential of modifying private values

function love.load()
	-- creates two new objects from the GenaricObject prototype class
	obj1 = GenaricObject:new(333, 444)
	obj2 = GenaricObject:new(555, 667)
	obj3 = GenaricObject:new()
	obj4 = obj2:new() -- Note that you can create new objects from previously existing objects not just classes. (aka prototyping)

	-- polygon/rectangle/square/ example
	polygon = Polygon:new()
	rectangle = Rectangle:new(10, 20)
	square = Square:new(10)
end

function love.update(dt)
end

function love.draw()
	--prints objects and their information
	love.graphics.print('obj1...'..obj1:toString())
	love.graphics.print(' var1: '..obj1.var1..'  var2: '..obj1.var2, 0, 16)

	love.graphics.print('obj2...'..obj2:toString(), 0, 48)
	love.graphics.print(' var1: '..obj2.var1..'  var2: '..obj2.var2, 0, 64)

	love.graphics.print('obj3...'..obj3:toString(), 0, 96)
	love.graphics.print(' var1: '..obj3.var1..'  var2: '..obj3.var2, 0, 112)

	love.graphics.print('obj4...'..obj4:toString(), 0, 144)
	love.graphics.print(' var1: '..obj4.var1..'  var2: '..obj4.var2, 0, 160)

	
	--prints "polygon: [polygon toString]"
	love.graphics.print('polygon...'..polygon:toString(), 0, 192)


	-- prints the rectangle information
	love.graphics.print('rectangle...'..rectangle:toString(),0,224)
	love.graphics.print(' width: '..rectangle.width..'  height: '..rectangle.height..'  area: '..rectangle:getArea()..'  perimiter: '..rectangle:getPerimiter(), 0, 240)
	-- draws rectangle
	love.graphics.print('Rectangle: ', 400,224)
	love.graphics.rectangle('fill', 400, 240, rectangle.width, rectangle.height)


	-- prints the square information
	love.graphics.print('square...'..square:toString(),0,272)
	love.graphics.print(' width: '..square.width..'  area: '..square:getArea()..'  perimiter: '..square:getPerimiter(), 0, 288)
	-- draws square
	love.graphics.print('square:', 400,272)
	love.graphics.rectangle('fill', 400, 288, square.width, square.width)
end

