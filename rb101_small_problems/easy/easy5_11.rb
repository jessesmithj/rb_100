# def spin_me(str)
#   str = str.split.each do |word|
#     word.reverse!
#   end
#   puts str.join(" ")
# end

# str = "hello world"
# puts str
# puts str.object_id

# puts spin_me(str).object_id

# puts str
# puts str.object_id


# # You are given a method named spin_me that takes a string as an argument 
# # and returns a string that contains the same words, but with each word's 
# # characters reversed. 

# # Given the method's implementation, will the returned 
# # string be the same object as the one passed in as an 
# # argument or a different object?


def spin_me(str)            # string object passed in
  str.split.each do |word|  # string #split into an array of strings  == new_object
    word.reverse!           # each string element gets reversed permanently in-place
  end.join(" ")             # a new string object is created with #join
end

spin_me("hello world") # "olleh dlrow"  # different string object returned than passed in


#Further exploration


def split(str)
  str.split.join(" ")
end

str = "hello world"

puts "This is the original string:"
puts str
puts str.object_id

puts "This is the method's returned string"
puts split(str)
puts split(str).object_id

puts "Even though they are the same string, they are different objects."
