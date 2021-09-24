UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a".."z").to_a


def swapcase(string)
  swap = string.chars.map do |char|
    if LOWERCASE.include?(char)
      char.upcase
    elsif UPPERCASE.include?(char)
      char.downcase
    else
      char
    end
  end

  swap.join
  end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'



## 2nd answer 
# def swapcase(string)
#   swap_arr = []
  
#   string.chars.map do |char|
#     if LOWERCASE.include?(char)
#       swap_arr << char.upcase
#     elsif UPPERCASE.include?(char)
#       swap_arr << char.downcase
#     else
#       swap_arr << char
#     end
#   end

#   swap_arr.join
#   end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


# LS 

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end
