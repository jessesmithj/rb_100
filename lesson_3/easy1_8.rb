flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flintstones.select! { |k, v| k == 'Barney' }
# p flintstones.to_a.flatten

# p flintstones.to_a[2]

p flintstones.assoc("Barney")