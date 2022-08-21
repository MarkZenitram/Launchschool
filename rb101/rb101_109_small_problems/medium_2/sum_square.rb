def sum_square_difference(int)
  sum = 0
  square = 0
  total = 0

  #sum of each number up to int squared
  1.upto(int) { |num| sum = sum + num }
  sum = sum ** 2

  #square of each number added
  1.upto(int) { |num| square = square + (num**2) }
  
  #difference of sum - square
  total = sum - square
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150