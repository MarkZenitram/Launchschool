def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index { |num, index| new_arr << num * arr2[index] }
  new_arr
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]