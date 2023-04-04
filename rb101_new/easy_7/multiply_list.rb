def multiply_list(arr1, arr2)
  new_arr = []
  counter = 0
  loop do
    break if counter == arr1.size
    new_arr << (arr1[counter] * arr2[counter])
    counter += 1
  end
  p new_arr
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]