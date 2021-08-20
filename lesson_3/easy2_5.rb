# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# puts flintstones.inspect

#6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # flintstones << "Dino"
# flintstones.push("Dino")
# p flintstones

#7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))
# flintstones.push("Dino", "Hoppy")
p flintstones