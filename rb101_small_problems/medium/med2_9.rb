# Write a method that takes an Array as an argument, 
# and sorts that Array using the bubble sort algorithm as just described. 
# Note that your sort will be "in-place"; that is, you will mutate 
# the Array passed as an argument. You may assume that the Array contains at least 2 elements.

## PEDAC

# Input: array
# Output: same array, bubble sorted 

# Explicit: 
# - Mutating method, sort in place
# - Continue performing over array until there are 0 exchanges 
# - Using greater than to do all sorting & swapping places of array if greater than returns true

# 6 	2 	7 	1 	4 	Start: compare 6 > 2? Yes
# 2 	6 	7 	1 	4 	Exchange
# 2 	6 	7 	1 	4 	6 > 7? No (no exchange)
# 2 	6 	7 	1 	4 	7 > 1? Yes
# 2 	6 	1 	7 	4 	Exchange
# 2 	6 	1 	7 	4 	7 > 4? Yes
# 2 	6 	1 	4 	7 	Exchange

# Implicit:
# - array can be integers or strings

# Data Structure: Array, integer, strings

# Algorithm: 
# - Set counter = 0 
# - Start loop
# - compare element 1 & element 2 of array
# - if element 1 is greater
#   - swap element 1 & element 2 (new method def)
# - otherwise 
#   - do nothing
# - increment counter by 1 
#   - compare elements 2 & 3
# - repeat all steps until done looping through entire array
# - repeat again UNTIL no exchanges take place 
# - return bubble sorted array 

# def swap(arr, count)
#   arr[count], arr[count + 1] = arr[count +1], arr[count]
# end

# def iterate_arr(arr, count)
#   loop do 
#     swap(arr, count) if arr[count] > arr[count + 1]
#     count += 1
#     break if count == arr.size - 1
#   end
# end

# def bubble_sort!(arr)
#   count = 0
#   until arr.sort == arr
#     iterate_arr(arr, count) 
#     count = 0
#   end
#   arr
# end
    




#LS 

require 'pry'

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped #unless executes code if the conditional is false
  end
  "This is a meaningless return value since the method is mutating"
end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array #== [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)




## first pass

# def swap(arr, count)
#   arr[count], arr[count + 1] = arr[count +1], arr[count]
# end

# def iterate_arr(arr, count)
#   loop do 
#     swap(arr, count) if arr[count] > arr[count + 1]
#     count += 1
#     break if count == arr.size - 1
#   end
# end

# def bubble_sort!(arr)
#   count = 0
#   1000.times do |_|
#     iterate_arr(arr, count) 
#     count = 0
#   end
#   arr
# end




# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       binding.pry
#       swapped = true
#     end

#     break if swapped
#   end
#   "This is a meaningless return value since the method is mutating"
# end



# [6, 2, 7, 1, 4]

# loop do
#   swapped = false
#   1.upto(4) do |i|
#     next if arr[0] <= arr[1]
#     swap
#     swapped = true
#   end

#   break unless swapped 
# end