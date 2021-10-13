# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end
# 1
# 3
# => [[1, 2], [3, 4]]

# - the array#each method is being invoked by the nested array of arrays (multi-dimensional array)
# - each inner element (array) is being passed to the block in sequence as the local variable | arr |
# - within the block, the first element of each nested array is output, 1 & 3 as a string
# - puts returns nil, and as this is the last line of the block, nil is returned 
# - howerver each does not do anything with the return value of the block
#   - because the each method always returns the calling object, the return is the original nested array



#   [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
#     hash.all? do |key, value|
#       value[0] == key.to_s
#     end
#   end
#   # => [{ :c => "cat" }]

#   - the select method is called on a nested array of hashes (return value is based on what the block returns)
#   - the outer block execution iterates through each hash in the outer nested array 
#   - the .all? method is called on each hash from outter ray which returns a boolean value if it's block is true
#   - the inner block execution is iterates through each hash and returns either true or false
#   - the value[0] is looking at each value's first string character and comparing it to the key's symbol converted to a string
#   - since in the first hash, not all values pass this conditional, the Enumberal#.all? method returns true only for the second hash
#   - the select method therefore returns an array with one hash [{ :c => "cat" }]

  
# [[[1, 2], [3, 4]], [5, 6]].map do |arr|
#   arr.map do |el|
#     if el.to_s.size == 1    # it's an integer
#       el + 1
#     else                    # it's an array
#       el.map do |n|
#         n + 1
#       end
#     end
#   end
# end

# - the Array#map method is called on a nested array of nested arrays
# - the outer block is executed, with the variable arr for each inner array
# - the Array#map method is called on each inner array 
# - the inner block is executed, with varirable element for each element within the inner array
#   - the conditional if statement is called within the block 
#     - if the size of the inner element of the inner array, when converted to a string, is equal to 1 
#     - add 1 to that element 
#   - otherwise, call map on the inner element of of the inner array (another array) and for each element in that array
#   - add 1 to that element 
# - transformation is happening 3 times, with the final transoformation changing the original array to
# [[[2, 3], [4, 5]], [6, 7]]



# def remove_evens!(arr)
#   arr.each do |num|
#     if num % 2 == 0
#       arr.delete(num)
#     end
#   end
#   arr
# end

# p remove_evens!([1,1,2,3,4,6,8,9])


# 0: [1,1,2,3,4,6,8,9]
# 1: [1,1,2,3,4,6,8,9]
# 2: [1,1,3,4,6,8,9]
# 3: [1,1,3,6,8,9]
# 4: [1,1,3,6,9]

def remove_evens!(arr)
  cloned_arr = arr.dup
  arr.each do |num|
    if num % 2 == 0
      cloned_arr.delete(num)
    end
  end
  cloned_arr
end

arr = [1,1,2,3,4,6,8,9]
p remove_evens!(arr)
p arr
