greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings


greetings = { a: 'hi' }
puts greetings.object_id
puts

informal_greeting = greetings[:a]
puts informal_greeting
puts informal_greeting.object_id
puts greetings[:a].object_id
puts

informal_greeting << ' there'
puts informal_greeting
puts informal_greeting.object_id
puts greetings[:a].object_id
puts

puts greetings # => {'hi there'}