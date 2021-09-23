def merge(arr_1, arr_2)
  arr_1.concat(arr_2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# LS 

# def merge(array_1, array_2)
#   array_1 | array_2
# end