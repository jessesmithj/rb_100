# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.


## PEDAC

# Input: Odd integer
# Output: 4 pointed diamond, displayed with asterisks

# Explicit: 
# - n will always be odd (and positive)
# - grid is n x n dimensions 

# Implicit:
# - the diamon begins after a space 
# - the widest part of the diamond is the center, made up of n asterisks
#   - above and below that are n - 2 asterisks until there is only 1 asterisks at the top and bottom

#   Data structures: string, maybe array?
  
# Algorithm:
# - insert a blank space
# - 

# first_answer

def diamond(int)
  space = int/2
  diamonds = 1 

  puts ""

  loop do 
    puts (" " * space) + ("*" * diamonds) + (" " * space)
    diamonds += 2
    space -= 1
    break if diamonds > int
  end

  diamonds = int - 2
  space = 1
  
  loop do
    puts (" " * space) + ("*" * diamonds) + (" " * space)
    diamonds -= 2
    space += 1
    break if diamonds < 1
  end
end
  
# diamond(3)
# diamond(5)
# diamond(7)
# diamond(19)


def diamond(n)
  1.upto(n-1) { |i| puts ("*" * i).center(n) if i.odd? }
  n.downto(1) { |i| puts ("*" * i).center(n) if i.odd? }
end

diamond(19)
