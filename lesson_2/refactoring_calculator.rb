def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
    when '1'
      "Adding"
    when '2'
      "Subtracting"
    when '3'
      "Multiplying"
    when '4'
      "Dividing"
  end
end


prompt("Welcome to Calculator. Enter your name:")
name = String.new
loop do
  name = Kernel.gets().chomp()

  break unless name.empty? 
  prompt("Make sure to use a valid name.")
end

number1 = nil
number2 = nil

prompt("Hi #{name}! Great day for a calculation.")

loop do #main loop
  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp().to_i()

    break if valid_number?(number1)
    Kernel.puts("Number is invalid. Try again.")
  end

  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp().to_i()

    break if valid_number?(number2)
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
            number1 + number2
          when '2' 
            number1 - number2
          when '3' 
            number1 * number2
          when '4' 
            number1.to_f() / number2.to_f()
          end

  prompt("The result is #{result}.")

  prompt("Would you like to perform another caclulation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye!")