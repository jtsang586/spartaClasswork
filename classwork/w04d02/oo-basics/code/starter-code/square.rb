class Square 
  attr_accessor :length

  def initialize(length)
    self.length = length
  end

  def calculate_area 
    self.length ** 2
  end

  def calculate_perimeter 
    self.length * 4
  end

  def describe
    puts "Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

  def scale(scalefactor)
    self.length *= scalefactor
    describe
  end
  
end