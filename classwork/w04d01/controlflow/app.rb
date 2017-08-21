# raining = false
# ollie = "tanned"


# if raining then puts "yo" end

# if ollie == "tanned" 
#   puts "what a god"
# elsif ollie == "burned"
#   puts "lobster"
# else 
#   puts "pasty"
# end

# if ollie.eql? "tanned" then puts "yeeeeeeah" end

puts "Alright there mateyy, what's your name?"
name = gets.chomp

puts "So your name is " + name + " it's a bit of a boring name init"

puts "So for some reason you now need to go to pick a weapon, do you want a sword or a gun?"
weapon_choise = gets.chomp
if weapon_choise == "gun"
  puts "you wuss"
elsif weapon_choise == "sword"
  puts "badass"
end

puts "A goblin just arrived to steal your hair do you run or fight?"
choise = gets.chomp
if choise == "run"
  puts "The goblin caught up to you anyway and stole your hair so your now bald"
elsif choise == "fight"
  if weapon_choise == "gun"
    puts "you shot the goblin with your gun but the noise got all his mates to come so they nicked everything"
  elsif weapon_choise == "sword"
    puts "you cut the goblin in half because you are baddass, you also broke your back swinging a sword"
  end
end

puts "As your walking along a wizard approached you and asked if you wanted him to join your party. 
Do you want to (yes) or not? (no)"
choise = gets.chomp
if choise == "yes"
  puts "At first it seemed like a good idea. But the wizard was actually a bastard, whilst you were looking 
  away he stole your " + weapon_choise + "now you have no weapon and your adventure has come to an end because your 
  not going to achieve much anyway"
elsif choise == "no"
  puts "turned out the wizard was a crafty old man. Whilst he walked away he dropped his crystal ball that lets anyone see what another person is doing. Very handy for stalkers and pervs."
  puts "and so your adventure continues"
end

      