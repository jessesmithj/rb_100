
# Write a method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is 
# not. You may not use the Array#include? method in your solution.

# Input: array, search value (an object)
# Output: boolnea value, true if object is in array, false if not

# Explicit: 
# - Can not use include? method in Ruby 

# D: array, object (string, integer, etc.)

# Algorithm: 

# Iterate through input array 
# if value in put input array == search value
#   true
# else
#   false 
# end 


# def include?(arr, value)
#   arr.each { |element| return true if element == value }
#   false
# end

# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

## LS 

# def include?(array, value)
#   !!array.find_index(value)
# end

# def include?(array, search)
#   array.any?(search)
# end

#another student

def include?(array, search)
  array << search
  p array
  return true if array.uniq! != nil
  false
end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

a.uniq! returns nil IF no changes to the original array are made