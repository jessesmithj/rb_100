# Write a program that will ask for user's name. The program will then 
# greet the user. If the user writes "name!" then the computer yells back 
# to the user.

puts "What is your name?"
name = gets.chomp

if name.end_with?("!") 
  name = name.chop.upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"  
else
  puts "Hello #{name}"
end


#LS User

print "What is your name? "
name = gets.chomp

greeting = "Hello, #{name.capitalize}. Nice to meet you."
yell = "HELLO, #{name.chop.upcase}. WHY ARE WE SCREAMING?"

name.end_with?("!") ? (puts yell) : (puts greeting)


