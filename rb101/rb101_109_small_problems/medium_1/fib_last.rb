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

def fibonacci_last(n)
  p fib_number = fibonacci(n)
  last_digit = fib_number % 10
end

# fibonacci(1000007)

#p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
#p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
#p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
#p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4