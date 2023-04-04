def halvsies(arr)
  new_arr = []
  length = arr.size
  half = length / 2
  if arr.size % 2 == 0
    new_arr << arr.slice(0,half)
    new_arr << arr.slice(half, half)
  else
    new_arr << arr.slice(0,(half + 1))
    new_arr << arr.slice((half + 1), half)
  end
  new_arr
end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]