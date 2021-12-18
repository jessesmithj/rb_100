# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that 
# do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an 
# argument can be spelled from this set of blocks, false otherwise.

# ## PEDAC

# Input: A string
# Output: Boolean value based on if input passes a test 

# Explicit: 
# - Each input block can only be used once
# - Cannot use both letters from each block

# Implicit:
# - case does not matter 
# - longest word can only be 13 characters long 
# - each word can only use each letter in the alphabet once

# Data Structure: Array of strings, string input

# Algorithm:
# - Convert input string into an array of characters 
# - For each character, check to see if character is included in one of each of the alphabet block's arrays
#   - if yes, delete alphabet block's array containing that letter
#   - If no. return false
# - return true if all iterations return true 

# def block_word?(string)
#   alpha_block = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"], 
#                  ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"], 
#                  ["V", "I"], ["L", "Y"], ["Z", "M"]]

#   boolean_arr = []
#   string.upcase.chars.each do |char|
#     alpha_block.each do |arr|
#       if arr.join.include?(char)
#         boolean_arr << true
#         alpha_block.delete(arr)
#       end
#     end
#   end

#   boolean_arr.size == string.size
# end

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# LS 

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# Another student

# LETTER_BLOCKS = %w(bo xk dq cp na gt re fs jw hu vi ly zm)

# def block_word?(word)
#   LETTER_BLOCKS.all? { |block| word.downcase.count(block) < 2 }
# end