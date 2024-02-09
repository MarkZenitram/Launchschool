def find_fibonacci_index_by_length(length)
  fib_array = [1, 1]
  fib1, fib2 = 1, 1

  loop do
    fib1, fib2 = fib2, (fib1 + fib2)
    fib_array << fib2
    break if length == fib2.to_s.size
  end
  fib_array.size
end




p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847