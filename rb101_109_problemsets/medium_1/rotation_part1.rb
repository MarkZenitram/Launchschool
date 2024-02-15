def rotate_array(arr)
  rotated_array = arr[1..-1]
  rotated_array << arr[0]
  rotated_array
end

def rotate_rightmost_digits(digits, turns)
  if turns == 1
    return digits
  end

  arr_of_string_digits = digits.to_s.chars
  non_rotating = arr_of_string_digits[0..(-turns - 1)]
  rotated_digits = rotate_array(arr_of_string_digits[-turns, turns])

  rightmost_rotated = (non_rotating + rotated_digits).join.to_i
end

def max_rotation(digits)
  total_digits = digits.to_s.size
  max_rotations = total_digits - 1

  loop do
    digits = rotate_rightmost_digits(digits, total_digits)
    total_digits -= 1
    break if total_digits < 2
  end
  p digits
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845