# Write a method that computes the difference between the square of the sum of 
# the first n positive integers and the sum of the squares of the first n positive integers.

## PEDAC
# Input: integer
# Output: Difference between square of the sum of the n positive integers & the sum of the squares of the first n positive integers

# Implicit: 
# - Only positive integer inputs

# Data Structure: integers 

# Algorithm: 
# - Set square_sum equal to all numbers from 1 up to the number input added up & squared
# - Set sum_of_squares equal to 0
# - iterate 1 up to integer
#   - for each sum += (num ** 2)
# - subtract sum_of_squares from square_sum

def sum_square_difference(num)
  square_sum = (1..num).inject(:+)**2
  
  sum_of_squares = 0
  1.upto(num) do |i|
    sum_of_squares += (i ** 2)
  end

  square_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150


#LS 

def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end