# In this kata, you've to count lowercase letters in a given string and 
# return the letter count in a hash with 'letter' as key and count as 
# 'value'. The key must be 'symbol' instead of string in Ruby.


# I: string
# O: hash, string char of input string as symbols & count of string char as values

# Explicit: 
# - key must be symbol
# - count only lowercase letters

# Data Structure: string, array, hash

# Algorithm: 
# - Covnert string into array
# - Iterate over string array 
# - for every new letter, convert to symbol and add to hash
# - every time letter/synmbol is iterated over add + 1 to hash's value, starting at zero
# - return new hash

# def letter_count(string)
#   string.chars.each_with_object(Hash.new(0)) { |char, hash| hash[char.to_sym] += 1 if char == char.downcase }
# end 

# p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
# p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
# p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

########

# You are given array of integers, your task will be to count all pairs in that array and return their count.

# Notes:

#     Array can be empty or contain only one value; in this case return 0
#     If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
#     Random tests: maximum array length is 1000, range of values in array is between 0 and 1000


# I: array of integers
# O: integer (num of pairs of input integers)

# Data: arrays


# def pairs(arr)
#   times = arr.each_with_object(Hash.new(0)) { |n, h| h[n] += 1 }
#   times.values.map { |n| n/2 }.sum
# end

#another student
# def pairs(arr)
#   arr.group_by { |x| x }.sum { |x, y| y.size }
# end

##
# def pairs(arr)
#   arr.uniq.sum { |i| arr.count(i) }
# end


# p pairs([1, 2, 5, 6, 5, 2]) #== 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) #== 4
# p pairs([0, 0, 0, 0, 0, 0, 0]) #== 3 
# p pairs([1000, 1000]) #== 1
# p pairs([]) #== 0
# p pairs([54]) #== 0


# Complete the solution so that it returns the number 
# of times the search_text is found within the full_text. 


# def solution(s, c)
#   s.scan(c).count
# end

# p solution('abcdeb','b') == 2
# p solution('abcdeb', 'a') == 1
# p solution('abbc', 'bb') == 1


#######


# The vowel substrings in the word codewarriors are o,e,a,io. 
# The longest of these has a length of 2. Given a lowercase string 
# that has alphabetic characters only (both vowels and consonants) 
# and no spaces, return the length of the longest vowel substring. 
# Vowels are any of aeiou. 

# I: string
# O: length of longest substring of vowels

# Explicit:
# - vowels = aeiou
# - string will include only alpha characters, no spaces 
# - return length of longest substring

# Data Stuctures: strings, arrays

# Algorithm: 
# - set sub_str equal to an empty array
# - convert input string to array of characters 
# - iterate through array of characters 
# - search for vowel & push to sub_str array
# - once vowel found, add next letter until no longer a vowel
# - continue to iterate until next vowel and repeat above 2 steps
# - return size of longest vowel substring

# def solve(str)
#   str.split(/[^aeiou]/).map {|s| s.size}.max
# end

# another student
# def solve(s)
#   s.scan(/[aeiou]+/).map(&:size).max
# end

# p solve("codewarriors") #== 2
# p solve("suoidea") == 3
# p solve("iuuvgheaae")== 4
# p solve("ultrarevolutionariees") == 3
# p solve("strengthlessnesses") == 1
# p solve("cuboideonavicuare") == 2
# p solve("chrononhotonthuooaos") == 5
# p solve("iiihoovaeaaaoougjyaw") == 8

#######

# Consider the word "abode". We can see that the letter a is in position 
# 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. 
# Notice also that d and e in abode occupy the positions they would occupy 
# in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters 
# that occupy their positions in the alphabet for each word. For example,

# solve(["abode","ABc","xyzD"]) = [4, 3, 1]

# See test cases for more examples.

# Input will consist of alphabet characters, 
# both uppercase and lowercase. No spaces.

# Good luck!

# I: An array of various strings
# O: An array of integers (consisting of how many letters in the various strings match their alphabet position by word)

# - case does not matter
# - input will only be alpha chars w/ no spaces

# DS: strings, arrays

# Algorithm:
# - Create an array of ararys or hash to reference alphabet character 
# - set results equal to empty array
# - iterate through each word in input array
# - set num = 0 
# - look up each character in each word 
# - compare character & position to alpha hash
# - if letter in word matches += 1 to num 
# - once all characters have bene iterated through, push num to results array
# - repeat above until all words' chars have been iterated through
# - return results

# ALPHA_NUM = (("a".."z").to_a.zip((1..26).to_a)).to_h

# def solve(arr)
#   results = []
#   arr.each do |word| 
#     num = 0
#     word.chars.each_with_index do |char, idx|
#       num += 1 if ALPHA_NUM[char.downcase] == idx + 1
#     end
#     results << num
#   end
#   results
# end

## another student
# def solve(arr)
#   arr.map {|s| s.downcase.each_char.zip('a'..'z').count {|a,b| a == b} }
# end

# p solve(["abode","ABc","xyzD"]) == [4,3,1]
# p solve(["abide","ABc","xyz"]) == [4,3,0]
# p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
# p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

#######



# Given a string of integers, return the 
# number of odd-numbered substrings that can be formed.

# For example, in the case of "1341", they are 
# 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

# solve("1341") = 7. See test cases for more examples.

# def solve(str)
#   res = []
#   (0...str.size).each do |i|
#     (i...str.size).each do |j|
#       res << str[i..j]
#     end
#   end
#   res.select{ |n| n.to_i.odd?}.size
# end

## another student
# def solve(s) 
#   s.chars.map.with_index{|n,i| n.to_i.odd? ? i+1 : 0}.reduce(:+)
# end

######

# def solve(str)
#   results = []
#   (0..4).each do |num1|
#     (num1..4) each do |num2|
#       results << str[num1..num2]


# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28

######

# Complete the function that takes an array of words.

# You must concatenate the nth letter from each word to 
# construct a new word which should be returned as a string, 
# where n is the position of the word in the list.

# def nth_char(arr)
#   arr.map.with_index { |w, i| w[i] }.join
# end

# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'


########

# For a given nonempty string s 
# find a minimum substring t 
# and the maximum number k, 
# such that the entire string s is equal to t repeated k times. 
# The input string consists of lowercase latin letters. Your function should return a tuple 
# (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

# I: string
# O: array with 1 str and 1 integers

# Explicit: 
# - input string will not be empty
# - find smallest substring until it repeats
# - find how many times it repeats 
# - answer should be sub_str * integer == input string
# - all lowercase alpha

# Data Structure: string, array

# Algorithm:
# - set results equal to empty string
# - iterate through string
# - push each char to results until a character after index 0 is the same as that chracter 
# - loop through multiplying the results str until you find the multiplier that makes the return value equal to input str
# - once you have place both values in array

# def f(str)
#   (1..str.size).each do |substr_size|
#     substr = str[0, substr_size]
#     repetitions = str.size / substr_size
    
#     return [substr, repetitions] if substr * repetitions == str
#   end
# end


# p f("ababab") == ["ab", 3]
# p f("abcde") == ["abcde", 1]


########

# def real_palindrome?(str)
#   str_ign = str.scan(/[a-zA-Z]/).join.downcase
#   str_ign == str_ign.reverse
# end


# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

#####

# Write a method that takes two strings as arguments, determines the longest of the two strings, 
# nd then returns the result of concatenating the shorter string, the longer string, and the 
# shorter string once again. You may assume that the strings are of different lengths.

# def short_long_short(str1, str2)
#   return str1 + str2 + str1 if str1.size < str2.size
#   return str2 + str1 + str2 if str2.size < str1.size
# end

# p short_long_short('abc', 'defgh') #== "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

#######

# centuries pass 2
# st, nd, rd, or th

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'


########

# The String#to_i method converts a string of numeric characters 
# (including an optional plus or minus sign) to an Integer. 
# String#to_i and the Integer constructor (Integer()) behave similarly. 
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you 
# worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available 
# in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. 
# Your method should do this the old-fashioned way and calculate the result 
# by analyzing the characters in the string.

# DIGITS = (('0'..'9').zip(0..9)).to_h

# def string_to_integer(str)
#   digits = str.chars.map { |c| DIGITS[c] }

#   val = 0
#   digits.each { |d| val = 10 * val + d }
#   val
# end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100


#########


# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the 
# time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# def time_of_day(num)
#   if num > 1440
#     num -= 1440 until num < 1440
#   elsif num < 0
#     num += 1440 until num > 0
#   end

#   hours = num / 60
#   minutes = num % 60

#   format('%02d:%02d', hours, minutes)
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"


########

# def remove_duplicate_words(str)
#   str.split.uniq.join(" ")
# end

# p remove_duplicate_words("alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta") #== "alpha beta gamma delta"
# p remove_duplicate_words("my cat is my cat fat") == "my cat is fat"

#######

# DNA_CONV = { "A" => "T", "T" => 'A', 
#              "C" => "G", "G" => "C"
# }

# def DNA_strand(str)
#   str.chars.map {|c| DNA_CONV[c]}.join
# end


# p DNA_strand("AAAA") == "TTTT"
# p DNA_strand("ATTGC") == "TAACG"
# p DNA_strand("GTAT") == "CATA"

# def more_zeros(str)
#   str.chars.select { |c| c.ord.to_s(2).count('1') < c.ord.to_s(2).count('0')}.uniq
# end

# p more_zeros('abcde') #== ['a','b','d']
# p more_zeros('Great job!') == ['a', ' ', 'b', '!']
# p more_zeros('DIGEST') == ['D','I','E','T']
# p more_zeros('abcdeabcde') == ['a','b','d']


#######

# def leading_substrings(str)
#   str.chars.map.with_index {|_, i| str[0..i].downcase.gsub(/[^0-9a-z]/, '')}
# end

# def substrings(str)
#   results = []
#   (0..str.size).each {|i| results.concat(leading_substrings(str[i..-1]))}
#   results
# end

# def palindromes(str)
#   substrings(str).select {|w| w.size > 1 && w == w.reverse}
# end


# p palindromes('abcd') #== []
# p palindromes('madam') #== ['madam', 'ada']
# p palindromes('hello-MADam-did-madam-goodbye') #== [
# #   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
# #   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
# #   '-madam-', 'madam', 'ada', 'oo'
# # ]
# p palindromes('knitting cassett-es') #== [
# #   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# # ]


#########

# STR_TO_NUM = (('0'..'9').to_a.zip(0..9)).to_h

# def string_to_integer(str)
#   digits = str.chars.map { |c| STR_TO_NUM[c] }
  
#   num = 0
#   digits.each {|n| num = num * 10 + n}
#   num
# end


# def string_to_signed_integer(str)
#   case str[0]
#   when '-'
#     -string_to_integer(str[1..-1])
#   when '+'
#     string_to_integer(str[1..-1])
#   else
#     string_to_integer(str)
#   end
# end


# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100


######

# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a 
# different order. Your output should look something like this:


# def anagrams(words)
#   p idx_sorted = words.map.with_index {|w, i| [w.chars.sort.join, i]}.sort
#   unique_sorted = idx_sorted.map {|arr| arr[0]}.uniq

#   unique_sorted.each do |word|
#     anagrams= []
#     idx_sorted.each do |arr|
#       anagrams << words[arr[1]] if word == arr[0]
#     end
#     p anagrams.sort
#   end
# end

# def anagrams(words)
#   result = {}
#   words.each do |word|
#     key = word.split('').sort.join
#     if result.has_key?(key)
#       result[key] << word
#     else
#       result[key] = [word]
#     end
#   end

#   result.each_value do |v|
#     puts "------"
#     p v
#   end
# end


# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# anagrams(words)

# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)


########


# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# incremented_hash = {}

# return_value = 
# arr.map do |hash|
#   hash.each do |k, v|
#     incremented_hash[k] = v + 1
#   end
#   incremented_hash
# end

# p return_value


# ### NOTES NOTES NOTES ###

# Shallow Copy/Dup

# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup

# arr2[2] = 'z' # array element update (element assignemnt) - this is a destructive action, so the change is permanent.
# p arr1 #unchanged 

# arr2[0] << 'aaa' # shovel operator is a mutating method
# p arr1 #changes too

# -------------------------
# Variables As Pointers

# arr1 = ["a", "b", "c"]
# arr2 = arr1

# arr2[2] = 'z' # element reassignment changes value entirely & since both point to same string object
# p arr1 #changes too 

# arr2[0] << 'aaa' # shovel operator is a mutating method
# p arr1 #changes too

# ------------------------
# Elememt Reference & Element Update

# arr = [[1, 3], [2]]
# arr[0][1] = 5 # first part is element reference, second part is element update, which is DESTRUCTIVE/permanently changed

# #####

# arr = [[1], [2]]

# arr[0] << 3
# arr # => [[1, 3], [2]]

# ## arr[0] is element reference and returns [1]; and the second part can be 
# ## thought of as [1] << 3, which destructively appends 3 into the inner array.

# -------------------------
# # Another Exmaple

# #1) 

# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup
# arr2.map! do |char|
#   char.upcase
# end

# puts arr1 
# puts arr2

# ------

# #2) 

# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup
# arr2.map do |char|
#   char.upcase!
# end

# puts arr1 
# puts arr2

# ------

# #3) 

# arr1 = ["a", "b", "c"]
# arr2 = arr1
# arr2.map! do |char|
#   char.upcase
# end

# puts arr1 
# puts arr2



#######

# def test(b)
#   #b = ['a', 'b', 'c']
#   b.map! {|letter| "I like the letter: #{letter}"}
# end

# a = ['a', 'b', 'c']
# test(a)


#########


# a = 7
# array = [1, 2, 3]

# def my_value(ary)
#   a = 0
#   ary.each do |b|
#     puts a += b
#   end
# end

# my_value(array)
# puts a

###########


# def fix(value)  # value = s (bound to the same string object with the value 'hello')
#   value = value.upcase # value is reassigned to the string object referenced by value with the method upcase called on it
#   value.concat('!') # only value is mutated now, not the outer scope variable 's'
# end

# s = 'hello'
# t = fix(s)

# p t
# p s


# my_hash = {
#   '1' => [ [' ', ' ', ' ', ' '], [' ', ' ', ' ', ' '] ],
#   '2' => [ [' ', ' ', ' ', ' '], [' ', ' ', ' ', ' '] ]
# }

# p my_hash

# my_hash['1'][0][0] = '8'

# p my_hash


###############

# Write a method that rotates an array by moving the first element to the end of the array. 
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.


# I: array
# O: array with first element last 

# Explicit: 
# - original array should not be modified (non-mutating, new array) 
# - cannot use rotate method 
# - shuold work for arrays with 1 element, numbers, strings, etc. 

# Data structure: array

# Algorithm: 
# Set first element equal to arr.first
# set rest of array equal to array element 1 to -1 
# concatenate rest of array with first element
# return new array 

# Note that rotating just 1 digit results 
# in the original number being returned.

# You may use the rotate_array method 
# from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# def rotate_array(arr)
# arr[1..-1] + [arr[0]]
# end

# def rotate_rightmost_digits(num, n)
#   num_arr = num.digits.reverse
#   p num_arr.object_id ##
#   # num_arr = num_arr[0..-n - 1] + rotate_array(num_arr[-n..-1])
#   num_arr[-n..-1] = rotate_array(num_arr[-n..-1]) ## another solution, index assignment (mutating the num_arr)
#   p num_arr.object_id
#   num_arr.join.to_i
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end


# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917



##################


# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining digits, 
# you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. 
# Keep the first 3 digits fixed in place and rotate again to get 321597. 
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.


# I: positive integer
# O: integer

# Explicit:
# - rotate number by full size of integer, keep first integer in place
# - repeat iterations until max rotation has been found

# Data: arrays

# Algoritm: 
# - set num equal calling the rotate_rightmost_digits method
# - 



# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end
    
# def rotate_rightmost_digits(num, n)
#   num_arr = num.digits.reverse
#   num_arr[-n..-1] = rotate_array(num_arr[-n..-1]) ## another solution, index assignment (mutating the num_arr)
#   num_arr.join.to_i
# end

# def max_rotation(num)
#   size = num.digits.size
#   size.downto(2).each do |n|
#     num = rotate_rightmost_digits(num, n)
#   end
#   num
# end

# p max_rotation(735291) #== 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

###########

# Write a method that takes a sentence string as input, and returns the same string with any sequence of 
# the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'].zip('0'..'9').to_h

# # def word_to_digit(words)
# #   DIGITS.keys.each do |word|
# #     words.gsub!(/\b#{word}\b/, DIGITS[word])
# #   end
# #   words
# # end

# def word_to_digit(str)
#   str.split.map do |word|
#     punct = word.delete("a-zA-Z") #deletes alpha to retain puncutation 
#     key = word.downcase.delete("^a-z")
#     DIGITS.has_key?(key) ? DIGITS[key] + punct : word
#     end.join(' ')
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'




# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup
# arr2.map! do |char|
#   char.upcase
# end

# puts arr1 
# puts arr2


# def fix(value)
#   value.upcase!
#   value.concat('!')
#   value
# end

# s = 'hello'
# t = fix(s)
# p s
# p t


# def add_name(arr, name)
#   arr = arr << name
# end

# names = ['bob', 'kim']
# p add_name(names, 'jim')
# puts names

# arr = [[1, 2], [3, 4], [[4], [5]]]
# arrCopy = arr.dup

# arrCopy[0] = "hi";
# # arrCopy; [ 'hi', [ 3, 4 ], [ [ 4 ], [ 5 ] ] ]
# # arr;     [ [ 1, 2 ], [ 3, 4 ], [ [ 4 ], [ 5 ] ] ]

# arrCopy[1][0] = "wow!";
# # arrCopy; [ 'hi', [ 'wow!', 4 ], [ [ 4 ], [ 5 ] ] ]
# # arr;     [ [ 1, 2 ], [ 'wow!', 4 ], [ [ 4 ], [ 5 ] ] ] **the object referenced by arr was mutated!**

# arrCopy[2][0][0] = "down the rabbit hole";
# # arrCopy; [ 'hi', [ 'wow!', 4 ], [ [ 'down the rabbit hole' ], [ 5 ] ] ]
# # arr;     [ [ 1, 2 ], [ 'wow!', 4 ], [ [ 'down the rabbit hole' ], [ 5 ] ] ] **the object referenced by arr was mutated!**


# array = [1, 2, 3, 4, 5]

# array.select do |num|
#    if num.odd?
#     puts num 
#    else
#     num
#    end
# end

# arr = [1, 2, 3]

# for i in arr do
#   a = 5      # a is initialized here
# end

# puts a       # is it accessible here?

####

# 1.times do
#   a = 'inner_scope'
#   puts a      # 'hi' <= this will be printed out twice due to the loop
# end

# loop do
#   a = 'inner_scope2'
#   puts a      # => NameError: undefined local variable or method `a' for main:Object
#   break
# end

# puts a = 'outer_scope'


#####

# str = 'foo'
# puts str
# puts "str: #{str.object_id}"

# def mutate(str2)
#   puts str2
#   puts "str2: #{str2.object_id}"
#   str2.replace 'bar'
#   puts str2
#   puts "str2: #{str2.object_id}"
#   str2 = 'baz'
#   puts str2
#   puts "str2: #{str2.object_id}"
# end

# mutate(str)
# puts str
# puts "str: #{str.object_id}"

#####


# name = 'jesse'

# def cap(str)
#   puts str
#   puts str.object_id
#   str = str.upcase!
#   puts str
#   str.object_id
# end

# puts name
# puts name.object_id

# p cap(name)

# puts name
# puts name.object_id


########

#mutating hash

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   new = demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# def mess_with_demographics(demo_hash)
#   new = demo_hash.values.each do |family_member|
#     family_member.store('age', 111)
#     family_member.store('gender', 'other')
#   end
# end

# mess_with_demographics(munsters)
# p munsters

##


# a = {}

# def set_b(obj)
#   obj["b"] = 2
# end

# set_b(a)
# puts a["b"] == 2

##

# simpsons = ['homer', 'marge', 'bart', 'lisa', 'maggie']

# simpsons1 = simpsons.map { |name| name.capitalize! }

# p simpsons    # => ["Homer", "Marge", "Bart", "Lisa", "Maggie"]
# p simpsons.object_id

# p simpsons1   # => ["Homer", "Marge", "Bart", "Lisa", "Maggie"]
# p simpsons1.object_id


###

# a = 2
# b = [5, 8]
# arr = [a, b]

# ## arr = [[2], [5,8]]

# arr[0] += 2
# arr[1][0] -= a
# p b


# a = 2
# arr = [[4], [5,8]]

# a = 2
# arr = [[4], [3,8]]


###


# a = 'apple'
# b = ['banana', 'blueberry']
# arr = [a, b]

# ### arr = [['apple'], ['banana', 'blueberry']]


# arr[0] << 's'
# p b[0].object_id
# arr[1][0] << 's'

# p a #= 'apples'
# p b 
# p b[0].object_id
# p arr #= [['apples'], ['bananas', 'blueberry']]

###


# arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

# p(arr.sort_by do |sub_arr|
#   sub_arr.map do |num|
#     num.to_i 
#   end
# end)

###


# arr1 = ["abc", "def"]
# arr2 = arr1
# arr3 = arr1.clone

# p arr1.object_id
# p arr2.object_id
# p arr3.object_id

# p arr1[0].object_id
# p arr2[0].object_id
# p arr3[0].object_id


# arr1[0] = "hello"

# p arr1.object_id
# p arr2.object_id
# p arr3.object_id

# p arr1[0].object_id
# p arr2[0].object_id
# p arr3[0].object_id




# arr1 = ["abc", "def"]
# arr2 = arr1
# arr3 = arr1.clone

# arr1[0] = "hello"

# p arr1 # => ["hello", "def"]
# p arr2 # => ["hello", "def"]
# p arr3 # => ["abc", "def"]

#####


# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2 ## mutates the array, reassigns the element (only within array)
# p arr #= [[4], [5,8]]
# p a # = 2

# arr[1][0] -= a ## mutates the array (which both arr[1] and b point to) (reassigns the element)
# p arr #= [[4], [3, 8]]
# p b # = [3, 8]


# p([[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end)

# arr = [[1, 3], [2]]
# p arr
# p arr.object_id
# p arr[0].object_id
# p arr[0][1].object_id

# arr[0][1] = 5
# p arr
# p arr.object_id
# p arr[0].object_id
# p arr[0][1].object_id

# def my_friends 
#   puts "I like my friends"
# end 

# loop do 
#   my_friends = ["Charlie", "Rebecca"]
#   break
# end 

# p my_friends # => "I like my friends"


# a = "abc"
# b = "d"
# a[0] = b

# puts a
# dbc
#  => nil 

# > b.upcase!
#  => "D" 

# > puts b
# D
#  => nil 

# > puts a
# dbc
#  => nil 

###

#  a = ['a', 'b', 'c']
#  b = "d"
#  a[0] = b
#  b.upcase!
#  p b
#  p a

#  a = 'abc'
#  b = "d"
#  a[0] = b
#  b.upcase!
#  p b
#  p a

#  We're not storing a reference to the String object 'd' that the variable b is pointing to in the String object 
#  that the variable a is pointing to. Instead we're mutating the String object that the variable a is pointing to by 
#  changing one of its characters to the same character ('d' ) represented by the String object that the variable b is 
#  pointing to.


# def test(b)
#   b.map! {|letter| "I like the letter: #{letter}"}
# end

# a = ['a', 'b', 'c']
# test(a)



# def mutate(str)
#   p str.object_id
#   str = str.upcase!
#   p str.object_id
#   str << "?"
#   p str.object_id
# end

# a = 'jesse'

# mutate(a)
# puts a 
# puts a.object_id




# a = 'name'
# b = 'name'
# c = 'name'

# # Are these three local variables pointing to the same object? 

# puts a.object_id
# puts b.object_id
# puts c.object_id

# # And when we add these two lines of code... ?

# c = a
# b = c

# puts a.object_id
# puts b.object_id
# puts c.object_id

# # # What about now?
# a = 5
# b = 5
# c = 5

# puts a.object_id
# puts b.object_id
# puts c.object_id



# a = 7

# def my_value(b)
#   b += 10
# end

# p my_value(a)
# puts a


# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a


# a = 7
# array = [1, 2, 3]

# def my_value(ary)
#   a = 0
#   ary.each do |b|
#     a += b
#   end
#   a
# end

# p my_value(array)
# puts a


##
# arr = [[1, 2, 3, 4], [2, 3, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], [1, 4, 5, 0]]

# p arr.map { |num1, _, num3, num4| num1 * num4 } 

##

# "Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number 
# and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”."

# x = (1..100).each do |num|
#   case 
#   when num % 3 == 0 && num % 5 == 0
#     puts "Fizzbuzz"
#   when num % 3 == 0
#     puts "Fizz"
#   when num % 5 == 0
#     puts "Buzz"
#   else
#     puts num
#   end
# end
  
# p x

# def method(param)
#   param = " why is this not printing?" # local variable within the method's scope is reassigned, which is non-mutating
#   # thus the binding between param and greeting is broken, meaning they now point to different string objects entirely
#   param << " one"
#   param << " blue"
#   param << " two"
#   param << " orange"
#   param << " three"
#   puts param
# end

# greeting = "fish"
# method(greeting)

# puts greeting

# pairs = { "a" => 1, "b" => 2, "c" => 3 }
# incremented_values = pairs.map do |k, v| 
#   pairs[k] = v + 1 
# end

# p pairs
# p incremented_values

# my_hash = {
# '1' => [ [' ', ' ', ' ', ' '], [' ', ' ', ' ', ' '] ],
# '2' => [ [' ', ' ', ' ', ' '], [' ', ' ', ' ', ' '] ]
# }

# p my_hash
# my_hash['1'][0][0] = '8'

# p my_hash



# Write a method that takes a string as an argument and groups the number of times each character appears in the string
# as a hash sorted by the highest number of occurrences.

# The characters should be sorted alphabetically e.g:

# get_char_count("cba") => {1=>["a", "b", "c"]}
# You should ignore spaces, special characters and count uppercase letters as lowercase ones.
# =end


# PEDAC

# Input: String
# Output: Hash, with integer as keys & arrays of strings as value

# D: String, Array, Hash

# A: 
# - set results equal to a new hash object passing in an empty array as an argument
# - Convert string to an array & iterate through each character
# - if string does not exist in value hash, add it and + 1 to key
# - if string does exist in value hash, only add + 1 to key 
# - sort the hash by keys in descending order
# - return hash

# my answer
# ALPHA = ("a".."z").to_a + ("0".."9").to_a

# def get_char_count(str)
#   rev_hash = Hash.new(0)
#   str.chars.each { |char| rev_hash[[char.downcase]] += 1 if ALPHA.include?(char.downcase) }
#   results = rev_hash.each_with_object({}) do |(k, v), hash| 
#     if hash.has_key?(v)
#       hash[v] += k
#     else
#       hash[v] = k
#     end
#   end
#   results.sort_by { |k,v| k }.reverse.to_h
# end


#answer 2
# def get_char_count(string)
#   chars = string.downcase.chars.uniq.sort_by { |a| -string }
#   hsh = Hash.new { |h, k| h[k] = [] }
#   chars.each do |char|
#     next unless ALPHA.include?(char)
#     count = string.downcase.count(char)
#     hsh[count] << char
#   end
#   hsh.each { |k, v| v.sort! }
# end




# def anagrams(words)
#   result = {}
#   words.each do |word|
#     key = word.split('').sort.join
#     if result.has_key?(key)
#       result[key] << word
#     else
#       result[key] = [word]
#     end
#   end

#   result.each_value do |v|
#     puts "------"
#     p v
#   end
# end


    # if results.keys.include?(char.downcase)
    #   results[char.downcase] += 1
    # else
    #   results[[char.downcase]] += 1
    # end
#   end
#   results#.invert#.sort_by { |k,v| k }.reverse.to_h
# end

# p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") #== {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") #== {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") #== {3=>["a", "b", "c"]}
# p get_char_count("abc123") #== {1=>["1", "2", "3", "a", "b", "c"]}


#WORKS answer 3
# ALPHA = ("a".."z").to_a

# def get_char_count(str)
#   results = Hash.new(0)
#   str.chars.each { |char| results[[char.downcase]] += 1 if ALPHA.include?(char.downcase) }

#   second_res = {}
#   results.each do |k, v| 
#     if second_res.has_key?(v)
#       second_res[v] += k
#     else
#       second_res[v] = k
#     end
#   end
#   second_res.sort_by { |k,v| k }.reverse.to_h
# end


# def method()
#   if false
#     1
#   else
#     number = 2
#   end

#   number
# end

# puts method

###

# arr = [1, 2, 3, 4]
# counter = 0
# sum = 0

# loop do
#   sum += arr[counter]
#   counter += 1
#   break if counter == arr.size
# end

# puts "Your total is #{sum}"

##

# a = 4
# b = 2

# 2.times do |a|
#   a = 5
#   puts a
# end

# puts a
# puts b

##

# a = 'Bob'

# 5.times do |x|
#   a = 'Bill'
# end

# p a


# a = "hi there"
# b = a
# a << ", Bob"

# p a 
# p b 


# def test(b)
#   b.map! {|letter| "I like the letter: #{letter}"}
# end

# a = ['a', 'b', 'c']
# test(a)
# p a



# def plus(x, y)
#   x = x + y
# end

# a = 3
# b = plus(a, 2)

# puts a
# puts b


###

# ALPHA = ("a".."z").to_a + ("0".."9").to_a

# def get_char_count(str)
#   char_to_occurrences = Hash.new(0)
#   str.chars.each { |char| char_to_occurrences[char.downcase] += 1 if ALPHA.include?(char.downcase) }
#   count_to_chars = Hash.new { |h, k| h[k] = [] }
#   char_to_occurrences.each { | char, occurrences | count_to_chars[occurrences] << char }
#   count_to_chars.values.each { |chars_arr| chars_arr.sort!}
#   count_to_chars.sort_by { |k,v| k }.reverse.to_h
# end


# p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
# p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

###
# Legend:
# -Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
# -Function input: String contains only letters, uppercase letters are unique.
# Task:
# Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb". 

# Input: 
# - string

# Output:
# - string, sorted alphabetically with uppercase coming before for same letter 

# Explicit: 
# - string only contains letters
# - uppercase are unique 
# - uppercase come before lowercase 

# Data Structures:
# - string, arrays

# Algorithm: 
# - take input string, convert to chars_array 
# - set upcase_arr to empty array 
# - iterate through chars_array 
#   - if char is uppercase, store in new array 
# - make all chars_array lower case and then sort chars_array array by alpha 
# - iterate over chars_array
#   - if a char in chars_array contains a ltter from upcase_arr, upcase the letter
#   - if not, do nothing
# - covert chars_array to string, return string 


# convert to array
# ignore case
# sort
# inject case back into sorted 


# Algorithm: 
# - take input string, convert to chars_array 
# - iterate through, downcase all characters
# - sort chars_array
# - upcase the first time each letter in array appears
# - return array




# def find_children(str)
#   chars_sorted_arr = str.chars.map { |char| char.downcase }.sort
#   last_seen = ""
#   sorted_chars_with_upcase = chars_sorted_arr.map do |char|
#     if char != last_seen
#       last_seen = char
#       char.upcase
#     else
#       char
#     end
#   end
#   sorted_chars_with_upcase.join
# end


#another student 
# def find_children(str)
#   str.chars.sort_by { |char| [char, char.downcase] }.join
# end

# def find_children(str)
#   chars_sorted_arr = str.chars.map { |char| char.downcase }.sort
#   upcase_char = ''
#   sorted_chars_with_upcase = chars_sorted_arr.map.with_index do |char, idx|
#     if idx == 0 
#       upcase_char = char.upcase! 
#     elsif chars_sorted_arr[idx] != upcase_char.downcase
#       upcase_char = char.upcase!
#     else
#       char
#     end
#   end
#   sorted_chars_with_upcase.join
# end


# p find_children("abBA") == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""



# which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 
# and also a straight double of the same number in num2.

# If this isn't the case, return 0




# Input: 2 integeres, greater than 0, no negative
# Output: integer, 1 or 0 

# Explicit:
# - if num1 has 3x of int && num2 has 2x of same integer, return 1
# - if this is not the case, return 0 

# Data Structure:
# - array 

# Algorithm (triple double) 
# - set num1_arr equal to num1 array of integers
# - set num2_arr = to num2 array of integers
# # - set triple_num equal to 1
# - iterate through num1_arr
# -   if num is equal to set triple_num = 1


# Algorithm (find_num_runs)
# - convert number to array
# - set num_run_array = []
# - set last_seen to nil
# - set last_seen_times = 1 

# - iterate through num_arr 
# - set last_seen to num
# - if num = last_seen_num
#   - increment last_seen_times by 1
#   - if last_seen_times == 3, push num to num_runs_array
# - else 
#   = last_seen_num = num
#   - last_seen_times = 1 


# def find_num_runs(num, run_length)
#   num_arr = num.digits
#   num_run_array = []
#   last_seen_num = nil
#   last_seen_times = 1 

#   num_arr.each do |num| 
#     if num == last_seen_num
#       last_seen_times += 1
#       num_run_array << num if last_seen_times == run_length 
#     else
#       last_seen_num = num
#       last_seen_times = 1 
#     end
#   end
#   num_run_array
# end


# def triple_double(num1, num2)
#   triples = find_num_runs(num1, 3)
#   doubles = find_num_runs(num2, 2)
#   return 1 if doubles.any? { |num| triples.include?(num) }
#   0
# end


# def triple_double(num1,num2)
#   num1 = num1.to_s
#   num2 = num2.to_s
#   10.times do |i|
#     if num1.include?(i.to_s*3) && num2.include?(i.to_s*2)
#       return 1
#     end
#   end
#   return 0
# end


# p triple_double(451999277, 41177722899) == 1
# # # num1 has straight triple 999s and  num2 has straight double 99s

# p triple_double(1222345, 12345) == 0
# # num1 has straight triple 2s but num2 has only a single 2

# p triple_double(12345, 12345) == 0

# p triple_double(666789, 12345667) == 1


#########

###

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
# ]

# def count_occurrences(arr)
#   vehicle_occurences = Hash.new(0)
#   arr.each do |ele| 
#     vehicle_occurences[ele.downcase] += 1
#   end

#   vehicle_occurences.each do |vehicle, occurence|
#     puts "#{vehicle} => #{occurence}"
#   end
# end

# count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

##

# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# def stringy(int)
#   str = ""
#   (int/2).times { |_| str << "10"}
#   str << "1" if int % 2 != 0
#   str
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


# case-insensitive, and it should ignore all non-alphanumeric characters. 

# def palindrome?(str)
#   str == str.reverse
# end

# def real_palindrome?(str)
#   palindrome?(str.downcase.gsub(/[^a-z0-9]/, ""))
# end

# p real_palindrome?('madam') #== true
# p real_palindrome?('Madam') #== true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") ##== true # (only alphanumerics matter)
# p real_palindrome?('356653') #== true
# p real_palindrome?('356a653') #== true
# p real_palindrome?('123ab321') #== false



# def century(year)
#   century = year/100 + 1
#   century -= 1 if year.to_s.end_with?('0')
#   #   century -= 1 if year % 100 == 0
#   century.to_s +  century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
  
# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.



# STR_INT = ("0".."9").to_a.zip(0..9).to_a
# def string_to_integer(str)
#   value = 0
#   str.chars.each { |char| value = (value * 10) + (char.ord - 48) }
#   value
# end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

######


# Complete the function scramble(str1, str2) that returns true if a portion 
# of str1 characters can be rearranged to match str2, otherwise returns false.

# Notes:
# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered

# --

# Input: two strings
#   - str1 is a string with random characters, maybe more or less characters than the str2
#   - str2 is some other characters that may or may not be comprised of chars from str1

# Output: boolean

# Explicit:
# - return true if a portion of str1 chars can be rearranged to match str2
# - return false if the above is not true
# - performance needs to be considered 
# - only lowercase letters used, no punt or digits

# Data Structures: strings, arrays

# Algorithm:
# - convert str2 to array and iterate over each char
# - convert str1 to array and iterate over each char
#   - check to see if the character from str1 is included in str2_array
#     - if yes, delete character from str1 array
#     - if no, return false
# - if all characters are accounted for in str2_arr from str1_arr, return true

# time: 41 minutes to solve

# correct but performance issues on codewars
# def scramble(str1, str2)
#   str2.chars.all? do |char2| 
#     str1.sub!(char2, "") if str1.chars.include?(char2)
#   end
# end

# def scramble(s1,s2)
#   s2.chars.all? { |c| s1.sub!(c, '') }
# end


# def scramble(str1, str2)
#   char_counts1 = Hash.new(0)
#   str1.chars.each { |char| char_counts1[char] += 1 }

#   char_counts2 = Hash.new(0)
#   str2.chars.each { |char| char_counts2[char] += 1 }

#   char_counts2.all? { |char2, count2| char_counts1[char2] >= count2}
# end


# def scramble(s1,s2)
#   s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
# end




# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true
# p scramble('e','w') == false


# [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
#   arr.select do |item|
#     if item.to_s.to_i == item    
#       item > 13
#     else
#       item.size < 6
#     end
#   end
# end


# p ([['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
#   sub_arr.map do |letter|
#     letter.upcase
#   end
# end)


# input: array of integers & and an integer that will exist somewhere in the array
# output: an array of all the indicies that the integer from the input exists in the array

# If n is not in the given array, return an empty array [].

# data structures: arrays

# algorithm
# - iterate through each element in input array
# - if element in input array is equal to input integer, place index in a new_array
# - return new_array



# def find_all(arr, num)
#  index_arr = []
#  arr.each.with_index { |ele, idx| index_arr << idx if ele == num }
#  index_arr
# end


# p find_all([6, 9, 3, 4, 3, 82, 11], 3) == [2, 4]
# p find_all([10, 16, 20, 6, 14, 11, 20, 2, 17, 16, 14], 16) == [1, 9]
# p find_all([20, 20, 10, 13, 15, 2, 7, 2, 20, 3, 18, 2, 3, 2, 16, 10, 9, 9, 7, 5, 15, 5], 20) == [0, 1, 8]



# I: string, scrambled, & words that may or may not contain the letters from scrambled 
# O: array of words that do contain all the letters from scrambled 

# - return empty array if no matches

# Arrays, strings

# Algo:
# - set results equal to empty array
# - set sorted_input_str equal to sorted input string
# - iterate through each word in input_array
# - sort each word during iteration and compare to input string
#   -if word is equal to input, add to results array
#   - it it's not, do nothing
# - return input array

# def grabscrab(str, words_arr)
#   results = []
#   sorted_input_str = str.chars.sort.join
#   words_arr.each { |word| results << word if word.chars.sort.join == sorted_input_str }
#   results
# end

# p grabscrab("trisf", ["first"]) == ["first"]
# p grabscrab("oob", ["bob", "baobab"]) == [] 
# p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"] 
# p grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"]
# p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) ==["sport", "ports"]
# p grabscrab("ourf", ["one","two","three"]) == []



# def grabscrab(str, arr)
#   arr.each_with_object([]) { |word, results| results << word if word.chars.sort.join == str.chars.sort.join }
# end

# The objective is to return all pairs of integers from a given array of integers that have a difference of 2.
# The result array should be sorted in ascending order of values.
# Assume there are no duplicate integers in the array. The order of the integers in the input array should not matter.


# I: array of integers (above zero)
# O: multi-dimensional array of array pairs that have a difference of 2

# - result array should be sorted in ascending value
# - no duplicate integers 

# Algorithm:
# - Set results equal to empty array
# - Set sorted_arr equal to sorted input array
# - iterate through each num in input array (num)
#   - iterate through each in input array (num2)
#   - if num + 2 == num2 then push [num, num2] to results array
#   - if not, do nothing
# - return results array

# def twos_difference(arr)
#   results = []
#   arr.each do |num1|
#     arr.each do |num2|
#       results << [num1, num2] if num1 + 2 == num2
#     end
#   end
#   results.sort
# end


# def twos_difference(arr)
#   arr.flat_map { |num1| arr.map { |num2| [num1, num2] if num1 + 2 == num2 }}.compact.sort
# end

# p twos_difference([1, 2, 3, 4]) == [[1, 3], [2, 4]]
# p twos_difference([1, 3, 5]) == [[1, 3], [3, 5]]
# p twos_difference([1, 3, 4, 6]) == [[1, 3], [4, 6]]
# p twos_difference([0, 3, 1, 4]) == [[1, 3]]
# p twos_difference([4, 1, 2, 3]) == [[1, 3], [2, 4]]
# p twos_difference([6, 3, 4, 1, 5]) == [[1, 3], [3, 5], [4, 6]]
# p twos_difference([3, 1, 6, 4]) == [[1, 3], [4, 6]]
# p twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]) == [[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]]
# p twos_difference([1, 4, 7, 10]) == []
# p twos_difference([]) == []

###

# Write a function that takes an array of numbers (integers for the tests) and a target number. 
# It should find two different items in the array that, when added together, give the target value. 
# he indices of these items should then be returned in a tuple like so: (index1, index2).

# For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

# The input will always be valid (numbers will be an array of length 2 or greater, 
# and all of the items will be numbers; target will always be the sum of two different items from that array).


# I: Array, integer
# O: tuple array

# array will always have 2 integers or more
# two items in array will always equal target number
# put both indicies in a tuple array

# Algorithm:
# - set results equal to empty array
# - iterate through numbers_array with index values (val1)
#   - iterate through numbers array with index values starting at i (val2)
#   - push index of both numbers to results if val1 + val2 == target number
# - return target number


# def two_sum(numbers, target)
#   numbers.each_with_object([]).with_index do |(num1, arr), idx1| 
#     numbers.each_with_index do |num2, idx2| 
#       return arr.push(idx1, idx2) if num1 + num2 == target && idx1 != idx2
#     end
#   end
# end

# p two_sum([1, 2, 3], 4).sort == [0, 2]
# p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]
# p two_sum([2, 2, 3], 4).sort == [0, 1]


# def two_sum(numbers, target)
#   numbers.each_with_index do |num1, idx1| 
#     numbers.each_with_index do |num2, idx2| 
#       return [idx1, idx2] if (num1 + num2 == target) && idx1 != idx2
#     end
#   end
# end




=begin
S
T
U
D
Y
S
E
S
S
I
O
N
=end



### STUDY SESSION w/ JUSTIN

# 1) 

# animal = "dog"

# loop do |animal|  
#   animal = "cat"  
#   var = "ball"  
#   break
# end

# puts animal
# puts var

# 2) 

# def fix(value)  
#   value = value.upcase  
#   value.concat('!')
# end

# s = 'hello'
# t = fix(s)


# 3)

# arr = [1, 2, 3, 4, 5]

# incremented = arr.select do |n|             
#   n + 1            
# end

# p incremented


# 4)

# { a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
#   hash[value] = key
# end

# 5)

# def a
#   puts "true"
# end

# b = a

# if b
#   puts "Hello is truthy"
# else
#   puts "Hello is falsey"
# end 


# 6)

# [2, 1, 0, 3].all? do |num|
#   num > 0
# end

# 7)

# a = ['Bob']

# 5.times do |x|
#   a << "#{x} Bill"
# end

# p a


# 7)

# def method()
#   if false
#     1
#   else
#     number = 2
#   end

#   number
# end

# puts method

# 8)

# pairs = { "a" => 1, "b" => 2, "c" => 3 }
# incremented_values = pairs.map do |k, v| 
#   pairs[k] = v + 1 
# end

# p pairs
# p incremented_values


# 9)

#  a = ['a', 'b', 'c']
#  b = "d"
#  a[0] = b
#  b.upcase!
#  p b
#  p a


#  10)

#  a = 'abc'
#  b = "d"
#  a[0] = b
#  b.upcase!
#  p a

# #  We're not storing a reference to the String object 'd' that the variable b is pointing to in the String object 
# #  that the variable a is pointing to. Instead we're mutating the String object that the variable a is pointing to by 
# #  changing one of its characters to the same character ('d' ) represented by the String object that the variable b is 
# #  pointing to.


# # String#[]=  - what is this?
# # Array#[] 


# difference between indexed reassignement and indexed retrieval/reference

# # 12)

# a = 'john'
# b = a[2] 
# b.upcase!

# p a
# p b

# #13) 

# a = ["john", "joe"]
# b = a[1]
# b.upcase!

# p a

# #14) 

# =>  How many objects are in play by the end of these lines?
# a = "hello"
# b = a
# c = b.upcase
# ​d = c


# #15) 

# a = [2]
# puts a.object_id
# b = [1, 3]
# c = [a, b]
# c[0][0] = 5

# p c # =>  what will this print and why?
# p a # =>  what object is a referencing? 
# puts a.object_id # => Will this match the first object_id that is printed?

#16)

# def merge(array_1, array_2)
#   array_1 | array_2
# end

# arr1, arr2 = ['hello'], ['hello', 'world']
# merged = merge(arr1, arr2)
# merged[0][0] = 'J'
# p merged
# p arr1
# p arr2


# 17) 
# a = 1 

# loop do       
#   puts a    
#   a = a + 1   
#   break      
# end

# puts a  


#18


# str = 'apple'

# str.each_char do |char|
#   char.upcase!
# end

# p str



# 19)

# pairs = { "a" => 1, "b" => 2, "c" => 3 }
# incremented_values = pairs.map do |k, v| 
#   pairs[k] = v + 1 
# end

# p pairs 
# p incremented_values

# hash = { a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
#   array << pair.last
# end

# p hash


#20) 


# def include?(arr, search_item)
#   !arr.each { |item| return true if item == search_item }
# end

# include?([1, 2, 3, 4, 5], 6)


# 21)

# answer = 42

# def mess_with_it(some_number)
#   some_number + 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8


# as numbers are immutable objects in ruby, and thus no method can mutate the integer object. 
# local var `answer` will continue pointing to integer `42` unless it is reassigned within the scope it was initalized, 
  


# 22) 
#Consider these two simple methods:

# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

#23) 


# # What would be the return value of the following method invocation?

# p bar(foo)


# On Line 14 we invoke the `bar` method and pass in the `foo` method as an argument.
  
# The return value of of the method `foo` is the string `"yes"`, since nothing is done with the parameter during invocation, regardless of what the paramter is. Therefore, we are invoking the `bar` method with one paramter, the string `"yes"`. 
  
# On Line 8, inside of the `bar` method definition, `param` points to the same object as the string `yes`, so the terenary operation evalutes to `false` and returns `"no"`, which is the return value of the method inovcation of `bar` on Line 14. 


# 23) 

# if false
#   greeting = "hello world"
# end

# p greeting

# greeting is nil here, and no "undefined method or local variable" exception is thrown. 
# Typically, when you reference an uninitialized variable, Ruby will raise an exception, 
# stating that it’s undefined. However, when you initialize a local variable within an if block, 
# even if that if block doesn’t get executed, the local variable is initialized to nil.


# # What is the result of the last line in the code below? And why?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings


# Line 9 outputs the hash `{ a: 'hi there' }`.

# On line 4, local variable `greetings` is assigned to a hash object `{ a: 'hi' }`.
  
# On line 5, local variable `informal_greeting` is initiazlied to the return value of `greetings[:a]`. `informal_greeting` and the object at value `greeting[:a]` now point to same string `hi`. 

# When we call the mutating `<<` method on line 6, `" there"` will be permanently appended to the `"hi"`. 

# Because `greetings` and `informal_greeting` both contain a reference to the string 'hi there', line 10 will also output `"hi there"`


=begin
S
T
U
D
Y
S
E
S
S
I
O
N
=end



# def validate_usr(username)
#   username.chars.all? { |char| char =~ /[a-z0-9_]/ } && (username.size > 3 && username.size < 17)
# end

# p validate_usr('asddsa') == true
# p validate_usr('a') == false
# p validate_usr('Hass') == false
# p validate_usr('Hasd_12assssssasasasasasaasasasasas') == false
# p validate_usr('') == false
# p validate_usr('____') == true
# p validate_usr('012') == false
# p validate_usr('p1pp1') == true
# p validate_usr('asd43 34') == false
# p validate_usr('asd43_34') == true



####

# - set space = []
# - convert string to array of chars
# - if char is an upcase char, push index to space array
# - iterate through space array
# - for all indicies in space_array, push a space to index - 1 of original string
# - return string


# def solution(str)
#   space = []
#   str_arr = str.chars
#   str_arr.each_with_index { |char, idx| space << idx if char =~ /[A-Z]/}
#   space.each { |idx| str_arr[idx - 1] << " " }
#   str_arr.join
# end


# p solution('camelCasing') == 'camel Casing'
# p solution('camelCasingTest') == 'camel Casing Test'


#######

# - How many cakes can we bake given the recipe input and avail ingred input?
# - Return max number of cakes we can bake given this data
# - Ingredients not present in either object are 0 

# I: Hash that hold receipe  && Hash that holds ingredients 
# O: Integer (max number of cakes)

# Algorithm: 
# - iterate through each k/v pair in avail hash
#  - divide key's value by recipe's keys value
#  - push number to new array
#  - return 0 if nil or error 
# -sort array and return lowest number


# def cakes(recipe, avail)
#   max_cakes = []

#   if recipe.keys.all? { |ingred| avail.keys.include?(ingred) }
#     avail.each { |ingred, value| max_cakes << (value / recipe[ingred]) if recipe.keys.include?(ingred) }
#   else
#     return 0
#   end

#   max_cakes.min
# end


# def cakes(recipe, available)
#   recipe.map { | k, v | available[k].to_i / v }.min
# end


# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) #== 0
# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1\



### STUDY STUDY STUDY STUDY STUDY STUDY 


# def fix(value)
#   value = value.upcase!
#   value.concat('!')
# end

# s = 'hello'
# t = fix(s)
# p s


# def fix(value)
#   value[1] = 'x'
#   value
#  end

# s = 'abc'
# t = fix(s)

# p s
# p t 





# Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.

# As an example, if the input was “aaee”, the substring (aaee) length would be 4.
# For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.

# If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.

# p longest_ae("aaee") == 4
# p longest_ae("babanctekeaa") == 10
# p longest_ae("xenoglossophobia") == -1
# p longest_ae("pteromerhanophobia") == 18
# p longest_ae("johannisberger") == -1
# p longest_ae("secaundogenituareabb") == 16
# p longest_ae("aaaa") == -1





# ['ant', 'badger'].map do |animal|
#   if animal.size > 4
#     animal
#   end
# end


# word = 'jesse'

# if word.size > 7
#  puts "jesse"
# end

# def greetings(str)
#   puts "Goodbye"
# end

# word = "Hello"
# a = greetings(word)

# p a


# On line 3 we have a conditional statement. If the condition word.size > 7 evaluates to true, 
# the puts method within the statement body would execute.

# like, because the condition on line x evaluates to false, line y will not be evaluated, but line z will.


# Given integer array nums, return the third maximum number in this array. 
# If the third maximum does not exist, return the maximum number.
# You are not allowed to sort the array

# I: an array of numbers
# O: return the third highest int or max number if there is no 3rd highest integer 

# Cannot sort the array

# Algo:
# - return the max int in array if the arrays size is under 3
# - set max_num = nil
# - iterate through the array 
# - 


# def third_max(arr)
#   return max_num(arr, 1) if arr.uniq.size < 3
#   max_num(arr, 3)
# end

# def max_num(arr, nums)
#   result = 0
#   nums.times do |_|
#     result = 0
#     arr.each { |num| result = num if num > result } 
#     arr.delete(result)
#   end
#   result
# end


# def find_max_num(arr)
#   max_num = 0
#   arr.each do |num|
#     max_num = num if num > max_num
#   end
#   max_num
# end

# def third_max(arr)
#   return find_max_num(arr) if arr.size < 3
#   max_num = find_max_num(arr)

#   results = []

#   max_num.downto(0) do |num|
#     results << num if arr.include?(num)
#   end

#   results[2]
# end


# p third_max([3,2,1]) == 1
# p third_max([1,2]) == 2
# p third_max([2,2,3,1]) == 1
# p third_max([5, 5, 5]) == 5
# p third_max([1, 3, 4, 2, 2, 5, 6]) == 4


# ## did not sort the array
# def third_max(arr)
#   return arr.max if arr.size < 3
#   arr.uniq.max(3).min
# end


# def third_max(arr)
#   return arr.max if arr.uniq.size < 3
#   max_num = 0
#   3.times do |_|
#     max_num = 0
#     arr.each { |num| max_num = num if num > max_num } 
#     arr.delete(max_num)
#   end
#   max_num
# end


####

# b = 5

# loop do
#   a = 12
#   b = 10
#   break
# end

# puts b 
# puts a

# def some_method
#   a = 1
#   5.times do
#     puts a
#     b = 2
#   end

#   puts a
#   puts b
# end

# some_method


arr = [1, 2, 3].select do |n|
  n + 2
  puts n
end

p arr