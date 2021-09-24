# Write a method that takes a string, and then returns a hash 
# that contains 3 entries: one represents the number of characters 
# in the string that are lowercase letters, one the number of characters 
# that are uppercase letters, and one the number of characters that are neither.


# Input: string
# Output: hash with 3 key/value pairs populated based on the contents of the input string

# Explicit: 
# - Hash containts 3 entries: lowercase, uppercase & neither 

# Implicit: 
# - anything that is not a letter is considered neither, including spaces 
# - an empity string is returns 0 for all three hash values 

# Data structure: string, array, hash

# Algorithm:
# - initialize empty char_counter_hash = Hash.new(0)
# - convert string into array of characters 
# - iterate over each character 
# - if case is lowercase increment lowercase by 1
# - if case is upper, increment uppercase by 1
# - if character is not a letter, increment neither by 1
# - return char_counter_hash

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  char_counter_hash = { lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char| 
    if LOWERCASE_CHARS.include?(char)
      char_counter_hash[:lowercase] += 1
    elsif UPPERCASE_CHARS.include?(char)
      char_counter_hash[:uppercase] += 1
    else
      char_counter_hash[:neither] += 1
    end
  end

  char_counter_hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


# SOLUTION 2

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
