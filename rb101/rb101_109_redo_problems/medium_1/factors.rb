def factors(number)
  divisor = number
  factors = []

  loop do
    break if divisor == 0
    
    factors << divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(15)
p factors(5)