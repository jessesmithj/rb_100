
=begin

PSEUDOCODE 

| keyword             | meaning                              |
| ------------------- | ------------------------------------ |
| START               | start of the program                 |
| SET                 | sets a variable we can use for later |
| GET                 | retrieve input from user             |
| PRINT               | displays output to user              |
| READ                | retrieve value from variable         |
| IF / ELSE IF / ELSE | show conditional branches in logic   |
| WHILE               | show looping logic                   |
| END                 | end of the program                   |


START

GET INPUT
- loan_amount = 
- apr = 
- loan_duration = 

SET
- monthly_interest_rate = 
- loan_duration_months = 
- monthly_payment = 


OUTPUT (monthly payment on loan)

m = p * (j / (1 - (1 + j)**(-n)))

    m = monthly payment
    p = loan amount
    j = monthly interest rate
    n = loan duration in months

Hints:

    Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
    If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
    Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering. 

=end


## my_answer

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  # num.to_i.to_s == num
  Integer(num) rescue false
end

def float?(num)
  Float(num) rescue false
end


prompt("Mortage Loan Calcuclator")

loan_amount = ''
loop do
  prompt("Enter your loan amount.")
  loan_amount = gets.chomp

  break if integer?(loan_amount) || float?(loan_amount) ## cannot accept numbers with commas
  puts "Enter a valid number."
end

apr = ''
loop do
  prompt("Enter your APR.")
  apr = gets.chomp

  break if (integer?(apr) || float?(apr)) && apr.to_f > 0
  puts "Enter a valid number."
end

loan_duration_years = ''
loop do
  prompt("How many years are left on your loan?")
  loan_duration_years = gets.chomp

  break if integer?(loan_duration_years) || float?(loan_duration_years) 
  puts "Enter a valid number."
end

loan_amount = loan_amount.to_i
apr = apr.to_f / 100
loan_duration_months = loan_duration_years.to_i * 12
monthly_interest_rate = apr / 12

monthly_payment = loan_amount * 
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

puts "$#{'%.2f' % monthly_payment}"



# ls_answer

# def prompt(message)
#   Kernel.puts("=> #{message}")
# end

# loop do
#   prompt("Welcome to Mortgage Calculator!")
#   prompt("-------------------------------")

#   prompt("What is the loan amount?")

#   amount = ''
#   loop do
#     amount = Kernel.gets().chomp()

#     if amount.empty?() || amount.to_f() < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is the interest rate?")
#   prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

#   interest_rate = ''
#   loop do
#     interest_rate = Kernel.gets().chomp()

#     if interest_rate.empty?() || interest_rate.to_f() < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is the loan duration (in years)?")

#   years = ''
#   loop do
#     years = Kernel.gets().chomp()

#     if years.empty?() || years.to_i() < 0
#       prompt("Enter a valid number")
#     else
#       break
#     end
#   end

#   annual_interest_rate = interest_rate.to_f() / 100
#   monthly_interest_rate = annual_interest_rate / 12
#   months = years.to_i() * 12

#   monthly_payment = amount.to_f() *
#                     (monthly_interest_rate /
#                     (1 - (1 + monthly_interest_rate)**(-months)))

#   prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

#   prompt("Another calculation?")
#   answer = Kernel.gets().chomp()

#   break unless answer.downcase().start_with?('y')
# end

# prompt("Thank you for using the Mortgage Calculator!")
# prompt("Good bye!")

