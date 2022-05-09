def merge(array_one, array_two)
  new_array = []
  counter = 0
  joined_array = array_one + array_two

  loop do
    new_array << joined_array[counter] unless new_array.include?(joined_array[counter])
    counter += 1
    break if counter == joined_array.size
  end
  p new_array
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]