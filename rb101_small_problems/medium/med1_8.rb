# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number 
# is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, 
# |the 5th is 2 + 3 = 5, and so on. In mathematical terms:

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2


# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

# ##

# Input: an integer representing the nth fibonacci number
# Output: the nth number in the fibonacci sequence 

# Explicit:
# - must use recursion
# - recursive methods have three primary qualities:
#     - They call themselves at least once.
#     - They have a condition that stops the recursion (n == 1 above).
#     - They use the result returned by themselves.

# Data structures: integer, array?

# Algorithm: 
# - fib = [1, 1]
# - counter = 1
# - fib << fib[counter - 1] + fib[counter]
# - counter += 1
# - break if counter == n 

# # example recursion 
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end


# def fibonacci(n)
#   return 1 if n == 1 || n == 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765



                                        #         How this recursive method works:
                                        #                    #fib(5)
                                        #               /             \
                                        #          fib(4)            fib(3)
                                        #           /  \              /   \ 
                                        #      fib(3)  fib(2)      fib(2) fib(1)   
                                        #       /  \     1           1       1
                                        #  fib(2) fib(1)   
                                        #   1       1 




#A tail recursive solution for this exercise is:

# def fibonacci_tail(nth, acc1, acc2)
#   if nth == 1
#     acc1
#   elsif nth == 2
#     acc2
#   else
#     fibonacci_tail(nth - 1, acc2, acc2 + acc1)
#   end
# end

# def fibonacci(nth)
#   fibonacci_tail(nth, 1, 1)
# end

# p fibonacci(1000)