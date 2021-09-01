# ## PEDAC ##

# I: integer/year
# O: string/century the year is

# D: Integer/String

# SET century as a hask with keys equal to an array of integer dates and values equal to centuries
# Check to which hash key the given integer correspodns with
# return its value

#Original answer did not solve for centuries beyond 21st, so this is incorrect

# CENTURY_HASH = {
#             (1..100)    => "1st",
#             (101..200)  => "2nd",
#             (201..300)  => "3rd",
#             (301..400)  => "4th",
#             (401..500)  => "5th",
#             (501..600)  => "6th",
#             (601..700)  => "7th",
#             (701..800)  => "8th",
#             (801..900)  => "9th",
#             (901..1000)  => "10th",
#             (1001..1100) => "11th",
#             (1101..1200) => "12th",
#             (1201..1300) => "13th",
#             (1301..1400) => "14th",
#             (1401..1500) => "15th",
#             (1501..1600) => "16th",
#             (1601..1700) => "17th",
#             (1701..1800) => "18th",
#             (1801..1900) => "19th",
#             (1901..2000) => "20th",
#             (2001..2100) => "21st"
# }

# def century(year)
#   CENTURY_HASH.each do |key, value|
#     return value if key.include?(year)
#   end
# end

###
###


def century(year)
  century = (year / 100) + 1
  century -= 1 if (year % 100) == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  returrn 'th' if [11, 12, 13].include?(century % 100) 
  last_digit = century % 10

  case last_digit
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else 'th'
  end
end

puts century(2000) 
puts century(2001) 
puts century(1965) 
puts century(256) 
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th' => "2nd"





## LS Student

# ENDINGS = ['th', 'st', 'nd', 'rd'] 

# def century(year)
#   cent = (year/100.0).ceil.to_s
#   if cent[-1] == "1"
#     cent[-2] == "1" ? cent + ENDINGS[0] : cent + ENDINGS[1]
#   elsif cent[-1] == "2"
#     cent[-2] == "1" ? cent + ENDINGS[0] : cent + ENDINGS[2]
#   elsif cent[-1] == "3"
#     cent[-2] == "1" ? cent + ENDINGS[0] : cent + ENDINGS[3]
#   else
#     cent + ENDINGS[0]
#   end
# end