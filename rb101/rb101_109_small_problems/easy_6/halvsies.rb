def halvsies(array)
  array_one = []
  array_two = []
  halvsies_array = []
  counter = 0

  if array.size.odd?
    array_one = array.slice!(0, (array.size / 2 + 1))
    array_two = array
    halvsies_array << array_one
    halvsies_array << array_two
  else
    array_one = array.slice!(0, (array.size / 2))
    array_two = array
    halvsies_array << array_one
    halvsies_array << array_two
  end

  p halvsies_array
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]