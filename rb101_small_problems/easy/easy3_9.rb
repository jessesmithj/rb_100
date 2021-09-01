# Palindrome that is case-insensitive, and it should ignore all 
# non-alphanumeric characters. If you wish, you may simplify things 
# by calling the palindrome? method you wrote in the previous exercise.

def real_palindrome?(string)
  string.downcase!
  string.gsub!(/[^a-z0-9]/i, "")
  string == string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam!!!!?++") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false


## LS 

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end


## other

def real_palindrome?(str)
  str_clean = str.scan(/\w/).join.downcase
  str_clean == str_clean.reverse
end