# def substrings(string)
#   result = []
#   counter = 0 

#   loop do 
#     counter.upto(string.size - 1) do |index|
#       result << string[counter..index]
#     end
#     counter += 1
#     break if counter == string.size
#   end
  
#   result
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]


# def substrings(string)
#   result = []
#   index_start = 0
#   index_end = 0

#   loop do
#     loop do
#       result << string[index_start..index_end]
#       index_end += 1
#       break if index_end == string.size
#     end
#     index_start += 1
#     index_end = index_start
#     break if index_end == string.size
#   end
#   result
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]



## LS 

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    p results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde')