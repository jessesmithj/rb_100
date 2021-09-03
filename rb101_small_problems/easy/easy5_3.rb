# PEDAC

# I: String 
# O: integer that returns the value of the converting the input into 24:hour time format after midnight


# - Convert input string to array
# - twenty_four_hour = (a[0] * 60) + a[1]
# - twenty_four_hour = twenty_four_hour % 1440

# MINUTES_PER_DAY = 1440

def after_midnight(time_str)
  time_str = time_str.split(":").map(&:to_i)
  twenty_four_hour_time = (time_str[0] * 60) + time_str[1]
  twenty_four_hour_time % MINUTES_PER_DAY
end

puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0

def before_midnight(time_str)
  time_str = time_str.split(":").map(&:to_i)
  twenty_four_hour_time = MINUTES_PER_DAY - ((time_str[0] * 60) + time_str[1])
  twenty_four_hour_time % MINUTES_PER_DAY
end

puts before_midnight('00:00') == 0
puts before_midnight('12:34') == 686
puts before_midnight('24:00') == 0


## LS 

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end