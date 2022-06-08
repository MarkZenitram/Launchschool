def rotate_array(array)
  index = -1
  rotated_array = []
  rotated_array << array[0]

  loop do
    rotated_array.prepend(array[index])
    index -= 1
    break if rotated_array.size == array.size
  end
  rotated_array
end

#p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
#p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
#p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true