# loop do 
#   puts "Ollie forever"
# end
i = 0

while i < 10 do
  puts "while: #{i}"
  i += 1
end

j = 0

begin
  puts "Do while: #{j}"
  j += 1
end while j < 10

k = 0

until k > 10 do
puts "until: #{k}" 
k += 1
end

for i in 0..5
  puts "For loops are awesome: #{i}"
end

4.times do 
  puts "4 times"
end

array = ["Kane", "Naren", "Divesh", "Melson", "Will", "Sabrin", "Malinda", "Joe"]

array.each do |name|
  # puts "Each: #{i}"
  puts name
end

some_words = ["labyrinth", "dyslexia", "superman"]

new_words = some_words.map do |word|
  word.reverse
end

puts new_words

some_numbers = [321,23,23,21,4,123,12,323,213,1,41,21,312,3,2,2,323,2,4,2]

sum = some_numbers.reduce do |total, number|
  total + number
end

puts sum







