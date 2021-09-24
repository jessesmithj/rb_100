
def multiply_all_pairs(arr_1, arr_2)
  products = []
  arr_1.each do |item_1|
    arr_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


#compact solution
def multiply_all_pairs(array_1, array_2)
  arr_1.product(arr_2).map { |num1, num2| num1 * num2 }.sort
end