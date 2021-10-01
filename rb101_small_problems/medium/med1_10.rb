# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end



# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4



# 2nd LS solution

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

## Fast method (last digit repeats every 60 times)

FIB_PATTERN = '011235831459437077415617853819099875279651673033695493257291'

def fibonacci_last(number)
  nth_position = number % 60

  FIB_PATTERN[nth_position].to_i
end

p fibonacci_last(123_456_789_987_745) # -> 5