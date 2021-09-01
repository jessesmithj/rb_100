# Write a method that searches for all multiples of 3 or 5 that lie between 1 
# and some other number, and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# ## PEDAC ##

# I: integer > 1
# O: all multiples between 1 & input that are multiples of 3 or 5

# D: integer, array

# - SET multiples = []
# - check each number between 2 to the input_integer 
# - if number is evenly divisible by 3 or 5 add to multiples array
# - sort multiples by unique numbers only (this step was not needed)
# - return sum of multiples


def multisum(number)
  multiples = []
  (2..number).each do |num|
    multiples << num if (num % 3 == 0 || num % 5 == 0)
  end
  multiples.reduce(:+)
  # multiples.sum
  # multiples.inject { |sum, n| sum + n }  
end
  
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
  

# LS 

# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end
