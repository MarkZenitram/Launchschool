def find_fibonacci_index_by_length(length)
  fib_array =[1, 1]
  index = 0

  loop do
    break if fib_array[index + 1].to_s.size == length
    fib_array << fib_array[index] + fib_array[index + 1]
    index += 1
  end
  fib_array.index(fib_array.last) + 1
end



find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847  