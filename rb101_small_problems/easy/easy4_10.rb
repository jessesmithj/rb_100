DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  case number.divmod(1).join[0]
  when "0" then '0'
  when "-" then "-" + integer_to_string(-number)
  else          "+" + integer_to_string(number)
  end
end

puts signed_integer_to_string(0) == '0'
puts signed_integer_to_string(-123) == "-123"
puts signed_integer_to_string(4321) == '+4321'


## LS

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end


## other

# def signed_int_to_string(number)
#   case number <=> 0
#   when -1 then sign = "-"
#   when +1 then sign "+"
#   else sign = ""
#   end
# sign + integer_to_string
# end