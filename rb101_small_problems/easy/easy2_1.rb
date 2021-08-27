
# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# age = (20..200).to_a.sample
# puts "Teddy is #{age} years old today!"


puts "Enter a name"
name = gets.chomp
name = "Teddy" if name.empty?
age = rand(20..200)

puts "#{name} is #{age} years old today!"



