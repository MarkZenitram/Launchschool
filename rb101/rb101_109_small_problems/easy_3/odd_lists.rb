def oddities(array)
  counter = 0
  new_array = []
  new_array << array[0]

  loop do
    break if counter > array.size
    counter += 2
    new_array << array[counter]
  end
  new_array.compact!
end





p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []