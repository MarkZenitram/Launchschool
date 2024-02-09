def interleave(arr1, arr2)
  interleaved_arr = []
  arr1.each_with_index do |elem, index|
    interleaved_arr << elem
    interleaved_arr << arr2[index]
  end
  interleaved_arr
end



p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']