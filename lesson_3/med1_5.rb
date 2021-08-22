def fib(first_num, second_num)
  limit = 1002
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#The issue with the code is that the variable limit is outside of the method definition 'fib''s scope. Because of this
#fib cannot access the variable, so there is no limit number set in the method definition. To fix this, we initialize limit 
#Within the scope of the method OR we make it an additional argument to the definition of fib method and pass it in when we call fib.