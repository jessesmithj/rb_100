###1
# arr = ['10', '11', '9', '7', '8']
# p arr.sort_by { |ele| ele.to_i }.reverse

# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end

###2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p books.sort_by { |book| book[:published].to_i }

##3

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]] 
# # arr[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# # arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# #arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# # hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# hsh2[:third].key(0)


##4

# arr1 = [1, [2, 3], 4]
# # arr1[1][1] = 4

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# # arr2[2] = 4

# hsh1 = {first: [1, 2, [3]]}
# # hsh1[:first][2][0] = 4

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# # hsh2[['a']][:a][2] = 4


##5

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# age = 0
# munsters.each_value do | value |
#   age += value["age"] if value["gender"] == "male"
# end

# p age

##6

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }


# munsters.each do | name, details |
#   puts "#{name} is a #{details["age"]} year old #{details["gender"]}."
# end

##7

# a = 2
# b = [5, 8]
# arr = [a, b]
# #arr = [2, [5, 8]]

# arr[0] += 2
# #arr = [4, [5, 8]]

# arr[1][0] -= a
# #arr = [4. [3, 8]]

# a # => 2
# b # => [3, 8]


## 8 

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# VOWELS = %w( a e i o u )
# vowels_arr = []

# hsh.each do |_key, value|
#   value.each do |word|
#     word.chars.each do |char|
#       vowels_arr << char if VOWELS.include?(char)
#     end
#   end
# end

# puts vowels_arr


## 9 

# def sort_sub(arr)
#   arr.map do |sub_arr|
#     sub_arr.sort { |a, b| b <=> a }
#   end
# end

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# p sort_sub(arr)

## 10 

# def plus_one(arr)
#   arr.map do |hash| 
#   incremented_hash = {}
#     hash.each do |key, value|
#     incremented_hash[key] = value + 1
#     end
#   incremented_hash
#   end
# end

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# p plus_one(arr)


## 11

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# p (arr.map do |sub_arr| 
#   sub_arr.reject do |num|
#     num % 3 != 0
#   end
# end)


## 12

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# #cannot use to_h
# # reuturn: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# p (arr.each_with_object({}) do |ele, hash| 
#   hash[ele.first] = ele.last
# end)

## 13

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# p (arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end)


## 14

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# hsh.map do |_, value|
#     if value[:type] == 'fruit'
#       value[:colors].map { |color| color.capitalize }
#     else value[:type] == 'vegetable'
#       value[:size].upcase
#     end
#   end)


##15

# Given this data structure write some code to return an array which 
# contains only the hashes where all the integers are even.

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# p (arr.select do | hsh |
#   hsh.all? do |_, v|
#     v.all? do |num|
#       num.even?
#     end
#   end
# end)



# Each UUID consists of 32 hexadecimal characters, and is typically broken 
# into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"


#solution 1
# ALPHA_NUM= ("a".."f").to_a + ("0".."9").to_a

# def eight()
#   str = ""
#   8.times { |_| str << ALPHA_NUM.sample }
#   str + "-"
# end

# def four()
#   str = ""
#   4.times { |_| str << ALPHA_NUM.sample }
#   str + "-"
# end

# def twelve()
#   str = ""
#   12.times { |_| str << ALPHA_NUM.sample }
#   str
# end

# def generate_uuid()
#   eight() + four() + four() + four() + four() + twelve()
# end

# p generate_uuid()

#solution 2

# def generate_uuid()
#   hex = ("a".."f").to_a + ("0".."9").to_a
#   pattern = [8, 4, 4, 4, 12]
#   uuid = ""
  
#   pattern.each do |num|
#     num.times do |_|
#       uuid << hex.sample
#     end
#     uuid << "-" if num < 12 
#   end

#   uuid
# end
  
# p generate_uuid()


#LS

# def generate_UUID
#   characters = []
#   (0..9).each { |digit| characters << digit.to_s }
#   ('a'..'f').each { |digit| characters << digit }

#   uuid = ""
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index|
#     section.times { uuid += characters.sample }
#     uuid += '-' unless index >= sections.size - 1
#   end

#   uuid
# end


### 13 again

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# p (arr.sort_by do |sub_arr| 
#     sub_arr.select do |num|
#       num.odd?
#     end 
#   end)

### 15 again

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# p (arr.select do |hsh|
#   hsh.all? do |_, values|
#     values.all? do |num| 
#       num.even?
#     end
#   end
# end)


### 14 again

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# p (hsh.map do |_, val| 
#   if val[:type] == "fruit"
#     val[:colors].map { |color| color.capitalize } 
#   else 
#     val[:size].upcase
#   end
# end)


### 12 again

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# p (arr.each_with_object(Hash.new) do |arr, hash|
#   hash[arr[0]] = arr[1]
# end)


## ORIGINAL DATA
order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
]

## NEW STRUCTURE
# customer_orders = [
#   {
#     customer_id: 12,
#     customer_name: 'Emma Lopez',
#     orders: [
#       { order_fulfilled: true, order_value: 135.99 },
#       { order_fulfilled: true, order_value: 289.49 },
#       { order_fulfilled: false, order_value: 58.00 }
#     ]
#   },
#   {
#     customer_id: 32,
#     customer_name: 'Michael Richards',
#     orders: [
#       { order_fulfilled: true, order_value: 120.00 },
#       { order_fulfilled: false, order_value: 85.65 }
#     ]
#   },
# ]

# CODE TO GET US THERE

# customer_orders = {}

# order_data.each do |row|
#   if customer_orders.key?(row[:customer_id])
#     customer_orders[row[:customer_id]][:orders] << {
#       order_fulfilled: row[:order_fulfilled],
#       order_value: row[:order_value]
#     }
#   else
#     customer_orders[row[:customer_id]] = {
#       customer_id: row[:customer_id],
#       customer_name: row[:customer_name],
#       orders: [
#         {
#           order_fulfilled: row[:order_fulfilled],
#           order_value: row[:order_value]
#         }
#       ]
#     }
#   end
# end

# p customer_orders = customer_orders.values


#START
customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
]

#END

# fulfilled_orders =[
#   {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
#   {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
# ]

#CODE TO GET US THERE

fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled] == true
  end

  fulfilled_orders[index][:order_value] = order_value
end

p fulfilled_orders