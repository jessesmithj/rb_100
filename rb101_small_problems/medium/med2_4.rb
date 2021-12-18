# Write a method that takes a string as an argument, and returns true if all parentheses 
# in the string are properly balanced, false otherwise. To be properly balanced, 
# parentheses must occur in matching '(' and ')' pairs.

# Note that balanced pairs must each start with a (, not a ).

# ## PEDAC

# Input: String
# Output: Boolean 

# Explicit: 
# - Paratheses must occur in matching '(' ')' pairs
# - Note that balanced pairs must each start with a (, not a ).

# Implicit:
# - No parentheses means the string is balanced
# - Must be an even number of '(' ')'

# Data Structure: string, array

# Algorithm: 

# Check if string includes an even number of '()'


# def balanced?(string)
#   parantheses = parantheses(string)
# end

# def parantheses_arr(string)
#   characters = string.chars
#   parantheses = characters.select { |char| char == '(' || char == ')' }
# end


#LS 

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

  
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false