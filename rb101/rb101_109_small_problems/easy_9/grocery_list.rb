def buy_fruit(fruit_array)
  new_fruit_array = []
  index = 0

  loop do
    counter = 0
    loop do
      new_fruit_array << fruit_array[index][0]
      counter += 1
      break if counter == fruit_array[index][1]
    end
    index += 1
    break if index == fruit_array.size
  end
  p new_fruit_array
end



buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]