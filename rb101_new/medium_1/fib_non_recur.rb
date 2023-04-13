def fibonacci(nth)
  num1, num2 = 1, 1
  3.upto(nth) {num1, num2 = num2, (num1 + num2)}
  p num2
end




fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501