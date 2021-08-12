=begin

## A method that returns the sum of two integers

Casual:
- Given two integers
- add both integers together
- return result

Formal:
START 
- Given two integers
- Add together integer1 & integer2 
- Return result 
END


## A method that takes an array of strings, and returns a string that is all those strings concatenated together

Casual:
 - Have an array of strings
 - Assign variable for empty string
 - Concatenate all strings within the array together in new variable
 - Return new variable with strings concatenated 

 Formal: 
 START
 - Given an array of strings
 - Assign variable for all strings concatenated
 - Concatenate each string within the arary using iteration or a method (all_strings_combined.concat)
 - Return variable
 END


## A method that takes an array of integers, and returns a new array with every other element

Casual: 
- Given an array of integers 
- Iterate through the entire array of integers starting on element 1, index 0
- Push every other value of the array into a new array
- Return new array

 Formal: 
 START
 - INPUT: An array of integers 
 - SET new variable to store every other element of INPUT

 - Iterate through each element in integer array
 - Push first element & every other element into new variable (possibly with each_with_index method?)

 - PRINT new variable

 END



| keyword             | meaning                              |
| ------------------- | ------------------------------------ |
| START               | start of the program                 |
| SET                 | sets a variable we can use for later |
| GET                 | retrieve input from user             |
| PRINT               | displays output to user              |
| READ                | retrieve value from variable         |
| IF / ELSE IF / ELSE | show conditional branches in logic   |
| WHILE               | show looping logic                   |
| END                 | end of the program                   |



=end

# PRACTICE Syntactical Coding

def every_other(array)
  every_other_element = []
  
  array.each_with_index do |num, ind| 
    if ind.even? || ind == 0
      every_other_element.push(num)
    else 
      next
    end
  end

  p every_other_element
end

# array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 12, 15, 17, 29]
array = [99, 2, 1, 4, 3, 6, 5, 8, 7, 122]

every_other(array)


