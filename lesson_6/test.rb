# def some_method(str)
#   str << "bye"
#   str += " hell"
#   str << "o"
# end

# a = "good"

# p a
# p some_method(a) # goodbye hello
# p a # goodbye


# ARRAYS
# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# - each will execute the block for every element in the array

# # - select returns a new array based on the block's *return value*. 
# # - if the return value evaluates to true then the element is selected 
#   - select cares about the block's truthiness 
#   - can only select/filter

# # - map returns a new array based on the block's *return value*.
# # - each element is transformed based on the return value
#   - map can only return an array of array.size 
#   - map transforms the array 


# hsh = {a: 1, b: 2, c: 3, d: 4}
# hsh. each do |k, v| 
#   puts "#{k} is key. #{v} is value."
# end

# each works the same for hashes, but takes two values as the block parameters 
# select works the same, but takes two values as the block parameters 

#######


# Move the first letter of each word to the end of it, 
# then add "ay" to the end of the word. Leave punctuation marks untouched.

# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !



# def pig_it text
#   text.split.map do |str| 
#     if str =~ /!?./
#       str
#     else    
#     str[1..-1], str[0] = str[0], str[1..-1]
#     str << "ay"
#   end
# end


#######

# I: a year, four integers
# O: a year, four integers (strictly larger than the input)

# Explicit: 
# - Find the next year number after the given year that is distinct 
# - must be larger

# Data structure: integer, strings

# def distinct_digit_year(year)
#   next_distinct_year = year + 1
#   loop do
#     break if next_distinct_year.to_s.chars.uniq.join.to_i == next_distinct_year
#     next_distinct_year += 1
#   end
#   next_distinct_year
# end


# p distinct_digit_year(1987) == 2013
# p distinct_digit_year(2013) == 2014
# p distinct_digit_year(2229) == 2301

#######

# Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product.
# The minimum sum obtained from summing each two integers product , 9*0 + 8*2 +7*4 +6*5 = 74


# Input: array of integers
# Output: integer, minimum sum which is obtained from summing each two integers product

# Implicit: Find max integers & min integers & multiple corresponding integerse togehter & then add those numbers

# Data: arrays, integers


# def min_sum(arr)
#   half = (arr.size)/2
#   max = arr.max(half)
#   min = arr.min(half)
#   idx = 0
#   sum_arr = []

#   half.times do |_|
#     sum_arr << max[idx] * min[idx]
#     idx += 1
#   end

#   return 0 if sum_arr.empty? 
#   sum_arr.inject(:+)
# end

#another student

# def min_sum(arr)
#   arr.sort!
#   (0...arr.size/2).map { |i| arr[i] * arr[-i-1] } .sum
# end

# # another student

# def min_sum(arr)
#   arr = arr.sort
#   sum = 0
#     until arr.length == 0
#     sum += (arr.pop * arr.shift)
#     end
#     sum
#   end

# p min_sum([5,4,2,3]) == 22
# p min_sum([12,6,10,26,3,24]) == 342
# p min_sum([9,2,8,7,5,4,0,6]) == 74
# p min_sum([1,2]) == 2
# p min_sum([]) == 0

#######

# Given a number, Return _The Maximum number _ could be formed from the digits of the number given.
# Only Natural numbers passed to the function , numbers Contain digits [0:9] inclusive
# Digit Duplications could occur , So also consider it when forming the Largest

# def max_number(n)
#   n.digits.sort.reverse.join.to_i
# end

# p max_number(213) == 321
# p max_number(7389) == 9873
# p max_number(63792) == 97632
# p max_number(566797) == 977665
# p max_number(1000000) == 1000000

########

# Create a function named divisors/Divisors that takes an integer n > 1 and 
# returns an array with all of the integer's divisors(except for 1 and the number itself), 
# from smallest to largest. If the number is prime return the string '(integer) is prime' 
# (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).

# def divisors(n)
#   divisors = []
#   (2..n-1).each { |num| divisors << num if n % num == 0 }
#   return "#{n} is prime" if divisors.empty?
#   divisors
# end

# #Another student

# def divisors(n)
#   vals = (2..n/2).select{|x| n%x==0}
#   vals.empty? ? "#{n} is prime" : vals
# end

# divisors(12) #== [2,3,4,6]
# divisors(25) #== [5]
# divisors(13) #== "13 is prime"


# You might know some pretty large perfect squares. But what about the NEXT one?
# Complete the findNextSquare method that finds the next integral perfect square 
# after the one passed as a parameter. Recall that an integral perfect square 
# is an integer n such that sqrt(n) is also an integer.
# If the parameter is itself not a perfect square then -1 should be returned. 
# You may assume the parameter is non-negative.


# def find_next_square(sq)
#   sq_rt = Math.sqrt(sq).to_i
#   return (sq_rt + 1) ** 2 if sq_rt ** 2 == sq
#   -1
# end

# p find_next_square(121) == 144
# p find_next_square(625) == 676
# p find_next_square(319225) == 320356
# p find_next_square(15241383936) == 15241630849

#case statement
# def find_next_square(sq)
#   sq_rt = Math.sqrt(sq).to_i
#   case 
#   when sq_rt ** 2 == sq
#     (sq_rt + 1) ** 2
#   else 
#     -1
#   end
# end

#######


# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.
# Example

# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.
# Input/Output

#     [input] integer n

#     Constraints: 10 ≤ n ≤ 1000000.

#     [output] an integer



# Input:
# Output:

# Explicit:
# Implicit: 

# Data Structure:
# - 

# Algorithm:
# - Convert number into string of characters 
# - SET delete_dig_array to an empty array
# - iterate over characters 
# - for each characater, sub it out for an empty string, join the string and convert to I
# - add to new array
# - find max number in delete_dig_array


# def delete_digit(num)
#   num_str = num.to_s
#   del_dig_arr = []
#   num_str.chars.each { |char| del_dig_arr << num_str.sub(char, '').to_i }
#   del_dig_arr.max
# end

# ## another student
# def delete_digit(num)
#   digits = num.to_s.chars
#   (0...digits.size).map { |idx| (digits[0...idx] + digits[idx + 1..-1]).join.to_i }.max
# end


# p delete_digit(423023) == 43023
# p delete_digit(152) == 52
# p delete_digit(1001) == 101
# p delete_digit(10) == 1
# p delete_digit(9989) == 999


# Re-order the characters of a string, so that they are concatenated into a new string 
# in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing the english alphabet letters.

# def alphabetized(s)
#   alpha = ("a".."z").to_a + ("A".."Z").to_a
#   s_alpha = s.chars.select { |char| alpha.include?(char) }
#   s_alpha.sort_by { |word| word.downcase }.join
# end

# def alphabetized(s)
#   s.scan(/[a-z]/i).sort_by(&:downcase).join
# end

# p alphabetized(" ") #== ""
# p alphabetized(" a") #== "a"
# p alphabetized("a ") #== "a"
# p alphabetized(" a ") #== "a"
# p alphabetized("A b B a") #== "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") #== "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
# p alphabetized("!@$%^&*()_+=-`,") #== ""
# p alphabetized("The Holy Bible") #== "BbeehHilloTy" 
# p alphabetized("CodeWars can't Load Today") #== "aaaaCcdddeLnooorstTWy"


# Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: 
# The numeric values represent the occurrence of each letter preceding that numeric value. 
# There should be no numeric characters in the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number 
# of times each character behind it is repeated, until the next numeric value appears.


# Input: string, alphanumberic
# Output: string, expansion of alphanumberic

# Explicit: 
# - numberic value to the left of alpha string char, represents the occurance that letter shuold populate in the new string
# - no numeric chars in final string
# - empty string should return empty string

# Implicit:
# - if there is a number & then 3 strings, each string should be repeated until the next number 
# - only numbers and alpha chars in input string, do not need to account for other characters 
# - numbers will be greater than 0

# Data Structure: integers, strings, arrays

# Algorithm:
# - set a constant variable to alphabet characters 
# - set str_arr equal to input string converted to array of characters
# - set results to an empty string
# - iterate over str_arr 
# - if a number is found and an alpha char is to the right
#   - push that character the number amount of times to the empty string
# - if the char to the right of the alpha char is also an alpha
#   - oush that char the number of times to the empty string
# - return results 

# require "pry"

# ALPHA = ("a".."z").to_a + ("A".."Z").to_a

# def string_expansion(s)
#   str_arr = s.chars
#   results = ""
#   return s if str_arr.all? { |char| ALPHA.include?(char) }
#   counter = 0 

#   loop do 
#     break if str_arr[counter].to_i.to_s == str_arr[counter]
#     results << str_arr[counter] 
#     counter += 1
#   end

#   str_arr.each_with_index do |char, idx| 
#     if char.to_i.to_s == char && ALPHA.include?(str_arr[idx + 1])
#       counter = idx + 1
#       loop do 
#         results << str_arr[counter] * char.to_i
#         counter += 1
#         break if str_arr[counter].to_i.to_s == str_arr[counter] || str_arr[counter] == nil
#       end
#     else
#     end
#   end
#   results
# end

# Given a string that includes alphanumeric characters ('3a4B2d') return 
# the expansion of that string: The numeric values represent the occurrence of each 
# letter preceding that numeric value. There should be no numeric characters in the final string. 
# Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of 
# times each character behind it is repeated, until the next numeric value appears.

# ALPHA = ("a".."z").to_a
# NUM = ('1'..'9').to_a

# def string_expansion(string)
#   numeric = 1
#   str_exp = ''
#   string.chars.each do |char|
#     if NUM.include?(char)
#       numeric = char.to_i
#     else ALPHA.include?(char.downcase)
#       str_exp << char * numeric
#     end
#   end
#   str_exp
# end

# p string_expansion('3D2a5d2f') == 'DDDaadddddff'



# Given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.

# I: string
# O: string of integers

# Explicit:
# - Ignore anything not a letter, don't return it
# - replace eveyr letter with it's integer equivalent in the alphabet

# Implicit:
# - space between every number in output

# Data Structure: 
# - Hash, array, string

# Algorithm: 
# - Initalize a data structure to refer to an alph char by it's position in the alphabet (two ararys or hash?)
# - initialize empty string array results = ''
# - convert input string into an array of strings, excluding any characters that are not alpha (regex?) & assign to variable str_arr (gsub)
# - iterate through str_arr 
# - for every letter, look up it's alpha num in the data structure 
# - push the alpha num in results 
# - return alpha_num results once entire str_arr has been iterated through 

# ALPHA = ("a".."z").to_a
# NUM = ('1'..'26').to_a
# ALPHA_NUM = ALPHA.zip(NUM).to_h

# def alphabet_position(str)
#   str.gsub!(/[^a-z]/i, '')
#   results = []
#   str.chars.each do |char|
#     results << ALPHA_NUM[char.downcase]
#   end
#   results.join(" ")
# end

#another student
# def alphabet_position(text)
#   text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
# end

# ## ord returns ASCII number (starts at 97 for alpha, so subtracting 96 gives us 1..26)

# p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("-.-'") == ""


########


# Sherlock has to find suspects on his latest case. He will use your method, dear Watson. 
# Suspect in this case is a person which has something not allowed in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and value is one or 
# few things represented by an array of numbers (can be nil or empty array if empty), example:

# Write method which helps Sherlock to find suspects. 
# If no suspect is found or there are no pockets (pockets == nil), the method should return nil.


# I: Hash (symbols as keys & arrays as values)
# O: Array (of symbols)

# Explicit:
# - Allowed items are defined by an array of numbers
# - if no suspects found, return nil 

# Implicit: 
# - if a number exists not in allowed_arr, then person is suspect

# Data Structure: Arrays, Hashes

# Algorithm: 
# - Set suspects equal to an empty array
# - Iterate over pokcets hash
# - for each value, check to see if all values are inside of of allowed_arr
# - if yes, do nothing
# - if no, add name to suspects array
# - return suspect array if it's not empty
# - if it's empty return nil

# def find_suspects(pockets, allowed_arr)
#   suspects = []
#   pockets.each do |person, items| 
#     items.each do |num|
#       suspects << person if allowed_arr.include?(num) == false
#     end
#   end
#   suspects.empty? ? nil : suspects.uniq
# end

# #another student
# def find_suspects(pockets, allowed_items)
#   suspects = []
#   pockets.each do |person, items|
#     suspects << person unless (Array(items) - allowed_items).empty?
#   end
#   suspects.empty? ? nil : suspects
# end

#another student
# def find_suspects(pockets, allowed_items)
#   p suspects = pockets.select { |name, items| ([*items]-allowed_items).any? }.keys
#   suspects.any? ? suspects : nil
# end


# pockets = { 
#   bob: [],
#   tom: [],
#   jane: []
# } 

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 

# find_suspects(pockets, [1, 2]) #== [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2])  == nil
# p find_suspects(pockets, []) == [:bob, :tom, :jane]
# p find_suspects(pockets, [7])  == [:bob, :tom]



#solution 1 

# def find_suspects(pockets, allowed_arr)
#   results = []
#   pockets.each do |k, v| 
#     v.each do |num|
#       results << k if allowed_arr.include?(num) == false
#     end
#   end
#   results.empty? ? nil : results.uniq
# end



# Given an integer n, find the maximal number you can obtain by 
# deleting exactly one digit of the given number. Example

# For n = 152, the output should be 52;
# For n = 1001, the output should be 101.
# Input/Output

#     [input] integer n

#     Constraints: 10 ≤ n ≤ 1000000.

#     [output] an integer


# def delete_digit(num)
#   num_str = num.to_s
#   del_dig_arr = []
#   num_str.chars.each { |char| del_dig_arr << num_str.sub(char, '').to_i }
#   del_dig_arr.max
# end

# ## another student
# def delete_digit(num)
#   digits = num.to_s.chars
#   (0...digits.size).map { |idx| (digits[0...idx] + digits[idx + 1..-1]).join.to_i }.max
# end

# n = 152
# digits = ["1", "5", "2"]

# digits = num.to_s.chars
# (0..2).map { |idx| (digits[0...idx] + digits[idx + 1..-1].join_to_i) }.max
# end

# digits[0...3] 

# digits[0...0] + digits[1..-1]
# digits[0...1] + digits[2..-1]
# digits[0...2] + digits[3..-1]


#######

# Everyone knows passphrases. One can choose passphrases from poems, 
# songs, movies names and so on but frequently they can be guessed due to common cultural references. 
# You can get your passphrases stronger by different means. One is the following:

# choose a text in capital letters including or not digits and non alphabetic characters,

#     shift each letter by a given number but the transformed letter must be a letter (circular shift),
#     replace each digit by its complement to 9,
#     keep such as non alphabetic and non digit characters,
#     downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
#     reverse the whole result.

# Example:

# your text: "BORN IN 2015!", shift 1

# 1 + 2 + 3 -> "CPSO JO 7984!"

# 4 "CpSo jO 7984!"

# 5 "!4897 Oj oSpC"


# Rules:
# 1) Shift each letter one position (.ord + 1) if "Z" char.ord - 24 ELSE char.ord + 1 (.chr to get letter)
#  --- "A" = 65, "Z" = 90 (if over 90, subtract 26 until under 90)
# 2) all numbers 9 - num = new num
# 3) all non-alphanum + digits stay the same
# 4) downcase all odd positions, upcase all even positions (0, 2, 4, 6 , 8)
# 5) reverse result

# def change_case_rev(result)
#   result = result.chars.map.with_index do |char, idx| 
#     idx.even? ? char.upcase : char.downcase
#   end
#   result.join.reverse
# end

# def play_pass(string, pos)
#   result = ''
#   string.chars.each do |char| 
#     case 
#     when char =~ /[A-Z]/ 
#       ord = char.ord + pos 
#       ord -= 26 until ord <= 90
#       result << ord.chr
#     when char =~ /[0-9]/ 
#       num = (9 - char.to_i)
#       result << num.to_s
#     else
#       result << char
#     end
#   end
#   change_case_rev(result)
# end


# p play_pass("I LOVE YOU!!!", 1) == "!!!vPz fWpM J"
# p play_pass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2) ==
#     "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO"


 ## if/else statement version

# def play_pass(string, pos)
#   result = ''
#   string.chars.map do |char| 
#     if char =~ /[A-Z]/ 
#       ord = char.ord + pos 
#       ord -= 26 until ord <= 90
#       result << ord.chr
#     elsif char =~ /[0-9]/ 
#       num = (9 - char.to_i)
#       result << num.to_s
#     else
#       result << char
#     end
#   end
#   change_case_rev(result)
# end


## another student

# def play_pass(str, n)
#   str
#     .downcase
#     .tr('a-z', ('a'..'z').to_a.rotate(n).join)
#     .tr('0-9', '9876543210')
#     .gsub(/(..|.$)/, &:capitalize)
#     .reverse
# end



# def capitalize(str, arr)
#   str = str.chars.map.with_index do |chr, idx|
#     arr.include?(idx) ? chr.capitalize : chr
#   end
#   str.join
# end

# p capitalize("abcdef",[1,2,5]) == "aBCdeF"
# p capitalize("abcdef",[1,2,5,100]) == "aBCdeF"


# def capitalize(str, arr)
#   res = ""
#   str.chars.each_with_index do |chr, idx|
#     arr.include?(idx) ? res << chr.capitalize : res << chr
#   end
#   res
# end


# def divisors(num)
#   div = 0
#   (1..num).each { |n| div += 1 if num % n == 0 }
#   div
# end

# ## another student
# def divisors(n)
#   (1..n).count { |d| n % d == 0 }
# end


# p divisors(10) == 4
# p divisors(11) == 2
# p divisors(25) == 3
# p divisors(54) == 8

####

# def two_sort(arr)
#   arr.sort.first.chars.join('***')
# end


# p two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]) #== 'b***i***t***c***o***i***n' 
# p two_sort(["turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones"]) == 'a***r***e' 


# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical 
# order of the strings of a1 which are substrings of strings of a2.
# Example 1:

# a1 = ["arp", "live", "strong"]

# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# returns ["arp", "live", "strong"]
# Example 2:

# a1 = ["tarp", "mice", "bull"]

# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# returns []


# Input: Two arrays
# Output: One array, sorted, which includes the string in a1 that are substring of a2

# Explicit: 
# - lexiconographical order
# Implicit:
# - if no strings are substrings of a2, return an empty array

# DS: arrays, strings

# Algorithm:
# - set results equal to an empty ararys
# - iterate through each element in a1 
# - check to see if an elemment in a1 is included in the any string in a2
# - if it is, push result to results arr
# - if it's not do nothing
# - return results arr sorted and remove dupicates

# def in_array(arr1, arr2)
#   results = []
#   arr1.each do |str1| 
#     arr2.each do |str2|
#       results << str1 if str2.include?(str1)
#     end
#   end
#   results.sort.uniq
# end

# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

# p in_array(a1, a2) == ["arp", "live", "strong"]

# ## another student
# def in_array(arr1, arr2)
#   arr1.select{ |str| arr2.any? {|str2| str2.include?(str) } }.sort
# end

#######

# Digital root is the recursive sum of all the digits in a number.

# Given n, take the sum of the digits of n. If that value has more than one digit, 
# continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

# I: integer
# O: integer

# Explicit: 
# - input is non-negative and not zero
# - take sum of all digits, recusrisvely, until value is only one digit

# Implicit: 
# - use recursion?

# D: array

# Algorithm: 
# - set sum equal to the below:
# - convert input integer into an array
# - add all integers up to find new sum
# - repeat until sum is only one integer 
# - return sum



# def digital_root(num)
#   sum = num.digits.reduce(:+)
#   sum = digital_root(sum) unless sum.digits.size == 1 
#   sum
# end


# p digital_root(16) #== 7
# p digital_root(942) #== 6
# p digital_root(132189) == 6
# p digital_root(493193) == 2


# def digital_root(num)
#   sum = num.digits.reduce(:+)
#   loop do
#     break if sum.digits.size == 1
#     sum = digital_root(sum) 
#   end
#   sum
# end

## another student

# def digital_root(n)
#   n < 10 ? n : digital_root(n.digits.sum)
# end


########


# Your goal is to write the group_and_count method, which should receive and array 
# as unique parameter and return a hash. Empty or nil input must return nil instead 
# of a hash. This hash returned must contain as keys the unique values of the array, 
# and as values the counting of each value.

# I: array of integers
# O: hash with keys as unique array elements and values as how many times each key is included in the array

# Explicit:
# - if no values or nil values in array, return nil instead of a hash

# Data Structure: arrays, hash

# Algorithm:
# - set results equal to an empty hash
# - if input array is empty or includes, nil, return nil
# - iterate through input array 
# - for each unique elem in array, set it equal to hash key's
# - for each time the elem in array shows up add integer 1 to key's value
# - return hash 


# def group_and_count(arr)
#   return nil if arr.all? { |elem| elem.nil? } || arr.empty?
#   arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
# end

# p group_and_count([0,1,1,0]) == {0=>2, 1=>2}
# p group_and_count([nil, nil]) == nil
# p group_and_count([]) == nil



# # def group_and_count(arr)
# #   arr.each {|e| e.gsub!(nil, '')}
  
# #   return nil if arr.all? { |ele| ele.nil? }
# #   arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
# # end

# # p group_and_count([0,1,1,0]) == {0=>2, 1=>2}



# def group_and_count(arr)
#   return nil if arr.map { |elem| elem == nil? } || arr.empty?
#   arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
# end


