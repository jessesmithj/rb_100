# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, 
# and whose digits occur exactly once each. So, for example, 49 is a featured number, 
# but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next 
# featured number that is greater than the argument. Return an error message if there is no next featured number.

## PEDAC
# Input: integer
# Output: integer that fulfills the featured number requirements

# Explicit: 
# - featured number is odd && a multiple 7 && each digits occures only once 
#   - 49 is a featured number
#   - 98 IS not
#   - 97 IS not
#   - 133 IS not
# - return error message if no next featured number exists 

# DS: integer, array

# Algorithm:
# - SET feat_num = 7 * (num/7)]
# - SET feat_num_arr = feat_num.to_s.chars 
# - loop feat_num += 7 until all conditions passed
# - return num once all conditions pass 
# - if no conditoins fulfill, return error 
require 'pry'

def featured(num)
  feat_num = (7 * (num / 7)) + 7
  feat_num_arr = []

  loop do
    feat_num_arr = feat_num.to_s.chars
    break if (feat_num.odd?) && (feat_num % 7 == 0) && (feat_num_arr == feat_num_arr.uniq)
    return "No number that fulfills those requirements" if feat_num > 9_876_543_210
    feat_num += 7
  end
  feat_num
end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


# LS 
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end
