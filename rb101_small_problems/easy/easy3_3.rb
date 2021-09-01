# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as a character.

puts "Please write word or multiple words"
user_words = gets.chomp
character_count = user_words.gsub(" ", "").size

puts "There are #{character_count} characters in #{user_words}."

## LS ##

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."