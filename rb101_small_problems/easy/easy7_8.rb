#solution 1
# def multiply_list(arr1, arr2)
#   multi_arr = []

#   arr1.each_with_index do |num, ind| 
#     multi_arr << num * arr2[ind]
#   end

#   multi_arr
# end

#zip

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|arr| arr.reduce(:*)}
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([10, 5, 7], [9, 10, 11]) == [90, 50, 77]