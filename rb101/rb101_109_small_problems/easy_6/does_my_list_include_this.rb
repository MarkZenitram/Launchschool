def include?(array, variable)
  index = 0

  while index < array.size
    if array[index] == variable 
      return true
    end
    index += 1
  end
end



include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false