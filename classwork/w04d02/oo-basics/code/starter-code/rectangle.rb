class Rectangle 
  attr_accessor :length, :width

  def initialize(length, width)
	self.length = length
	self.width = width
  end

  def calculate_area 
	self.length * self.width
  end

  def calculate_perimeter 
	self.length * 2 + self.width * 2
  end

  def describe
	puts "Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

  def scale(scalefactor)
	self.length *= scalefactor
	self.width *= scalefactor
	describe
  end

end