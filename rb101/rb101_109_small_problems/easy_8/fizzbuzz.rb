def fizzbuzz(integer_one, integer_two)
  fizzbuzz_array = []

  loop do
    if integer_one % 3 == 0 && integer_one % 5 == 0
      fizzbuzz_array << "FizzBuzz"
    elsif integer_one % 5 == 0
      fizzbuzz_array << "Buzz"
    elsif integer_one % 3 == 0
      fizzbuzz_array << "Fizz"
    else
      fizzbuzz_array << integer_one
    end

    integer_one += 1
    break if integer_one > integer_two
  end
  p fizzbuzz_array.join(', ')
end




p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz