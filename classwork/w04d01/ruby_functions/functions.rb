# def say_hello

#   puts "Hello, world"

# end

# say_hello

# def add_numbers num,num2
#   puts num + num2
# end

# add_numbers 1,2

# def create_user name, course="WebDev2"
#   puts "#{name} is in #{course}"

# end

# create_user "richard"
# create_user "bob", "SDET10"

# def say_more_words *words 
#   puts words
# end

# say_more_words "dsadas", "dsadasda", "dsadasdsa","dsadada"

# def say what, *people
#   people.each do |person|
#     puts "Hey #{person}, #{what}"
#   end
# end

# say "Hello", "Steve", "Bob"

def add_numbers2 num1, num2
  num1 * num2
  num1 + num2
end

result = add_numbers2 2,4
puts result;