# Write a program that prompts the user for two positive integers, and then 
# prints the results of the following operations on those two numbers: addition, 
# subtraction, product, quotient, remainder, and power. Do not worry about 
# validating the input.

def results(number_one, number_two)
  sum = number_one + number_two
  subtract = number_one - number_two
  product = number_one * number_two
  quotient = number_one / number_two
  remainder = number_one % number_two
  power = number_one ** number_two

  puts "==> #{number_one} + #{number_two} = #{sum}"
  puts "==> #{number_one} - #{number_two} = #{subtract}"
  puts "==> #{number_one} * #{number_two} = #{product}"
  puts "==> #{number_one} / #{number_two} = #{quotient}"
  puts "==> #{number_one} % #{number_two} = #{remainder}"
  puts "==> #{number_one} ** #{number_two} = #{power}"
end

puts "Enter the first number:"
number_one = gets.chomp.to_i

number_two = nil
loop do
  puts "Enter the second number:"
  number_two = gets.chomp.to_i
  break if number_two != 0
  puts "Number cannot be zero. Try again."
end

results(number_one, number_two)

## LS ##

# def prompt(message)
#   puts "==> #{message}"
# end

# prompt("Enter the first number:")
# first_number = gets.chomp.to_i
# prompt("Enter the second number:")
# second_number = gets.chomp.to_i

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")


## LS USER ##


OPERATORS = [ '+', '-', '*', '/', '%', '**']

def arithmetic_solutions (num_1, num_2)
  OPERATORS.map { |op| "==> #{num_1} #{op} #{num_2} = #{num_1.public_send(op, num_2)}" }
end

puts "==> Enter the First Number:"
first_usr_num = gets.chomp.to_i

puts "==> Enter the Second Number:"
second_usr_num = gets.chomp.to_i

puts arithmetic_solutions(first_usr_num, second_usr_num)