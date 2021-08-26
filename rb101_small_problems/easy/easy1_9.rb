# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45


## PEDAC ##

#I: Positive integer
#O: sum of input, a positive integer

# SET total = 0
# Turn input integer into a string and then into an array
# For each elemet in array, convert to integer & add to sum
# return sum

# def sum(number)

#   total = 0
#   number.to_s.chars.each do |digit|
#     total += digit.to_i
#   end
  
#   total
# end


def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end