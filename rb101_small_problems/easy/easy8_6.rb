# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", 
# if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(start_num, end_num)
  result = []

  start_num.upto(end_num) do |num|
    case
    when num % 3 == 0 && num % 5 == 0
      result << 'FizzBuzz'
    when num % 5 == 0
      result << 'Buzz'
    when num % 3 == 0
      result << 'Fizz'
    else
      result << num
    end
  end
  result.join(", ")
end

puts fizzbuzz(1, 15)


LS

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end
