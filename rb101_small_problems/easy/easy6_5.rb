# Write a method that takes an Array, and returns a new Array with the 
# elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use 
# the method you wrote in the previous exercise.

# ## PEDAC

# Input: Array of objects
# Output: Array of objects reversed, but the original array intact 

# Explicit:
# - The method will NOT modify the original array, it cannot be destructive 
# - Cannot use reverse!/reverse methods or the method written in the previous exercise

# Implicit: 
#  - Empty array returns an empty array
#  - Cannot use element reassignment, as that is a destructive method

# Data Structure: 
# - Array, integer, strings

# Algorithm: 
# - Set new_arr = []
# - Set counter = -1
# - For the elements in an array
#   - reverse the order of the array by adding the last element of the array to new_arr
#     - repeat this step, iterating over the array backwards and adding each element to the new_arr
#     - repeat until of the elements of the arr and have been added to new_arr
#   - return the new array 

# def reverse(arr)
#   rev_arr = []
#   counter = -1

#   loop do
#     rev_arr << arr[counter]
#     break if counter <= -(arr.size)
#     counter -= 1
#   end

#   rev_arr
# end

def reverse(arr)
  arr.reduce([]) { |new_arr, ele| new_arr.unshift(ele) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true


# LS 
# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

