
def add_number num1, num2
  num1 + num2
end

def subtract_number num1, num2
  num1 - num2
end

def multiply_number num1, num2
  num1 * num2
end

def divide_number num1, num2 
  num1 / num2
end

def power num1, num2 
  num1**num2
end

def square_root num1
  Math.sqrt(num1)
end

def BMI weight, height
  if height > 20
    (weight/(height**2))*703
  else
    (weight/(height**2))
  end
end

def trip_calc distance, mpg, per_gallon, speed
  time = distance / speed
  if speed > 60
    mpg = mpg - 2 * time.to_i 
  end
  cost = (distance / mpg) * per_gallon

  puts "Your trip will take #{time.round(2)}hrs and cost £#{cost.round(2)}."
end

def start_calc 
  puts "choose which calculator you want to use a) Basic b) Advanced c) BMI d) Trip Calculator"
  calculator_type = gets.chomp

  if calculator_type == "a"
    puts "pick a number"
    number1 = gets.chomp.to_i

    puts "Pick and operator 1)+ 2)- 3)* 4)/"
    operator = gets.chomp

    puts "Pick second number"
    number2 = gets.chomp.to_i

    if operator == "1"
      puts add_number number1, number2
    elsif operator == "2"
      puts subtract_number number1, number2
    elsif operator == "3"
      puts multiply_number number1, number2
    elsif operator == "4"
      puts divide_number number1, number2
    end
  elsif calculator_type == "b"
    puts "pick a function for the calculator 1)Power 2)Square Root"
    function = gets.chomp
    if function == "1"
      puts "pick a number"
      number1 = gets.chomp.to_i

      puts "pick a number to power"
      number2 = gets.chomp.to_i
      puts power number1, number2
    elsif function == "2"
      puts "pick a number"
      number1 = gets.chomp.to_i
      puts square_root number1
    end
  elsif calculator_type == "c"
    puts "enter your height(m or in)"
    height = gets.chomp.to_f
    
    puts "enter your weight (kg or lb)"
    weight = gets.chomp.to_f

    puts BMI weight, height
  elsif calculator_type == "d"
    puts "enter distance"
    distance = gets.chomp.to_f
    puts "enter mpg"
    mpg = gets.chomp.to_f
    puts "enter cost per gallon"
    per_gallon = gets.chomp.to_f
    puts "enter speed"
    speed = gets.chomp.to_f

    trip_calc distance, mpg, per_gallon,speed    
  end
end

start_calc