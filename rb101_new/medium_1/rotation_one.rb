def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, rotations)
  all_digits = number.to_s.chars
  right_digits = all_digits[-rotations..-1]
  rotated_right_digits = rotate_array(right_digits)
  left_digits = all_digits - right_digits
  joint_rotation = (left_digits + rotated_right_digits).join('').to_i
end



def max_rotation(number)
  rotations = number.to_s.size - 1
  index = 0
  current_num = number
  loop do
    p current_num = rotate_rightmost_digits(current_num, index)
    index -= 1
    break if (index + 1) * -1 >= rotations
  end
  current_num
end



#p max_rotation(735291) == 321579
#p max_rotation(3) == 3
#p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845