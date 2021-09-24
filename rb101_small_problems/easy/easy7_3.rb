# Write a method that takes a single String argument and returns a new string 
# that contains the original value of the argument with the first character of 
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.


def word_cap(string)
  title_case_words = string.split.map do |word| 
    word.capitalize 
  end
  title_case_words.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end

