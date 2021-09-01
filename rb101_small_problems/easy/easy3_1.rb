# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongst the first 5 numbers.

## PEDAC ##

# Set first_five_array to empty array
# GET 6 numbers from user
# Push first 5 numbers in an array
# Check to see if 6th number is included in the one of the numbers in the array

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

first_five_numbers = []

puts "==> Enter the 1st number:"
first_five_numbers << gets.chomp.to_i
puts "==> Enter the 2nd number:"
first_five_numbers << gets.chomp.to_i
puts "==> Enter the 2nd number:"
first_five_numbers << gets.chomp.to_i
puts "==> Enter the 3rd number:"
first_five_numbers << gets.chomp.to_i
puts "==> Enter the 4th number:"
first_five_numbers << gets.chomp.to_i
puts "==> Enter the 5th number:"
first_five_numbers << gets.chomp.to_i
puts "==> Enter the 6th number:"
sixth_number = gets.chomp.to_i

if first_five_numbers.include?(sixth_number)
  puts "The number #{sixth_number} appears in #{first_five_numbers}."
else
  puts "The number #{sixth_number} does not appear in #{first_five_numbers}."
end

