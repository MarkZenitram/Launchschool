def fibonacci(n)
  num_in_sequence = 2
  first = 1
  second = 1
  current = 0

  loop do
    current = first + second
    first = second
    second = current

    num_in_sequence += 1
    break if num_in_sequence == n
  end
  second
end

#p fibonacci(20) == 6765
#p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)

