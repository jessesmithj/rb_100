## PEDAC ##

# I: Two strings
# O: One string with the input strings concatenated in order of smallest to largest and then adding the shortest string again

# Check to see which of the two strings is the shorter string
# if string1 is shorter string return shorter string + longer string + shoter string together
# else return string2 + string1 + string2
# Return concatenated_string

def short_long_short(string1, string2)
  if string1.size < string2.size
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"


#array method

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end
