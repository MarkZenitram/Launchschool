def fizzbuzz(start, last)
  loop do
    if start % 3 == 0 && start % 5 == 0
      puts "FizzBuzz"
    elsif start % 3 == 0
      puts "Fizz"
    elsif start % 5 == 0
      puts "Buzz"
    else
      puts start
    end
    start += 1
    break if start > last
  end
end





fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz