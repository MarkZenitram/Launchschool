def fib_sequence(n)

  if n == 0
    1
  else
    n - fib_sequence(n - 1)
  end
end
