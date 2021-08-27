# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip = (bill * (tip_percentage / 100))
total = (tip.round + bill)

puts "The tip is $%0.2f" %[tip] #Kernel format method
puts "The total is $#{total}."



