# Write a method that determines and returns the ASCII string value of a string 
# that is passed in as an argument. The ASCII string value is the sum of the ASCII 
# values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# ## PEDAC

# I: String
# O: integer of the sum of ASCII values of the input string

# D: String, integer, ASCII values

# - SET sum = 0
# - Iterate over each character of string (include spaces, punctuation, etc.)
# - In each iteration, determine the ASCII value of the character 
# - Add the ASCII value to sum
# - Return sum

def ascii_value(string)
  sum = 0
  string.chars.each { |char| sum += char.ord } ## can use each_char
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# codepoints → an_array
# Returns an array of the Integer ordinals of the characters in str. 
# This is a shorthand for str.each_codepoint.to_a.


# "a".ord.chr == "a"