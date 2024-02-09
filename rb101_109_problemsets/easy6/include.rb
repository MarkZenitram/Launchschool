#def include?(arr, elem)
#  if arr.empty?
#    arr == elem
#  else
#    arr.select { |element| element == elem }[0] == elem
#  end
#end



def include?(array, value)
  array.each do |element| 
    p element
    return true if value == element
  end
  false
end



p include?([1,2,3,4,5], 3) == true
#p include?([1,2,3,4,5], 6) == false
#p include?([], 3) == false
#p include?([nil], nil) == true
#p include?([], nil) == false