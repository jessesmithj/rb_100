# Write a method that takes a string argument, and returns true if 
# all of the alphabetic characters inside the string are uppercase, 
# false otherwise. Characters that are not alphabetic should be ignored.

## PEDAC

# Input: string
# Output: boolean

# Explicit: 
# - return true if all alphabetic characers in the the string are uppercase
# - retrun false otherwise
# - ignore non-alpha characters 

# Data Structure: String, Array

# Algorithm: 
# - set ALPHA = cap alphabet
# - set boolean_arr = []

# - for each character in string that is alpha, 
#   - add true to boolean_arr if cap
#   - add false if not

# - if all values in boolean_arr are true, retrun true
# - if not, return false

ALPHA = ("A".."Z").to_a
def uppercase?(string)
  string.gsub!(/[^a-z]/i, '')
  string.chars.all? { |char| ALPHA.include?(char) }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# LS 
def uppercase?(string)
  string == string.upcase
end