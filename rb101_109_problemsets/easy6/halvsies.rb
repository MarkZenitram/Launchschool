def halvsies(arr)
  size = arr.size
  half_size = size.even? ? size/2 : (size/2) + 1
  halved_array = []

  halved_array << arr[0, half_size]
  halved_array << arr[half_size, (size - half_size)]

  halved_array
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]