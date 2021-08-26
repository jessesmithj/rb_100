#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(integer)
  integer.digits.reverse
end

#LS
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
p digit_list(19911998) 


# PEDAC

# Input: a positive integer
# Output: an integer array containing all numbers in the input 

# Ex: input: 12345 output [1, 2, 3, 4, 5]
# Ex: input -123 output none
# Ex: input 000 output [0 ,0 ,0]

# Determine an array of single digit integers for a given positive integer 

# 1) Create an empty array called int_array = []
# 2) Ensure the input integer is a positive number 
# 3) For every single_integer in integer:
# 4)   Add single_integer to int_array
# 5) Return integer

# def digit_list(integer)
#   int_array = []
#   if integer > 0
#   num_array = integer.to_s.chars
#     num_array.each do |int|
#       int_array << int.to_i
#     end
#   end
#   int_array
# end