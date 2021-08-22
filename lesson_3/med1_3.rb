
def factors(number)
  divisor = number
  factors = []
  if number > 0
    loop do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
      break if divisor == 0 
    end 
  end
  factors
end

p factors(-122)

# What is the purpose of the number % divisor == 0 ? 
# #The purpose of this line is to ensure the modulo of the divisor is 0 (the number is an integer with no remainder), 
# and ensures if the number can be factored by the divisor

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# # The purpose of this last line is to ensure the return value is the array we initialized at the begining of the method

LS Answer

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end  
  factors
end

p factors(0)