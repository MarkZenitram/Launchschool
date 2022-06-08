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

def rotate_rightmost_digits(integer, digits)
  if digits == 1
    return integer
  end

  rotated_segment = []
  rotated_integers_array = []
  counter = 0
  split_integer = integer.to_s.split('').to_a

  loop do
    split_integer[counter] = split_integer[counter].to_i
    counter += 1
    break if counter == split_integer.size
  end

  rotated_segment = split_integer[-digits, digits]
  split_integer = split_integer - rotated_segment
  
  (split_integer + rotate_array(rotated_segment)).join.to_i

end



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917