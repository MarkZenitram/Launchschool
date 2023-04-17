def sum_square_difference(num)
  num_arr = (1..num).to_a
  sum_squared = (num_arr.inject(:+)) ** 2
  squared_sum = num_arr.map { |num| num**2 }.inject(:+)
  result = sum_squared - squared_sum
  result
end




p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150