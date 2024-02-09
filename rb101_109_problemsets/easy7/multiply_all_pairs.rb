def multiply_all_pairs(arr1, arr2)
  multiplied_array = []
  arr1.each do |num|
    arr2.each do |num2|
      multiplied_array << num * num2
    end
  end
  p multiplied_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]