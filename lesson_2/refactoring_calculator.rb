
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
  # Integer(num) rescue false
end

def float?(num)
  num.to_f.to_s == num
end

def operation_to_message(op)
  word = case op
         when '1'
           "Adding"
         when '2'
           "Subtracting"
         when '3'
           "Multiplying"
         when '4'
           "Dividing"
         end

  x = "A random line of code"

  word
end


prompt(MESSAGES["welcome"])
name = String.new
loop do
  name = Kernel.gets().chomp()

  break unless name.empty? 
  prompt(MESSAGES["valid_name"])
end

number1 = ''
number2 = ''

prompt("Hi #{name}! Great day for a caclulation.")

loop do #main loop
  loop do
    prompt(MESSAGES["first_num"])
    number1 = Kernel.gets().chomp()

    break if valid_number?(number1) || float?(number1)
    Kernel.puts("Number is invalid. Try again.")
  end

  loop do
    prompt(MESSAGES["second_num"])
    number2 = Kernel.gets().chomp()

    break if valid_number?(number2) || float?(number2)
    Kernel.puts("Number is invalid. Try again.")
  end

  operator_prompt = <<-MSG 
    What operation would you like to perform on these two numbers? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
  operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator 
          when '1'
            number1.to_i + number2.to_i
          when '2' 
            number1.to_i - number2.to_i
          when '3' 
            number1.to_i * number2.to_i
          when '4' 
            number1.to_f() / number2.to_f()
          end

  prompt("The result is #{result}.")

  prompt("Would you like to perform another caclulation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye!")