def greetings(array, hash)
  name = array.join(" ")
  title = hash[:title]
  occupation = hash[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

def greetings(name, status)
  "Hello, #{name.join(' ')}!" \
    "Nice to have a #{status[:title]} #{status[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.