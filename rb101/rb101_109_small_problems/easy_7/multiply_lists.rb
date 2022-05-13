def multiply_list(array_one, array_two)
  index = 0
  multiplied_array = [] 

  loop do
    multiplied_array << array_one[index] * array_two[index]
    index += 1
    break if index == array_one.size
  end
  p multiplied_array
end


multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]