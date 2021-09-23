# Write a method that takes an array of strings, and returns 
# an array of the same string values, except with the vowels 
# (a, e, i, o, u) removed.

# I: array of strings
# 0: same arary of strings, with vowels removed

# Explicit:
#  - take array of strings and return same array without vowels
#  - vowels are letters a, e, i, o, u (no 'y')
# Implicit
#  - case does no matter, remove lower and upper case vowels
#  - if a string is only vowels, return an empty string

#  D: array, string 

#  A:
#   Set array_no_vowels = []
#   For each word in input array, loop through each character
#   If AEIOUaeiou letters are found, delete them 
#   Add new no vowel word to array_no_vowels array
#   return array_no_vowels


def remove_vowels(array)
  array_no_vowels = Array.new

  array.each do |word|
    array_no_vowels << word.delete("AEIOUaeiou")
  end

  array_no_vowels
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#LS 
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end