
puts "Enter the length of the room:"
length = gets.to_f

puts "Enter the width of the room:"
width = gets.to_f

sq_meters = length * width
sq_ft = (sq_meters * 10.7639).round(2)

puts "The area of the room is #{sq_meters} square meters" + \
     "(or #{sq_ft} square feet.)"