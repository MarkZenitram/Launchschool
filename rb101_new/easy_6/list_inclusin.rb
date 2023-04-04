def include?(arr, num)
  arr_2 = arr.clone
  arr_2 << num
  arr_2.uniq == arr
end





p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false