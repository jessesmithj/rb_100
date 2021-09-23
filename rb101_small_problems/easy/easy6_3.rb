# Write a method that calculates and returns the index of the first Fibonacci 
# number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)

# Input: Integer that represents the length of digits of a number in the Fibonacci sequence
# Output: The (index + 1) value in which the first Fibonacci number that has the number of digits specificed by the input

# Explicit:
# - The argument will always be greater than or equal to 2
#   - The first 2 digit integer begins at index 7
# - The first 2 numbers are 1 by definition
# - Each subsequent number is the sum of the two previous numbers


# Implicit
# - In order to solve the problem, solve for how to iterate through the fib sequence 
#   - do this until the first fib number with a length equal to the input integer exists (12.to_s.length)
#     -- once it does, return its length/size in the sequence 

# Data Structure: 
#   integer, strings, arrays

# Algorithm: 
# - Set fib_seq = [1, 1]
# - Set index_counter = 0
# - Caclulate the next element in the fib_seq by adding the first element of fib_seq to the second element of fib_seq
# - Increment the index_counter by 1 
# - Continue to solve for the next number of the fib sequence 
# - Every time we solve for the next number in the fib sequence, check the elements lenth
# - if it is equal to the input integer, return the (index + 1) value of the number

def find_fibonacci_index_by_length(digits)
  fib_seq = [1, 1]
  index_counter = 0

  loop do
    fib_seq << fib_seq[index_counter] + fib_seq[index_counter + 1]
    break if fib_seq.last.to_s.length >= digits
    index_counter += 1
  end
  fib_seq.length
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847

# LS 

# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end

# # loop 1
# index = 3
# fib = 2 (1 +1)

# first = 1
# second = 2

# #loop 2
# index = 4
# fib = 3 (2 + 1)

# first = 2
# second = 3

# #loop 3
# index = 5
# fib = 5 (2 + 3)

# first = 3
# second = 5

# etc, etc...
