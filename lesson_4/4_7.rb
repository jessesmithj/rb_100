# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(hash)
#   produce_fruit = Hash.new(0)

#   hash.each do | key, value |
#     if hash[key] == "Fruit" 
#       produce_fruit[key] = value
#     end
#   end
  
#   produce_fruit
# end

# puts select_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}


# def selected_fruit(produce_list)
#   produce_keys = produce_list.keys
#   selected_fruits = {}
#   counter = 0

#   loop do
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == "Fruit"
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end

# puts selected_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}


## mutating double

# def double_numbers(numbers)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2

#     counter += 1
#   end

#   pnumbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers(my_numbers) 
# p my_numbers


##
##

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   p doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_odd_numbers(my_numbers)

##

# def multiply(numbers, multiplier)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     numbers[counter] *= multiplier
#     counter += 1
#   end

#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# multiply(my_numbers, 10) 
# p my_numbers

##
##

def select_letter(question, letter)
  selection = ''
  counter = 0

  loop do
    break if counter == question.size 
    current_char = question[counter]

    if current_char == letter 
      selection << current_char
    end

    counter += 1
  end

  selection
end


question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

