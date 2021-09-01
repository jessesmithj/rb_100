require 'date'

puts Date.civil #              => -4712-01-01
puts Date.civil(2016) #        => 2016-01-01 
puts Date.civil(2016, 5) #     => 2016-05-01
puts Date.civil(2016, 5, 13) # => 2016-05-13 

# Date::civil is a class method
# Date::civil == Date::new
# Creates a date object denoting the given calendar date.

# Ex:

# Date.new(2001)            #=> #<Date: 2001-01-01 ...>
# Date.new(2001,2,3)        #=> #<Date: 2001-02-03 ...>
# Date.new(2001,2,-1)       #=> #<Date: 2001-02-28 ...>
