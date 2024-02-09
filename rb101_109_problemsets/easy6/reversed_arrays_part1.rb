def reverse!(array)
  reversals_needed = array.size/2
  first = 0
  last = -1

  loop do
    break if array.size == 0 || array.size == 1
    array[first], array[last] = array[last], array[first]
    first += 1
    last -= 1
    reversals_needed -= 1
    break if reversals_needed == 0
  end
  array
end



p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true
p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true