
# def leading_substrings(string)
#   substrings = []
#   counter = 0

#   loop do 
#     substrings << string[0..counter]
#     counter += 1
#     break if counter == string.size
#   end
#   substrings.sort_by(&:size)
# end

# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



# #LS 
# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end

#another student
def leading_substrings(str)
  running_str = ''
  sub_strings = []
  str.each_char { |chr| sub_strings << running_str += chr }
  sub_strings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']