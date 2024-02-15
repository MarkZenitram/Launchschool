def fibonacci(nth)
  fib1, fib2 = 1,1
  (nth-2).times { |_| fib1, fib2 = (fib1 + fib2)%10, fib1}
  fib1
end  

def fibonacci_last(nth)
  number = fibonacci(nth)
  last_digit = number.to_s[-1].to_i
end

last_digits = [0, 1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7, 7, 4, 1, 5, 
              6, 1, 7, 8, 5, 3, 8, 1, 9, 0, 9, 9, 8, 7, 5, 2, 7, 9, 6, 5, 
              1, 6, 7, 3, 0, 3, 3, 6, 9, 5, 4, 9, 3, 2, 5, 7, 2, 9, 1]

p fibonacci_last(last_digits[15 % 60])

#p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
#p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
#p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
#p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
#p fibonacci_last(123456789) # -> 4