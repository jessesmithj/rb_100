=begin
Mutating Methods
Ruby Version: 3.0.2
Reference Material: https://ruby-doc.org/core-3.0.2/String.html#method-i-concat

Example 1

- String#<< method
- Ruby Docs: string << object → str (returns string, not a new string- so should be a mutating method)
- However, the description states that it returns a new string:
- "Returns a new String containing the concatenation of self and object"
=end

a = "hi"
puts "a's object_id is #{a.object_id}."

a << " bye"
puts "a's object_id is #{a.object_id}." #Same Object ID as before

puts a # the value in String object local variable a is pointing to has mutated, and it is the same object


=begin 
Example 2

- String#concat method
- Ruby Docs: concat(*objects) → new_string
- However, when running the below test, this does not appear to be a new string, but a mutating method, similar to String#<<
- Ruby Doc: Returns a new String containing the concatenation of self and all objects in objects:
=end

a = "hi"
puts "a's object_id is #{a.object_id}."

a.concat(" bye")
puts "a's object_id is #{a.object_id}." #Same Object ID as before

puts a # the value in String object local variable a is pointing to has mutated, and it is also the same object


=begin 

Summary: 

1) In Example 1, the shortform definition of String#<< is 'string << object → str', which appears to be correct.
   However, the description states that this method returns a new string, which appears to be incorrect.

2) In Example 2, both the shortform definition as well as the description of String#concat state that this method
   will return a new string, which appears to be incorrect when tested in Ruby 3.0.2.

3) Are one or both of these method definitions incorrect in the Ruby docs or is my mental model incorrect? 

=end