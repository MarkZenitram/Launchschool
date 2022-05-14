def multiply_all_pairs(array_one, array_two)
  index = 0
  new_array = []

  loop do
    counter = 0
    loop do
      new_array << array_one[index] * array_two[counter]
      counter += 1
      break if counter == array_two.size
    end
    index += 1
    break if index == array_one.size
  end
  p new_array.sort
end


multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]