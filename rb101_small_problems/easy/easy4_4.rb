def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 4 == 0 && year % 100 != 0
      true
  elsif year % 100 == 0 && year % 400 == 0
      true
  else
      false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true



# It takes 365.25 days to orbit the Sun. So if we just made the year 365 days long, 
# at the end of the year, we'd be a tiny bit behind (roughly 0.24°) in our position 
# in orbit. Over the years, that error would accumulate, and before you know it, April 
# would be mid-winter (this actually happened before they got the calendar straightened out.)

# There's more: The year isn't 365.25 days long, it's really 365.2424 days long. If we added 
# a leap day every four years, we'd wind up getting ahead of our proper orbital position. 
# So once a century, we skip the leap year. Thus, for example, the year 2100 will not be a leap year.

# Still more: Skipping leap year once a century actually leaves us behind a bit. So every fourth century, 
# we don't skip the leap year. So while 2100 won't be a leap year, 2000 was.

# The math will never truly come out right, but with leap years, century years, and leap centuries, 
# we're within a day of being right for the next 30,000 years or so.