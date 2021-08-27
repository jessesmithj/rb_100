(1..99).each { |num| puts num if num.even? }

1.upto(99) { |i| puts i if i % 2 == 0 }

puts 1.upto(99).select(&:even?)

#LS

value = 0
while value <= 99
  puts value
  value += 2
end

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
