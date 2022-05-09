def reverse!(array)
  index = -1
  counter = 0

  loop do
    array << array[index] unless array[index] == nil
    index -= 2
    counter += 1
    break if counter > array.size / 2
  end
  p array
  array.slice!(0, array.size/2)
  p array.object_id
end

list = []
reverse!(list)

p list

p list.object_id