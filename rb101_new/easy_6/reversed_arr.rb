def reverse!(arr)
  left = 0
  right = -1
  loop do
    break if left == arr.size / 2
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end
  arr
end



p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true
#
p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true
p 
p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true
p 
p list = []
p reverse!(list) == [] # true
p list == [] # true