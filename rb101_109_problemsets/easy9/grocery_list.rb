def buy_fruit(arr)
  just_fruits = []
  arr.each do |sub_array|
    sub_array[1].times do |_|
      just_fruits << sub_array[0]
    end
  end
  just_fruits
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]