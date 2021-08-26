# Write a method that takes one argument, a positive integer, and returns a string 
# of alternating 1s and 0s, always starting with 1. The length of the string should 
# match the given integer.


# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


## PEDAC ## 

# Input: Positive integer
# Output: A string of alternating 0s & 1s whose length is equal to the integer number

# Integer, string

# Initialize empty string
# Set one = '1'
# Set zero = '0'
# Check if integer is a positive number
# If yes, use string element assignment to input one for even elements
# & zero for odd elements up to the integer provided 
# return string

# def stringy(number)
#   array = ["1"]
#   one = "1"
#   zero = "0"
  
#   counter = 0
#     loop do
#       if number >= 0 && counter.odd?
#         array[0] << one
#         counter += 1
#       else number >= 0 && counter.even?
#         array[0] << zero
#         counter += 1
#       end

#       break if counter + 1 >= number
#     end

#   array.join(" ")
# end

#why does this code work?

# puts stringy(6) 
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join()
end

puts stringy(6) 
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
