# A double number is a number with an even number of digits whose left-side digits 
# are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 
# are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, 
# unless the argument is a double number; double numbers should be returned as-is.

# ## PEDAC

# Input: integer
# Output: integer * 2 unless number is a double number then return number as is

# Explicit:
# - double number has an even number of digits
# - double number's left side numbers equal it's right side numbers

# Implicit:
# - input integer will not be 0s or negatives
# - if string size is odd, return double the number, no matter what

# Data structure = integer, string  (to get size)

# Algorithm: 
# - set num_size = size of num as a string
# - set first_half = first half of number 
# - set sec_half = sec half of number
# - if first_half of num is equal to sec_half of num, return num
# - else return num * 2
# end 

def twice(num)
  num_size = num.to_s.size
  half = (num.to_s.size)/2
  first_half = num.to_s[0..half - 1]
  second_half = num.to_s[half..-1]
  case
  when num_size.odd?
    num * 2
  when first_half == second_half
    num 
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
p twice(0) == 0


#LS 

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end