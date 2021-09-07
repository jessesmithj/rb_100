# Given a string that consists of some words (all lowercased) and an assortment 
# of non-alphabetic characters, write a method that returns that string with 
# all of the non-alphabetic characters replaced by spaces. If one or more 
# non-alphabetic characters occur in a row, you should only have one space 
# in the result (the result should never have consecutive spaces).

# I: string, all lower case, with non-alphabetic characters 
# O: string with non-alphabetic characters replcaed by spaces 
#    - result should never have more than one consecutive space in a row, though

# D: string, array? 

# A:

# - for input string: replace all non-alphabetic characeters with a space 
# - Iterate through string, any time there is more than one space, turn it into one space only
# - Return cleanup string

#First Answer 

# def cleanup(string)
#   string.gsub(/[^a-z]/, ' ').squeeze(' ')
# end

# Secon answer

ALPHABET = ("a".."z").to_a

def cleanup(text)
  clean_string = []

  text.chars.each do |char|
    if ALPHABET.include?(char) 
      clean_string << char 
    else
      clean_string << " " unless clean_string.last == " "
    end
  end

  clean_string.join
end

# puts cleanup("---what's my +*& line?") == ' what s my line '
