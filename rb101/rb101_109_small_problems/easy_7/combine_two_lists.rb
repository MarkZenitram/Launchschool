def interleave(array_one, array_two)
  index = 0
  combined_array = []

  loop do
    combined_array << array_one[index]
    combined_array << array_two[index]
    index += 1
    break if index == array_one.size
  end
  p combined_array
end






p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']