# Write a method that takes a sentence string as input, and returns the same string 
# with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
# converted to a string of digits.

# ## PEDAC

# Input: String 
# Output: String with any number words converted to strings of the number (Ex: "five" = 5)

# Explicit: 
# - Convert integers to a string of digits in the string
# - return the same string (transform it)

# Data Structure: Hash constant, array, string

# Algorithm: 
# - Initialize a hash constant with keys as numbers and values as their string representations 
# - Split the string into an array of words
# - Iterate over the array to look for number words 
# - If number word found in hash, convert to hash's value 
# - return the original string, transformed 

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word| 
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'




DIGITS = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 
           'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

def word_to_digit(str)
  str.split.map do |word|
    punct = word.delete("a-zA-Z")
    key = word.downcase.delete("^a-z")
    DIGITS.has_key?(key) ? DIGITS[key].to_s + punct : word
    end.join(' ')
end