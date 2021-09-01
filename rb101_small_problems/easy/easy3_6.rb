def xor?(arg1, arg2)
  array = [arg1, arg2]
  return true if array.include?(true) && array.include?(false)
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# LS 

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

# def xor?(value1, value2)
#   !!((value1 && !value2) || (value2 && !value1))
# end