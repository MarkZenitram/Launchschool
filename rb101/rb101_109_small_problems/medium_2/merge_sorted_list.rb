def merge(array1, array2)
  index = 0
  counter = 0
  total_size = (array1.size + array2.size) / 2
  new_arr = []

  loop do
    if array1[0] == []
      array2
    elsif array2[0] == []
      array1
    elsif array1[index] <= array2[counter]
      new_arr << array1[index]
      p index += 1 unless index == (total_size - 1)
    else
      new_arr << array2[counter]
      p counter += 1 unless counter == (total_size - 1)
    end
    break if new_arr.size == total_size * 2
  end
  p new_arr
end

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
#merge([], [1, 4, 5]) == [1, 4, 5]
#merge([1, 4, 5], []) == [1, 4, 5]