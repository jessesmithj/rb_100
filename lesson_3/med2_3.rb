def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" #still "pumpkins"
#This is because assignment does not mutate the caller, so my_string remains unchanged

puts "My array looks like this now: #{my_array}" #["pumpkins", "rutabaga"]
##The shovel operator is a destructive method, so the original array is modified 

