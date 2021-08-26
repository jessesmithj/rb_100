
# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, 
# the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000


# Input: integer & boolean
# Output: integer 

# SET bonus_amount = 0
# Check to see if boolean value is true or false
# if true, divide salary by two
#   return bonus
# if false, return bonus

# def calculate_bonus(salary, bonus)
#   bonus_amount = 0

#   return bonus_amount = salary/2 if bonus == true 
#   bonus_amount
# end

# puts calculate_bonus(2800, false) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

#LS

def calculate_bonus(salary, bonus)
  bonus ? (salary/2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000