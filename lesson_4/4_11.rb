# Turn this array into a hash where the names are the keys and the values are the positions in the array.

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = Hash.new(0)

# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# p flintstones_hash

##
##

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages_sum = 0
# ages.each { |_,age| ages_sum += age }
# puts ages_sum

# p ages.values.inject(:+)

##
##

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # ages.select! { |_, age| age < 100 }
# ages.keep_if { |_, age| age < 100 }
# p ages

##
##

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min

##
##

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Betsie)
# p flintstones.index { |element| element.start_with?("Be") }
# p flintstones.index { |name| name[0, 2] == "Be" }

##
##

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.map! { |name| name[0, 3] }

##
##

#7. my answer

# statement = "The Flintstones Rock"

# char_number = Hash.new(0)
# statement.delete(" ").chars do |char|
#   char_number[char] += 1
# end

# p char_number.sort.to_h

# #LS 7

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   result[letter] = letter_frequency if letter_frequency > 0
# end

# p result

##
##

# What will each output?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

##
##

# words = "the flintstones rock"
# p words.split.map { |word| word.capitalize }.join(" ")

##
##

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# p munsters
# p munsters.object_id

#my answer 
# munsters.map do |_, info| 
#   if info["age"] <= 17
#     info["age_group"] = "kid"
#   elsif info["age"] >= 65
#     info["age_group"] = "senior"
#   else
#     info["age_group"] = "adult"
#   end
# end

# p munsters
# p munsters.object_id

# #LS 
# munsters.each do |name, details|
#   case details["age"]
#   when 0...18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end

# p munsters
# p munsters.object_id

# beacuse element reassignment is destructive -- not the method itself - that's wht the object id remains the same 
# even though it changes! 

##
##

# names = ["Jesse", "Chrissy", "Bryan", "Brynne"]
# p names
# p names.object_id

# names.map { |name| name + "s" }
# p names
# p names.object_id



numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end


# index 0
# numbers = [1,2,3,4]
# 2

# index 1 
# numbers = [2, 3, 4]
# 3

# index 2 (nothing at index 2, loop ends)

# 1
# 3
# [3,4]
