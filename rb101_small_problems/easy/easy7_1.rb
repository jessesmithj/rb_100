# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both 
# Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, 
# and that they have the same number of elements.

## PEDAC

# Input: 2 arrays
# Output: 1 array with interleaved elements from first & second input arrays

# Implicit: 
#  - Grab elements from first array & then second array, 1 by 1 and place into a new array 

#  D: Arrays 

#  Algorithm: 
# - set interleaved = Array.new 
# - set counter = 0

# - loop through both arrays
#  - push elemenmt at index counter to interleaved array for array 1
#  - push elemenmt at index counter to interleaved array for array 2
#  - increment counter += 1 
#  - break loop if counter == input arrary.size
# - return interleaved 

def interleave(arr1, arr2)
  interleaved_arr = []
  index = 0

  loop do
    interleaved_arr << arr1[counter] << arr2[counter]
    index += 1
    break if counter == arr1.size
  end

  interleaved_arr
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

LS 

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']