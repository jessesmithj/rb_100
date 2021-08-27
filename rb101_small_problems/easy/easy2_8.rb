# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.


## PEDAC ## 

# Input: positive integer
# Output: sum or product of all integers between 1 & the input integer

# Data Structure: integer, array 

# GET user_integer 
# GET operation
# SET product_or_sum_total = 
# Calculate the sum/product of all integers between 1 and the user_integer 


# def positive_integer
#   user_integer = 0
#   loop do
#     puts "Please enter an integer greater than 0:"
#     user_integer = gets.chomp.to_i  
    
#     break if user_integer > 0 
#     puts "That's not a valid integer"
#   end

#   user_integer
# end

# user_integer = positive_integer

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# sum_total = 0
# product_total = 1
# counter = 1

# if operation == 's'
#   until counter > user_integer
#     sum_total += counter
#     counter += 1
#   end
#   puts "The sum of the integers between 1 and #{user_integer} is #{sum_total}."
# elsif operation == 'p'
#   until counter > user_integer
#     product_total *= counter
#     counter += 1
#   end
#   puts "The product of the integers between 1 and #{user_integer} is #{product_total}."
# else
#   puts "Operation unknown."
# end


###


def positive_integer
  user_integer = nil
  loop do
    puts ">> Please enter an integer greater than 0:"
    user_integer = gets.chomp.to_i
    break if user_integer > 0
    puts "That's not a valid integer"
  end

  user_integer
end

user_integer = positive_integer

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

case operation
when 's'
  total = (1..user_integer).inject(:+)
  puts "The sum of the integers between 1 and #{user_integer} is #{total}."
when 'p'
  total = (1..user_integer).inject(:*)
  puts "The product of the integers between 1 and #{user_integer} is #{total}."
else
  puts "Operation unknown."
end



### LS ###

# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end