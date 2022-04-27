def running_total(array)
  new_array = []
  new_array << array[0] unless array[0] == nil
  counter = 0

  loop do
    break if new_array.size == array.size 
    new_array << new_array[counter] + array[counter + 1]
    counter += 1
  end
  p new_array
end







running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []