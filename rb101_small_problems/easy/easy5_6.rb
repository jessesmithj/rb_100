# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

## PEDAC 

# I: String with one or more words seperated by a space
# O: Hash that contains the size of words as the keys & the number of those size of words as values

# D: String, Array, Hash

# -- SET num_word_sizes = {}
# -- SET hash_value = 0
# -- Convert input string into an array & iterate over array
# -- For each unique word size, push as a new key in num_word_sizes
# -- For each unique words size in array, push value += 1
# - return hash


def word_sizes(string)
  counts = {}
  string.split.each do |word|
    counts[word.size] = 0
  end
  string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}


#LS 
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
