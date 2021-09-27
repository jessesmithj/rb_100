# Create a method that takes two integers as arguments. The first argument is a count, 
# and the second is the first number of a sequence that your method will create. 
# The method should return an Array that contains the same number of elements 
# as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, 
# while the starting number can be any integer value. If the count is 0, 
# an empty list should be returned.

## PEDAC

# Input: two integers, 1st: count, 2nd: first number of an array sequence
# Output: An array that is the size of the 1st input integer w/ values that are multiple of the 2nd input integer

# Explicit: 
#  - if count is 0, an empty array should be returned 
#  - array returned should be the same size as count 
#  - count will have a value of 0 or greater
# Implicit: 
#  - if negative number as 2nd input, will be return an array of negative integers 

#  Data Structures: integers, arrays

# Algorithm: 
# - set result = Array.new
# - set count = 1 
# - for range int_2 to int_1 -1, iterate over each element 
#   - push element * count to result
#   - increment count by 1
# - return result

def sequence(count, start_num)
  result = []
  counter = 1

  count.times do |_|
    result << start_num * counter
    counter += 1
  end

  result
end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

#LS 
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

#LS2
def sequence(count, first)
  (1..count).map { |value| value * first }
end

