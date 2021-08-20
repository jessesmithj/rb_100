statement = "The Flintstones Rock!"

# i = 0
# statement.each_char do |char|
#   if char == 't' || char == 'T'
#     i += 1
#   end
# end
# puts i

# i = 0
# statement.each_char {|char| i += 1 if char == 't'}
# puts i

p statement.count('t')
