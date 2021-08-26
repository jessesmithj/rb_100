# Write a method that takes one argument, a string containing one or more words, and 
# returns the given string with words that contain five or more characters reversed. 
# Each string will consist of only letters and spaces. Spaces should be included only 
# when more than one word is present.

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS


## PEDAC ##

# Input: A string containing one or more words
# Output: The exact same string, except words that contain 5 or more characters are reversed

# Input string will only consist of letters & spaces (no integers, punctutation)

# String, array if more than one word

# Array = turn string into an array
# For each word in array check to see if word's characters >= 5
# If the word is 5 characters or over, reverse the string in place
# Turn array back intro string
# return string 

def reverse_words(string)
  array = string.split

  array.each do |word|
    word.reverse! if word.length >= 5
  end

  array.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School is cool')         # => hcnuaL loohcS


## LS 

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end

