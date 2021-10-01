# Write a method that rotates an array by moving the first 
# element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

#first_answer

# def rotate_array(array)
#   rotate_arr = []
#   array.each do |ele| 
#     rotate_arr << ele unless array[0] == ele
#   end
#   rotate_arr << array.first
# end

## second_answer

# def rotate_array(array)
#   new_arr = []
#   new_arr << array[1..-1] << array[0]
#   new_arr.flatten
# end


##LS 

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]    
p x == [1, 2, 3, 4]                  






# rotate 2
# def rotate_array(array)
#   rotate_arr = []
#   array.each do |ele| 
#     rotate_arr << ele unless array[0] == ele || array[1] == ele
#   end
#   rotate_arr << array.first(2)
#   rotate_arr.flatten
# end
