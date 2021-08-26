# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers. Your result should 
# also be an integer.


## PEDAC ##

# Input: Arrray of positive integers 
# Output: Average of integers within array (One integer)

# Given an array of positive integers, add all of the integers together, divide this 
# number by the size of the array and return that integer average 

# Array, Integer 

# SET sum = 0 
# for each integer in array SET sum = sum + integer
# SET average equal to the sum divided by the size of the array
# return average

# def average(numbers)
#   sum = 0

#   numbers.each do |number| 
#     sum += number.to_f
#   end

#   return average = sum/numbers.size
# end

# puts average([1, 6]) 
# puts average([1, 5, 87, 45, 8, 8])
# puts average([9, 47, 23, 95, 16, 52])


#LS 

def average(numbers)
  sum = numbers.inject { |sum, n| sum + n}
  sum / numbers.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40