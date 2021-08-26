
# def is_odd?(number)
#   if number % 2 != 0
#     true
#   else
#     false
#   end
# end

# #can pare down to simpler code, as ruby evaluates and returns all statements

# def is_odd?(number)
#   number % 2 == 1
# end

# def is_odd?(number)
#   [1, -1].include?(number % 2)
# end

# def is_odd?(number)
#  %w(1 -1).include?((number % 2).to_s)
# end

def is_odd?(number)
  [1, -1].include?(number.remainder(2))
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7) 