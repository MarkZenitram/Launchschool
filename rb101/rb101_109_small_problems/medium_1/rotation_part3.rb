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

def max_rotation(integer)
  counter = integer.to_s.size
  max_rotation_int = integer

  loop do
    max_rotation_int = rotate_rightmost_digits(max_rotation_int, counter)
    counter -= 1
    break if counter == 0
  end
  max_rotation_int
end

#p max_rotation(735291) == 321579
#p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845