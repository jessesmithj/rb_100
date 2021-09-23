# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and 
# the other end at the upper-right.


## PEDAC

# Input: n integer that represents the number of stairs in a right triangle
# Output: An asterik picture of a right triangle with n number of stairs

# Q: Is recursion the best solution for this problem? 

# Explicit: 
#  - n is a positive integer 
#  - display a right triangle whose sides each have n stairs 
#  - each side has n stairs, but the asterick is one more for each lower stair until n is reached

#  Data structure: Integer, Array

# Algorithm 
# - set arr = (0..n).to_a


# my i didn't get enouugh sleep and decided to code brute force answer that should not but kind of works...

# def triangle(n)
#   final_arr = []
#   arr = []
#   counter_asterick = n
#   counter_space = 0
  

#     loop do
#       counter_space.times {|i| arr << " "} if counter_space > 0
#       counter_asterick.times {|i| arr << "*"}
#       final_arr << arr 
#       break if counter_asterick <= 1

#       counter_asterick -= 1
#       counter_space += 1
#       arr = []
#     end

#    output_counter = n - 1

#     loop do
#       puts final_arr[output_counter].join
#       output_counter -= 1
#       break if output_counter == 0 
#     end

# end


def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end




triangle(5)

#     *
#    **
#   ***
#  ****
# *****


triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********


