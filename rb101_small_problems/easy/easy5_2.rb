# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. If the number of minutes 
# is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day 
# in 24 hour format (hh:mm). Your method should work with any integer input.

MINUTES_PER_DAY = 1440

def time_of_day(num)
  if num < 0
    loop do
      num += MINUTES_PER_DAY
      break if num > 0
    end
  elsif num > MINUTES_PER_DAY
    num = num % MINUTES_PER_DAY
  end

  time = num.divmod(60)
  format('%02d:%02d', time[0], time[1])
end

puts time_of_day(0) == "00:00"
puts time_of_day(35) == "00:35"
puts time_of_day(70) == "01:10"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(1200) == "20:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(-1437) == "00:03"
puts time_of_day(-4231) == "01:29"


## LS

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY ## this solves for problems over 1440 minutes (one full day)
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# puts time_of_day(0) == "00:00"
# puts time_of_day(35) == "00:35"
# puts time_of_day(70) == "01:10"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(1200) == "20:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(-4231) == "01:29"



## original


# MINUTES_PER_DAY = 1440

# def time_of_day(num)
#   if num < 0
#     loop do
#       num += MINUTES_PER_DAY
#       break if num > 0
#     end
#   elseif
#     loop do
#       num -= MINUTES_PER_DAY
#       break if num <= MINUTES_PER_DAY
#     end
#   end

#   time = num.divmod(60)
#   format('%02d:%02d', time[0], time[1])
# end

