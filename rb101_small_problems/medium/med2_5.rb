# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length


# To be a valid triangle, the sum of the lengths of the two shortest sides must be 
# greater than the length of the longest side, and all sides must have lengths greater 
# than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending 
# on whether the triangle is equilateral, isosceles, scalene, or invalid.

# # PEDAC
# Input: 3 integers
# Output: symbol that specifies what type of triangle the input is or invalid

# Explicit:
# - equilateral All 3 sides are of equal length
#     - isosceles 2 sides are of equal length, while the 3rd is different
#     - scalene All 3 sides are of different length
# - a valid triangle is a triangle where the sum of the two smallest sides is greater than the length of the longest side && all sides are greater than zero

# Data Structure: integer, array

# Algorithm: 
# - Check to see if triangle is valid 
#   -if invalid return :invalid
# - If triangle is valid, check to see if sides are equal
#   -if all sides are equal, return :equilateral
# - If 2 sides are equal but one side is different
#    - return :isopsceles
# - if all 3 sides are different
#   - return scalene

def valid_tri?(arr)
  arr[0] + arr[1] > arr[2]
end

def triangle(side1, side2, side3)
  sort = [side1, side2, side3].sort
  return :invalid if valid_tri?(sort) == false
  return :equilateral if sort.all?(side1)
  return :isosceles if sort[0] == sort[1] || sort[1] == sort[2]
  :scalene
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid



# LS 

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end