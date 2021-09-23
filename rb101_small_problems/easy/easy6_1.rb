# Write a method that takes a floating point number that represents an angle 
# between 0 and 360 degrees and returns a String that represents that angle 
# in degrees, minutes and seconds. You should use a degree symbol (°) to represent 
# degrees, a single quote (') to represent minutes, and a double quote (") 
# to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# PEDAC

# I: integer/float
# 0: a string that represents an angle in degrees, minutes & seconds

# Explicit:
# - Floating point number will be between 0 & 360
# - Result will be a string that includes a degree, minutes & seconds
# - You must use a degree symbol to represent the degree, a single quote to represent minues & double quote for seconds

# Implicit:
# - If the number is an integer (and not a float), the minutes & seconds will be 00',00"
# - If the number is 0 or 360, the answer will be ((0°00'00")

# Data Strucutres: 
# - Integer/Float
# - Array of integer/floats
# - String as return value

# Algorithm: 
# - Set DEGREE = "\xC2\xB0"
# - Set angle = the integer part of the input angle
# - Set minute = the fractioanl part of the input angle to 2 decimal places
# - Set seconds = the fracational part of the the minute to 2 decimal places

# - If input angle as an integer is equal to input angle then minute = "00'" and seconds = "00\""
# - Else 

# my solution 

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.divmod(1)[0]
  minutes = (angle.divmod(1)[1] * 60)
  seconds = (minutes.divmod(1)[1] * 60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(254.6) == %(254°36'00") ## my solution is 1 second off
puts dms(76.73) == %(76°43'48")
puts dms(30) == %(30°00'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


## LS 

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# My original concatenation for the return value 
# "#{degrees}" + DEGREE + "#{format("%02d'", minutes)}" + "#{format('%02d"', seconds)}"


#LS student
# def dms(angle)
#   angle = (angle.divmod(360))[1] if !(0..360).include?(angle)
#   degrees, deg_remainder = angle.divmod(1)
#   minutes, min_remainder = (deg_remainder * 60).divmod(1)
#   seconds = min_remainder * 60
#   format("%d°%.02d'%.02d\"", degrees, minutes, seconds)
# end