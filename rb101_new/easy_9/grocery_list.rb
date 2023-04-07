def buy_fruit(list)
  fruit_list = []
  
  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times {fruit_list << fruit }
  end
  p fruit_list
end



buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]