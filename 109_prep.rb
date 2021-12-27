# reverse an array without using the built-in reverse method
# I: an array
# O: an array with items reversed 

# P: 

# - set rev_arr equal to empty array
# - set ind_left = 0
# - set ind_right = -1
# - iterate through input array equal to the number of array's size divided by 2
# - during each iteration, set the value of item at index 0 equal to the value at the last input
# - add 1 to ind_left
# - subtract 1 from ind_right
# - return rev_arr


# def rev_meth(arr)
#   rev_arr = []
#   ind_left = 0
#   ind_right = -1
  
#   (arr.size/2).times do |_|
#     arr[ind_left], arr[ind_right] = arr[ind_right], arr[ind_left]
#     ind_left += 1
#     ind_right -= 1
#   end
#   arr
# end
  
# p rev_meth([1, 2, 3, 4, 5]) == [5, 4, 3, 2, 1]
# p rev_meth(['john', 'joe']) == ['joe', 'john']
# p rev_meth([]) == []


#############


# select an element out of the array if its index is a fibonacci number

# def fib_seq(num)
#   fib = [0, 1, 1]
#   num.times { |_| fib << (fib[-2] + fib[-1]) }
#   fib
# end

# def select_fib(arr)
#   arr.select { |ele| fib_seq(1000).include?(ele) }.uniq
# end

# p select_fib([0, 1, 2, 100]) == [0, 1, 2]
# p select_fib([0, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 34]) == [0, 1, 2, 3, 5, 8, 13, 34]


###########

# write a method to determine if a word is a palindrome, without using the reverse method
# only alpha chars count, ignore punct & spaces

# I: string
# O: boolean 

# D: array, string

# Algo:
# - left_ind = 0
# - right_ind = -1
# - convert string to all alpha, downcase 
# - convert string to an array of chars 
# - iterate through array of chars the number of chars/2
# - compare first char to last char
# - left_ind += 1
# - right_ind -= 1
# - check to see if all iterations return true
# - if they do return true
# - if not, return false


# def is_palindrome?(word)
#   left_ind = 0
#   right_ind = -1
#   alpha_only_arr = word.downcase.gsub(/([^a-z])/, "").chars
#   boolean_arr = []
  
#   alpha_only_arr.each do |_| 
#     boolean_arr << (alpha_only_arr[left_ind] == alpha_only_arr[right_ind])
#     left_ind += 1
#     right_ind -= 1
#   end 

#   p boolean_arr
#   boolean_arr.all? { |x| x == true }
# end


# p is_palindrome?("racecAr") == true
# p is_palindrome?("noOn") == true
# p is_palindrome?("jesse") == false
# p is_palindrome?("Madam i'm adam") == true
# p is_palindrome?("") == true




############



# Given a non-empty string, check if it can be constructed by taking a substring of it an appending
# multiple copies of the substring together. 

## ONLY MULTIPLES OF THE LENGTH OF THE STRING COULD WORK TO SOLVE THIS PROBLEM
## -- For example, a string with 5 chars could only be the first string repeated 
## --- A string of 8 chars, could either be the first 2 strings repeated 4x OR the first 4 strings repeated twice 

# Input: string
# Output: boolean

# - strings will only have lowercase chars
# - only alpha chars

# def repeated_substring_pattern(str)
#   return true if str.chars.all? { |char| char == str[0] } && str.size > 1
#   return true if str[0..((str.size / 2) - 1)] * 2 == str
#   false
# end

# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aaaaa") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true



# def substrings(str)
#   substrings = []
#   1.upto(str.size / 2) do |sub_length|
#     if (str.size % sub_length == 0)
#       substrings << str[0, sub_length]
#     end
#   end
#   substrings
# end

# def repeated_substring_pattern(str)
#   substrings = substrings(str)
#   substrings.each do |sub|
#     mult = (str.size / sub.size)
#     return true if (sub * mult) == str
#   end
#   false
# end

# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aaaaa") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true



############



# Given an array of strings made only from lowercase letters, return an array of all characters 
# that show up in all strings within the given array (including duplicates).

# I: array of strings
# O: array of characters that apepar in all strings, including duplicates

# - set chars equal to first word in array to set of chars
# - iterate through each character
# - select only the characters that exist in all words 
# - iterate through other word, when character is found, remove it from word (will eval to true, select will select the char)


# def common_chars(arr)
#   arr = arr.map { |word| word.dup } # duplicates original array, so it is not mutated

#   chars = arr.shift.chars
#   chars.select do |char| 
#     arr.all? { |word| word.sub!(char, "") }
#   end
# end

# arr = ['bella', 'label', 'roller']
# p common_chars(arr) == ['e', 'l', 'l']
# p arr

# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']



############



# Create a method that takes a positive integer number and returns the next bigger number formed 
# by the digits. # return -1 if no bigger number can be formed


# Input: integer
# Output: next biggest integer or -1 if no bigger integer 

# edge cases: 
# single digit number
# all the same number
# largest number already 

# Algorithm: 
#  - convert number to array
#  - if all numbers the same OR only one number OR num == sorted array joined togehter, return -1 
#  - set up a loop 
#  - within loop, add one to number
#  - check to see if number converted to array of integers == original number converted to string of integers
#  - break if true
#  - otherwise continue looping until true 
# end 

## ANSWER 1

# def next_bigger_num(num) 
#   num_array = num.digits 
#   return - 1 if num_array.uniq.size == 1 || num_array.size == 1 || num_array.sort.reverse == num.digits.reverse

#   loop do
#     num += 1
#     break if num.digits.sort == num_array.sort
#   end

#   num
# end

#Algo 2
# - find max number
# - from input num + 1 to max num, iterate through numbers 
# - check to see if new num, sorted is equal to input num sorted
# - if it is return that number 
# - if none are return -1

## ANSWER 2

# def next_bigger_num(num)
#   max_num = num.digits.sort.reverse.join.to_i
#   (num + 1..max_num).to_a.each do |num2|
#     return num2 if max_num == num2.digits.sort.reverse.join.to_i
#   end
#   -1
# end

# def max_num(input)
#   input.to_s.chars.sort.reverse.join.to_i
# end


# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(123456789) == 123456798
# p next_bigger_num(9) == -1
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1

## ANSWER 3

# def next_bigger_num(num)
#   p max = max_num(num)

#   (num + 1..max).to_a.each do |num2|
#     return num2 if max_num(num2) == max
#   end
#   -1
# end

# def max_num(input)
#   input.to_s.chars.sort.reverse.join.to_i
# end


#############


# Find the length of the longest substring in the given string that 
# contains exactly 2 characters "a" and 2 characters "e" in it.

# As an example, if the input was “aaee”, the substring (aaee) length would be 4.
# For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

# If the length of the input string is 0, return value must be -1 and 
# if none of the substrings contain 2 "a" and "e" characters return -1 as well.

# I: string
# O: longest substring with exactly 2 a's and 2e's


# Algo:
# set substrings to = array of all substrings
# sort through all substrings, find those substrings that have exacctly 2as and 2es
# if none, return -1
# if some, find the string with the greatest size in the 2a2e substring array & return it

## COMMIT THIS TO MEMORY

# def substrings(str)
#   substrings = []
#   (0..str.size - 1).each do |num1|
#     (num1..str.size - 1).each do |num2|
#       substrings << str[num1..num2]
#     end
#   end
#   substrings
# end

# def longest_ae(str)
#   substrings = substrings(str)

#   ae_substrings = []
#   substrings.each do |sub|
#     ae_substrings << sub if sub.count("a") == 2 && sub.count("e") == 2
#   end

#   size = 0
#   ae_substrings.each { |word| size = word.length if word.size > size }
#   return -1 if size == 0
#   size
# end


# p longest_ae("aaee") == 4
# p longest_ae("babanctekeaa") == 10
# p longest_ae("pteromerhanophobia") == 18
# p longest_ae("secaundogenituareabb") == 16
# p longest_ae("aaaa") == -1
# p longest_ae("xenoglossophobia") == -1
# p longest_ae("johannisberger") == -1



#################


# Find the maximum sum of a contiguous subsequence in array of integers.
# If there is an empty array OR a negative numbers only array, return 0

# As an example:
# [-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 
# as the subarray [4, -1, 2, 1] holds the maximum sum value within the array
# which returns: 4 + -1 + 2 + 1 = 6



# I: array of integers, possibly pos and nega
# O: sum of maximum subarray

# Algo:
# - set subarrays equal to all subarrays from array 
# - set max_num = 0
# - iterate through subararys
# - set max_num equal to subarray sum if greater than current max_num
# - return max_num


# def subarrays(input)
#   subarrays = []
#   (0..input.size - 1).each do |num1|
#     (num1..input.size - 1). each do |num2|
#       subarrays << input[num1..num2]
#     end
#   end
#   subarrays
# end

# def maxSequence(array)
#   subarrays = subarrays(array)

#   max_num = 0 
#   subarrays.each do |sub|
#     max_num = sub.sum if sub.sum > max_num
#   end
#   max_num
# end

# p maxSequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 # [4, -1, 2, 1] == 6
# p maxSequence([]) == 0
# p maxSequence([-32]) == 0
# p maxSequence([11]) == 11
# p maxSequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
# p maxSequence([1, 2, 3, 4, 5, 6]) == 21


##### SOLUTION 2

# def subsequences(array)
#   subsequences = []
#   (0...array.length).each do |index1|
#     (index1...array.length).each do |index2|
#       subsequences << array[index1..index2]
#     end
#   end
#   subsequences
# end

# def maxsequence(array)
#   subsequences = subsequences(array)
#   max = subsequences.map { |sub| sub.sum }.max
#   return max if max > 0
#   0
# end

# p maxsequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6 
# p maxsequence([-32]) == 0
# p maxsequence([11]) == 11
# p maxsequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
# p maxsequence([1, 2, 3, 4, 5, 6]) == 21



##################



# Write a method to find the largest common prefix string amongst an array of strings.
# Return an empty string if there is no common prefix 

# I: array of strings 
# O: longest common prefix (if any, empty string if not)

# Algorithm:
# - set result equal to empty string
# - set chars_array equal to first string in array
# - iterate through each char in chars array (with index)
#   - check to see if char is at same index in rest of words at same index
#   - if it is, push char to results
# - return result

# def common_prefix(arr)
#   result = ''
#   chars_array = arr.shift.chars
#   chars_array.each_with_index do |char, idx|
#     if arr.all? { |word| char == word[idx] }
#       result << char 
#     else
#       return result
#     end
#   end
#   result
# end

# p common_prefix(['flower', 'flow', 'flight']) == 'fl'
# p common_prefix(['dog', 'racecar', 'car']) == ''
# p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
# p common_prefix(['throne', 'dungeon']) == ''
# p common_prefix(['throne', 'throne']) == 'throne'

# p common_prefix(['flower', 'flow', 'fliwht']) == 'fl'



##################



# Given 2 strings, find if there is a substring that is both strings.
# Return true if there is a substring that is both strings.
# False if there is no substring in both strings
# Substrings must be longer than one character 


# I: two strings
# O: boolean 

# D: Arrays, strings

# Algo: 
# - return false if either str1 or str2 is empty
# - find substrings in both strings that are over 1 character 
# - iterate through substrings in first str1 
# -- iterate through substrings in str2
# --- check to see if str1 contains str2
# ----- return true if so
# - return false 


# def substrings(str)
#   substrings = []
#   (0...str.size).each do |num1|
#     (num1...str.size).each do |num2| 
#       substrings << str[num1..num2]
#     end
#   end
#   substrings.select { |word| word.size > 1}
# end

# def substring_test(str1, str2)
#   return false if str1.empty? || str2.empty?

#   substrings_1 = substrings(str1)
#   substrings_2 = substrings(str2)

#   substrings_1.each do |sub1| 
#     substrings_2.each do |sub2|
#       return true if sub1.downcase.include?(sub2.downcase)
#     end
#   end
#   false
# end


# p substring_test("Something", "Fun") == false
# p substring_test("Something", "Home") == true
# p substring_test("Something", "") == false
# p substring_test("", "Something") == false
# p substring_test("BANANA", "banana") == true
# p substring_test("test", "llt") == false
# p substring_test("", "") == false
# p substring_test("1234567", "3461254") == true





# Write a method, all_vowel_pairs, that takes in an array of 
# words and returns all pairs of words that contain every vowel. Vowels are the letters a, e, i, o, u. 

# A pair should have its two words in the same order as the original array. 

# Input: array of words 
# Output: array with worsd that have all vowels

# Data: array
# Algo: 

# return subarray of all pairs of words 

# def all_vowel_pairs(arr)
#   pairs = []
#   (0...arr.size).each do |index1| 
#     (index1 + 1...arr.size).each do |index2|
#       pairs << arr[index1] + " " + arr[index2]
#     end
#   end
  
#   pairs.select do | pair | 
#     'aeiou'.chars.all? do |chars| 
#       pair.include?(chars)
#     end
#   end  
# end

# p all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"]) ==  ["action europe", "tear impromptu"]



##################


# Given a string, return the longest substring that has the same character inside of the substring.

# Given an empty array, return an empty array

# Input: String 
# Output: String 

# Explicit:
#   - Return the longest substring & the substring contains all of the same characters. 

# Algorithm:
#   - Generate an array of all substrings of the Input String. 
#   - Iterate over that array to access each substring.
#     - For each substring, all of the characters in the substring are equal to the first character of the String. 
#     - Add them to an Array, same_char_substrings. 
#   - Sort same_char_substrings by substring length
#   - Return the last substring of that sorted Array. 

# def substrings(string)
#   substrings = []
#   (0...string.length).each do |index1|
#     (index1...string.length).each do |index2|
#       substrings << string[index1..index2]
#     end
#   end
#   substrings
# end

# def longest_single_substring(string)
#   return "" if string.empty?
  
#   all_substrings = substrings(string)
#   same_char_substrings = all_substrings.select do |substring|
#     substring.chars.all? do |char|
#       char == substring[0]
#     end
#   end
  
#   same_char_substrings.sort_by do |substring|
#     substring.length
#   end.last
# end



# def longest_css(string)
#   longest_string = ''

#   index = 0
#   while index < string.length
#     current_string = ''
#     char_to_check = string[index]
#     while string[index] == char_to_check
#       current_string += string[index]
#       index += 1
#     end

#     if current_string.length > longest_string.length
#       longest_string = current_string
#     end
#   end
#   longest_string
# end


## ANSWER 2 
# def longest_css(string)
#   longest_string = ''

#   index = 0
#   while index < string.length
#     current_string = ''
#     char_to_check = string[index]
#     while string[index] == char_to_check
#       current_string += string[index]
#       index += 1
#     end

#     if current_string.length > longest_string.length
#       longest_string = current_string
#     end
#   end
#   longest_string
# end



# p longest_single_substring("jaassssoonn") == "ssss"
# p longest_single_substring("goataaactionttttttearimmmmmpromptutiredeurope") == "tttttt"
# p longest_single_substring("iiii") == "iiii"
# p longest_single_substring("") == ""







############


# Write a method, caesar_cipher, that takes in an a number.
# The method should return a new string where each char of the original string is shifted the given number of times in the alphabet.
  

# I: string & num
# O: string that is shifted alphabetically number of times from input number


# ASCII ord - a - 97, z - 122 
# - if character.ord + input number is over 122, subtract 25

# Algorithm: 
# - convert string into array
# - iterate through str_arr 
# - find ASCII value of string & add input number
# - if value is over 122, subtract 26 until it isnt
# - return new value 
  
# def caesar_cipher(str, num) 
#   str.chars.map do |char| 
#     new_char = char.ord + num
#     new_char -= 26 if new_char > 122
#     new_char.chr
#   end
#   .join
# end

# p caesar_cipher("apple", 1)    == "bqqmf"
# p caesar_cipher("bootcamp", 2) == "dqqvecor"
# p caesar_cipher("zebra", 4)    == "difve"




#####################


# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.
  
# I: string (sentence or word) 
# O: highest scoring words based on criteria (a:1, z: 26) 

# D: array, strings 

# Algo: 
# - set words_arr = split str
# - set word_points_array to empty array
# - iterate through array of words 
#   - set value = 0
#   - for each word, iterate through its characters 
#     - value += char score (based on point value)
#    - push each value to word_points_array
# - find the index of the max value (or first max value) in word_points_array
# - return element at max value index in words_arr
  

### ANSWER

# def alphabet_score(str) 
#   words_arr = str.split(" ")
#   word_points_arr = []
  
#   words_arr.each do |word| 
#     value = 0
#     word.chars.each do |char|
#       value += char.ord - 96
#     end
#     word_points_arr << value
#   end
#   word_points_arr.max
#   max_value_index = word_points_arr.index(word_points_arr.max)
#   words_arr[max_value_index]
# end
  

# ## ANSWER 2 

# def alphabet_score(words)
#   highest_score = 0
#   highest_scoring_word = ''

#   words.split.each do |word|
#     word_score = 0
#     word.each_char do |char|
#       word_score += LETTER_VALUES[char]
#     end

#     if word_score > highest_score
#       highest_score = word_score
#       highest_scoring_word = word
#     end
#   end
#   highest_scoring_word
# end


# p alphabet_score('man i need a taxi up to ubud') == 'taxi'
# p alphabet_score('what time are we climbing up the volcano') == 'volcano'
# p alphabet_score('take me to semynak') == 'semynak'
# p alphabet_score('aa b') == 'aa'


##########

# You are going to be given an array of integers. Your job is to
# take that array and find an index `N` where the sum of the
# integers to the left of `N` is equal to the sum of the integers
# to the right of `N`. If there is no index that would make this
# happen, return -1.

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1]:
# Your method will return the index 3, because at the 3rd position
# of the array, the sum of left side of the index [1,2,3] and the
# sum of the right side of the index [3,2,1] both equal 6.


# I: array
# O: integer (aka index)

# Algo:
# - Iterate from 0 to size of array - 1 (with index)
#   - check to see if the sum of array reference (idx 0 to where we're at in iteration)   is equal to the the sum of the array ref from place of iteration to -1
#   - if it is, return index 
#   - if it's not, return -1
# end

# def find_even_index(arr) 
#   return 0 if 0 == (arr[1..arr.size]).sum
#   return (arr.size - 1) if 0 == (arr[0..-2]).sum
  
#   (0...arr.size).each do |start_idx|
#     return start_idx if (arr[0...start_idx]).sum == (arr[start_idx + 1..-1]).sum
#   end
#   -1
# end


# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
# #EDGE CASES
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6




##########



# Your task is to create a method that turns a string into a wave (like at a stadium). 
# You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

# Rules

#  1. The input string will always be lower case but maybe empty.
#  2. If the character in the string is whitespace then pass over it
#  3. Leave each fourth letter unaltered—-do not make those letters uppercase

# Example


# I: string
# O: array of string waves (following certain rules)

# D: arrays, strings

# Input will always be lowercase (maybe empty)
# Every 4th letter (regardless of white space) should be unaltered 
# ignore whitespace (but include in final output)

# Algo:
# - create wave_array and set value to same word, str.size times long
# - iterate through wave_array with index
# - convert word to array of charracters and iterate through each character 
# - if character is an alpha character and idx is not 3 & index at word is equal to current char being iterated over
#  - upcase character 
# - else return character
# - join word
# - return wave_array



# def wave(str)
#   wave_arr = []
#   every_fourth_letter = 1

#   (0...str.size).each do |idx|
#     next if str[idx] == " "
#     if every_fourth_letter % 4 == 0
#       every_fourth_letter += 1
#       wave_arr << str 
#     else
#     every_fourth_letter += 1
#      wave_arr << (str[0...idx] + str[idx].upcase + str[idx +1..-1])
#     end
#   end 
#   wave_arr
# end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "hello", "hellO"]
# p wave("studying") == ["Studying", "sTudying", "stUdying", "studying", "studYing", "studyIng", "studyiNg", "studying"]
# p wave("launch school") == ["Launch school", "lAunch school", "laUnch school", "launch school", "launCh school", "launcH school", "launch School", "launch school", "launch scHool", "launch schOol", "launch schoOl", "launch school"]
# p wave("") == []



##########




# Mexican wave

# I: string
# O: array of string as a wave

# Notes
# - skip blank spaces

# D: arrays, strings

# Algo:
# - set wave_arr equal to str.size times pushing input string into wave_array
# - iterate over wave_arr with index & during each iteration, capitalize current char

# def wave(str)
#   wave_arr = []
#   str.size.times { |_| wave_arr << str.dup }

# ## SOLUTION 1
# def wave(str)
#   wave_arr = []
#   (0...str.size).each do |idx|
#     next if str[idx] == " "
#     wave_arr << (str[0...idx] + str[idx].upcase + str[idx +1..-1])
#   end 
#   wave_arr
# end


# ## SOLUTION 2
# def wave(str)
#   result = []
#   chars = str.downcase.chars
#   chars.each_with_index do |char, idx|
#     next if char == " "
#     result << str[0...idx] + char.upcase + str[idx+1..-1]
#   end
#   result
# end



# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars") == == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("") == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ") == [" Gap ", " gAp ", " gaP "]







##########



=begin
Implement a method that takes a hash list of users, and find the nexus: the user whose rank is the closest is equal to his honor. Return the rank of this user. For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. If there are several users who come closest, return the one with the lowest rank (numeric value). The hash will not necessarily contain consecutive rank numbers; return the best match from the ranks provided.

Example:
            rank    honor
users = {  1  =>  93,
             10  =>  55,
             15  =>  30,
             20  =>  19,    <--- nexus
             23  =>  11,
             30  =>   2 }

=end

# nexus({1 => 3, 3 => 3, 5 => 1}) == 3
# nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
# nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2

# wave("") == []




######################


# Write function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged 
# to match str2, otherwise return false. 

# Note: Do not mutate the first string being passed in

# I: two strings
# O: boolean (if first string can be scrambled to spell second string)

# D: strings, arrays

# Algorithm: 
# - convert str 2 to an array of characters 
# - iterate over array of characters one by one
# - check to see if all characters from str1 are included in array
# - if a string is included, delete the character, so it cannot be iterated over again 
# - return true if all characters found
# - false if not 

# def scramble(str1, str2)
#   str1 = str1.dup
#   str2.chars.all? { |char| p str1.sub!(char, '') if str1.include?(char) } 
# end


# p scramble('javaass', 'jjss') == false
# p scramble('lunch', 'launch') == false
# p scramble('rkqodlw', 'world') == true 
# p scramble('cedewaaraosoqqtws', 'codewars') == true 
# p scramble('kata', 'steak') == false
# p scramble('scriptjava', 'javascript') == true  




#####################



# Find the length of the longest substring in the given string that is the same in reverse.

# I: string (spaces do not count)
# O: integer (longest substring that is a palindrome)

# Data: array, strings 

# Algo:
# - set substrings to an arary of all substrings (find all substrings)
# - once all substrings found, select only those that are palindromes 
# - find longest palindrome by size & return it

# def longest_palindrome(str)
#   return 0 if str.empty?
#   substrings = []
#   (0...str.size).each do |start_idx|
#     (start_idx...str.size).each do |end_idx|
#       substrings << str[start_idx..end_idx]
#     end
#   end
#   substrings.select { |sub| sub == sub.reverse }.max_by { |sub| sub.size }.size
# end


# p longest_palindrome('i like racecars that go fast') == 7
# p longest_palindrome('a') == 1
# p longest_palindrome('aa') == 2
# p longest_palindrome('baa') == 2
# p longest_palindrome('baabcd') == 4
# p longest_palindrome('baablkj12345432133d') == 9
# p longest_palindrome('') == 0



######################


# You are going to be given an array of integers. Your job is to
# take that array and find an index `N` where the sum of the
# integers to the left of `N` is equal to the sum of the integers
# to the right of `N`. If there is no index that would make this
# happen, return -1.

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1]:
# Your method will return the index 3, because at the 3rd position
# of the array, the sum of left side of the index [1,2,3] and the
# sum of the right side of the index [3,2,1] both equal 6.

# I:  array of integers
# O: integer (that represents index)

# D: array 

# - find index where sum to left and sum to right is the same 
# - if this does not exist, return -1
# - the sum to the left of index 0 is 0
# - the sum to the right of last index is 0 

# Algorithm: 
# - iterate over array using a range (0...arr.size)
# - check to see if to see if the sum of elements to left of index is equal to sum of elements to right of index
# - return index those sums are equal
# - else return -1 

# - on first iteration, sum to left is 0 
# - on last iteration, sum to right is 0 


# def find_even_index(arr) 
#   (0...arr.size).each do |idx| 
#     # return 0 if arr[1..-1] == 0 if idx == 0 
#     # return arr.last if arr[0..-2] == 0
#     return idx if arr[0...idx].sum == arr[idx + 1..-1].sum
#   end
#   -1
# end

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3

# #EDGE CASES
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6




















#############################



# LAUNCH SCHOOL MEDIUM PROBLEMSE PASS 2 



#############################



# 2.1 

# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# I: array
# O: array, rotated ( move first element to end of array and return new array, non-destructive)

# D: array

# Algorithm:
# - take arr from element 1 to -1 and add it to arr at 0 index and return arr

# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true





# 2.2

# Write a method that can rotate the last n digits of a number. For example:
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

# I: number, how many rotations 
# O: array, rotated 

# Algorithm:
# - set digits_arr = equal to o an array of digits (reversed)
# - add digits_arr[0...-rotations] to 
#   - call rotate_array method and for the argument call the last (number of rotations) elements of digits_arr
# - return this new array 


# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

# # MINE
# def rotate_rightmost_digits(num, rotations)
#   digits_array = num.digits.reverse
#   new_num = digits_array[0...-rotations] + rotate_array(digits_array.last(rotations))
#   new_num.join.to_i
# end


# #LS 
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) #reassignment of integers from a certain length (keeps the other integers the same)
#   all_digits.join.to_i
# end


# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917






# 2.3

# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
# Keep the first 2 digits fixed in place and rotate again to 321759. 
# Keep the first 3 digits fixed in place and rotate again to get 321597. 
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.


# I: integer
# O: integer with maximum rotations performed 

# D: Arrays

# Algorithm: 
# - iterate over array the size of the array - 1 down to 0
# - set results equal to the return value of calling the rotate_rightmost_digits method, passing in input & block param num) 
# - 
# - return results


def max_rotation(num)
  num_size = num.digits.size 
  (num_size).downto(1) do |n| 
     num = rotate_rightmost_digits(num, n)
  end
  num
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
