# Write a method that returns the number of Friday the 13ths in the year given by an argument. 
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) 
# and that it will remain in use for the foreseeable future.

# require 'date'

# def friday_13th(year)
#   (1..12).count { |month| Date.new(year, month, 13).friday? }
# end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

#LS 

require 'date'

def friday_13th(year)
  fri_13_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    fri_13_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  fri_13_count
end
