def stringy(positive_integer)
  number_string = ''
  counter = 0

  loop do
    break if counter == positive_integer

    if counter % 2 == 0
      number_string << '1'
    else
      number_string << '0'
    end
    counter += 1
  end

  number_string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


def stringy2(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'

