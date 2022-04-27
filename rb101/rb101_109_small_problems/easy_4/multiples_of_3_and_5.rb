def multisum(number)
  counter = 0
  number_array = []
  downcount_number = 0

  loop do
    downcount_number = number - counter
    if downcount_number % 3 == 0 || downcount_number % 5 == 0
      number_array << downcount_number
    end
    counter += 1
    break if downcount_number == 0
  end
  p number_array.inject(:+)
end

    




p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168