# Given a string of words separated by spaces, write a method that takes this 
# string of words and returns a string in which the first and last letters 
# of every word are swapped.

# You may assume that every word contains at least one letter, and that the 
# string will always contain at least one word. You may also assume that 
# each string contains nothing but words and spaces

# ## PEDAC

# I: string of words seperated by spaces
# O: string in wihch the first and last letter's are swapped in every word

# D: string, array

# - Convert input string to array
# - Iterate over each element of array, swapping the first and last letter of each element 
# - turn array back into string
# - return string

def swap(word_string)  
  swap_word_array = []

  word_string.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    swap_word_array << word
  end
  swap_word_array.join(" ")
end

puts swap("The brown fox jumps over the lazy dog")
puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'


## LS 

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end


## original answer

# def swap(word_string)  
#   swap_word_string = []

#   word_string.split.map do |word|
#     first = word[0]
#     last = word[-1]
#     word[0] = last
#     word[-1] = first
#     swap_word_string << word
#   end
#   p swap_word_string
# end
