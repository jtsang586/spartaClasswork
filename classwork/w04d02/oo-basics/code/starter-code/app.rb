require_relative 'square.rb'
require_relative 'rectangle.rb'

newsquare = Square.new(5)
newrectangle = Rectangle.new(2,3)

newsquare.describe
newsquare.scale(2)

newrectangle.describe
newrectangle.scale(2)
