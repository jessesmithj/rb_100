
# Write a method that returns true if the string passed as an argument is a palindrome, 
# false otherwise. A palindrome reads the same forward and backward. For this exercise, 
# case matters as does punctuation and spaces.

## PEDAC ## 

# - String must be the exact same forward and backward
# - case, punctuation, spaces matter within the string

# I: string
# O: boolean value depending on if input is palindrome


# if input string is equal to the reverse of the input string 
#   return true
# otherwise 
#   return false

# check to see if a string is plaindrome - case, punctuation, spaces matter
# can be accomplished simply with the reverse method built into Ruby:

def palindrome?(string)
  string == string.reverse
end

# how can we accomplish without the reverse string method?

## psuedocode 
# SET increment_counter = 0
# SET decrement_counter = size of string - 1 (since index starts at 0)
# SET boolean_array = emtpy array
# while increment_counter + 1 < size of the string
#   check to see if value of string at the index of increment value == string index value of decemrent value
# retrun true if all loop iterations == true
# retrurn false if not


def palindrome?(string)
  increment_counter = 0
  decrement_counter = string.size - 1
  boolean_array = []

  while increment_counter < string.size 
    boolean_array << (string[increment_counter] == string[decrement_counter])
    increment_counter += 1
    decrement_counter -= 1
  end

  boolean_array.include?(false) ? false : true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true
puts palindrome?('jessEssej') == true
puts palindrome?('jessessEj') == false
puts palindrome?('william mailliw') == true










## original method

# def palindrome?(string)
#   increment_counter = 0
#   decrement_counter = (string.size - 1)
#   boolean_array = []

#   if string[increment_counter] == string[decrement_counter]
#     while increment_counter < string.size 
#       boolean_array << (string[increment_counter] == string[decrement_counter])
#       increment_counter += 1
#       decrement_counter -= 1
#     end
#   else
#     return false
#   end

#   boolean_array.include?(false) ? false : true
# end