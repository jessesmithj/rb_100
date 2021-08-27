(1..99).each { |num| puts num if num.odd? }

1.upto(99) { |i| puts i if i % 2 == 1 }

puts 1.upto(99).select(&:odd?)

#LS

value = 1
while value <= 99
  puts value
  value += 2
end