def reverse(arr)
  new_arr = arr.each_with_object([]) { |i,a| a.prepend(i)}
  new_arr
end

p reverse([1,2,3,4])