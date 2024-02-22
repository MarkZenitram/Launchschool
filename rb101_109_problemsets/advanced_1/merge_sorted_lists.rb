def merge(arr1, arr2)
  sorted_merged_arr = []
  arr1_limit = arr1.size - 1
  arr2_limit = arr2.size - 1
  index1 = 0
  index2 = 0

  loop do
    break if sorted_merged_arr.size >= ((arr1 + arr2).size) - 1 || arr1.empty? || arr2.empty?
    loop do
      break if index2 > arr2_limit || index1 > arr1_limit
      if arr1[index1] < arr2[index2]
        sorted_merged_arr << arr1[index1]
        index1 += 1
      elsif arr1[index1] > arr2[index2]
        sorted_merged_arr << arr2[index2]
        index2 += 1
      elsif arr1[index1] == arr1.last
        sorted_merged_arr << arr1[index1]
      else
        sorted_merged_arr << arr2[index2]
      end
      break if index2 > arr2_limit || index1 > arr1_limit
    end
  end

  if index2 > index1
    sorted_merged_arr << arr1[index1]
  else
    sorted_merged_arr << arr2[index1]
  end

  sorted_merged_arr.delete(nil)

  if arr1.empty?
    p arr2
  elsif arr2.empty?
    p arr1
  else
    p sorted_merged_arr
  end
end







p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]