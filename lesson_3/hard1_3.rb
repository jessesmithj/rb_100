def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


# "one is: one"
# "two is: two"
# "three is: three"
# method def is self-containing, reassignment points to a new object, outside the scope of method def
# original variables point to the same original objects, nothing is modified

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# same answer as above

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# gsub = global substitution, this method mutates the caller, so the arguments passed in to the method definition local paramters
# point to the same objects initialized outside of the scope of the method definition. then when the gsub! method is called on
# the local paramters, the origina objects are also modified. 

# thus the answer is 
# "one is: two" 
# "two is: three" 
# "three is: one"