# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English 
# words for each number:

# zero, one, two, three, four, five, 
# six, seven, eight, nine, ten, 
# eleven, twelve, thirteen, fourteen, 
# fifteen, sixteen, seventeen, eighteen, nineteen

# I: array of Integers
# O: array of integers, sorted based on the english words for the input Integers

# D: Hash of number/names, Array of Integers

# Implicit: 
# - Integers in input array are not repeated
# Explicit:
# - Integers are between 0 & 19 
# - Sort the english names of the integers, not the integers themselves

# - SET ENG_WORD_NUM = {hash of 0-19 corresponding with english names
# - SET word_num = []
# - for each integer in argument
#   - look up correpsonding english name in ENG_WORD_NUM & push the value to word_num
# - sort and return word_num array

# my answer

NUM_WORDS = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 
                4 => "four", 5 => "five", 6 => "six", 7 => "seven",
                8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 
                12 => "twelve", 13 => "thirteen", 14 => "fourteen", 
                15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 
                18 => "eighteen", 19 => "nineteen"}

def alphabetic_number_sort(numbers)
  num_words = []
  num_sorted = []

  numbers.each do |num|
    num_words << NUM_WORDS[num]
    num_words.sort!
  end

  num_words.each do |word|
    num_sorted << NUM_WORDS.key(word)
  end

  p num_sorted
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# LS

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end

# puts alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# p alphabetic_number_sort([12, 2, 0, 11])