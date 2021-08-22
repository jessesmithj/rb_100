def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#The difference between the two programs is that program one destructive modifies the original input argument buffer,
#wheras the second program creates a new array and does not modify the original input argument 'buffer array'.


# Yes, there is a difference. While both methods have the same return value, in the first implementation, the input argument 
# called buffer will be modified and will end up being changed after rolling_buffer1 returns. That is, the caller will have 
# the input array that they pass in be different once the call returns. In the other implementation, rolling_buffer2 
# will not alter the caller's input argument.

# What is the caller in the above definition? 