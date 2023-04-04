def multiply_all_pairs(arr1, arr2)
  new_arr = []
  index = 0
  loop do
    break if index >= arr1.size
    counter = 0
    loop do
      break if counter >= arr2.size
      p new_arr << (arr1[index] * arr2[counter])
      counter += 1
    end
    index += 1
  end
  p new_arr.sort
end


multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]