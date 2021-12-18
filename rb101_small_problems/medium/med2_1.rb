# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. 
# Sentences may end with periods (.), exclamation points (!), or question marks (?). 
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. 
# You should also print the number of words in the longest sentence.

# The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

# text = File.read('text.txt')
# sentences = text.split(/\.|\?|!/)

# sum = 0
# sentence_sizes = []

# sentences.each do |sentence| 
#   sentence.split.each do |_| 
#     sum += 1 
#   end
#   sentence_sizes << sum
#   sum = 0
# end 

# puts sentences[sentence_sizes.find_index(sentence_sizes.max)]
# puts ""
# puts "Contains: #{sentence_sizes.max} words"



# LS Answer

# text = File.read('text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"


# Another Student

text = File.read('text.txt')
sentences = text.split(/[.!?]/)

longest = ''
sentences.each do |sentence|
  longest = sentence if sentence.length > longest.length
end

puts longest
puts longest.split.length
