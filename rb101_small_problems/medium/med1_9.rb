#fib procedural level

# my answer
# def fibonacci(n)
#   fib = [1, 1]
#   counter = 1
#   loop do 
#     fib << fib[counter - 1] + fib[counter]
#     counter += 1
#     break if n == fib.size
#   end

#   fib.last
# end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001)  #=> 4202692702.....8285979669707537501



#LS 

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(10)


# 3: first, last = [1, 2]
# 4: first, last = [2, 3]
# 5: first, last = [3, 5]
# 6: first, last = [5, 8]
# 7: first, last = [8, 13]
# 8: first, last = [13, 21]
# 9: first, last = [21, 34]
# 10: first, last = [34, 55]