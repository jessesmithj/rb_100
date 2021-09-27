# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in 
# a different order. Your output should look something like this:

####

# def anagrams(words)
  # words_hash = {}
  # words.each do |word|
  #   words_hash[word] = word.chars.sort.join
  # end
  
#   hash = words.each_with_object(Hash.new []) do |word, hash|
#     hash[word.chars.sort] += [word]
#   end

#   hash.values 
# end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
# 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
# 'flow', 'neon']

# p anagrams(words)


## LS 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end


#Another student
# def anagrams(words)
#   anagrams = words.group_by { |word| word.chars.sort }
#   anagrams.each_value { |value| p value }
# end

# anagrams(words)