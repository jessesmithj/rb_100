# Build a program that displays when the user will retire and 
# how many years she has to work till retirement.

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

CURRENT_YEAR = Time.now.year

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_until_retire = (retirement_age - current_age)
retirement_year = CURRENT_YEAR + years_until_retire

puts "It's #{CURRENT_YEAR}. You will reture in #{retirement_year}."
puts "You only have #{years_until_retire} years to go!"


