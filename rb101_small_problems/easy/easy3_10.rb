
# def palindromic_number?(integer)
#   integer = integer.to_s
#   increment_counter = 0
#   decrement_counter = integer.size - 1
#   boolean_array = []

#   while increment_counter < integer.size 
#     boolean_array << (integer[increment_counter] == integer[decrement_counter])
#     increment_counter += 1
#     decrement_counter -= 1
#   end

#   boolean_array.include?(false) ? false : true
# end


def palindromic_number?(number)
  number == number.to_s.reverse.to_i
end

puts palindromic_number?(0005500) == true
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true