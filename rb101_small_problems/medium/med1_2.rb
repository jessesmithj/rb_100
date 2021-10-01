

# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may assume that n is always a positive integer.

#my first solution

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(number, n)
#   dig_array = number.to_s.chars.map(&:to_i)
#   last_number = dig_array[-n..-1]
#   rotated_array = rotate_array(last_number)
#   (dig_array[0..-n -1] + [rotated_array]).flatten.join.to_i
# end

#refactored

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  num_array = number.to_s.chars #.map(&:to_i) -- not necessary because join converts to string, so you always need the to_i at the end
  num_array[-n..-1] = rotate_array(num_array[-n..-1])
  num_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


# LS 
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end