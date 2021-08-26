# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element| 
    occurrences[element.to_sym] = 0
  end
  
  array.each do |element|
    occurrences[element.to_sym] += 1
  end
    
  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)



#LS

# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)


### PEDAC ###

# input: array of strings
# output: a hash that counts the number of times each string is displayed
#     car => 4
#     truck => 3
#     SUV => 1
#     motorcycle => 2

# iterate over elements of an array and each time the element exists in the array, add value +1 as it's value to a new hash
# Suv != SUV, capitalization matters


# colors = ["blue", "red", "Blue", "red", "blue", "yellow"]
# # blue => 2
# red => 2
# Blue => 1
# yellow => 1

#Array, iteration, hash

# 1) Create an empty hash called "hash_of_occurrences"
# 2) for each unique value in array, push as a key value to "hash_of_occurances" with the integer value of 0
# 3) for each occurance of the same element in input array, increment hash value +1
# 4) return hash



