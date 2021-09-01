## PEDAC

# I: array
# O: An array with the same number of elements, 
#    and each element has the running total from the original Array.

# - SET running_total_array = []
# - Push first element of input array to new array
# - 2nd element of new_array = 1st element of new arary + 2nd element of original array
# - 3rd element of new_array = 2nd element of new array + 3rd element of original array
# - Stop incrementing and adding values to new_array when counter > size of the original array
# - return new array

# My answer 

# def running_total(array)
#   running_total_array = []
#   return running_total_array if array.empty?
#   running_total_array << array[0]
  
#   counter = 1
#   while counter < array.size
#     running_total_array << running_total_array[counter - 1] + array[counter]
#     counter += 1
#   end

#   running_total_array
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []


# LS

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13, 5]) == [2, 7, 20, 25]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []