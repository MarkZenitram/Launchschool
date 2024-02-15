def sum_square_difference(num)
  numbers = (1..num).to_a
  p sum_then_square = numbers.reduce(:+) ** 2
  square_then_sum = 0
  numbers.each { |numb| square_then_sum += numb ** 2 }
  p total = sum_then_square - square_then_sum
end




p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150