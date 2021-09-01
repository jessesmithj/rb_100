DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = []
  string.chars do |num|
    digits << DIGITS[num] if DIGITS.keys.include?(num)
  end
  p digits.join    
end

## incorrect because join makes the array into a string,
## that's why LS answer computates the numerical value of string!

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

## LS 

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end