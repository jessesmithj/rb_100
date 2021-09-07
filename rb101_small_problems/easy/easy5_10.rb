# Write a method that will take a short line of text, and print it within a box.

# refactored 

def print_in_box(string)
  top_bottom_line = "+" + ("-" * (string.length + 2)) + "+"
  empty_line = '|' + (" " * (string.length + 2)) + "|"

  puts top_bottom_line
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts top_bottom_line
end

print_in_box('To boldly go where no one has gone before.')

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

print_in_box('Do you need a little darkness to get you going?')

# +-------------------------------------------------+
# |                                                 |
# | Do you need a little darkness to get you going? |
# |                                                 |
# +-------------------------------------------------+

## LS 

# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end


# # first solution

# def print_in_box(string)
#   top_bottom_line = (string.length + 2)
#   print "+" + ("-" * top_bottom_line) + "+"
#   puts ""
#   print '|' + (" " * top_bottom_line) + "|"
#   puts ""
#   print '| ' + string + " |"
#   puts ""
#   print '|' + (" " * top_bottom_line) + "|"
#   puts ""
#   print "+" + ("-" * top_bottom_line) + "+"
#   puts ""
# end