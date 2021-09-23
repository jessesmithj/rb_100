# Write a method that takes an Array as an argument, and returns two Arrays 
# (as a pair of nested Arrays) that contain the first half and second half 
# of the original Array, respectively. If the original array contains an 
# odd number of elements, the middle element should be placed in the first 
# half Array.

## PEDAC

# Input: Array
# Output: Array of two nested arrays, that contain first & second half of original array

# Explicit: 
# - If there are an odd number of elements, the middle element should be placed in the first array
# - Return two arrays inside of an array
# Implicit: 
# - an empty array shuold return two empty nested arrays within an array

# Data Structure: 
# - arrays 

# Algorithm: 
# - set half_arr = []
# - set first_half_arr = []
# - set sec_half_arr = []
# - find out how many elements are in array
# - if even number of elements, iterate over first half
#   - push elements into first_half_arr
# - then iterate over second half of elements
#  - push elements into sec_half_arr 
# - else odd number of elements, iterate over first half + 1  
#   - push elements into first_half_arr
# - then iterate over second half of elements
#   - push elements into sec_half_arr 
# - push first_half_arr into half_arr
# - push sec_half_arr into half_arr
# return half_arr

# first answer
# def halvsies(arr)
#   halvsies_arr = []
#   first_half_arr = []
#   sec_half_arr = []

#   if arr.length.even? 
#     arr[0, arr.size/2].each { |element| first_half_arr << element}
#     arr[arr.size/2, arr.size].each { |element| sec_half_arr << element}
#   else 
#     arr[0, (arr.size/2 + 1)].each { |element| first_half_arr << element}
#     arr[(arr.size/2 + 1), arr.size].each { |element| sec_half_arr << element}
#   end

#   half_arr << first_half_arr
#   half_arr << sec_half_arr
#   half_arr
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

#refactored answer

def halvsies(arr)
  middle = (arr.size/2.0).round
  first_half = arr.slice(0, middle)
  second_half = arr.slice(middle, arr.size)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

#LS 

# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]


#Another student

# def halvsies(arr)
#   output_arr = []
#   midpoint = (arr.size / 2.0 ).ceil

#   output_arr[0] = arr[0...midpoint]
#   output_arr[1] = arr[midpoint..]

#   output_arr
# end
