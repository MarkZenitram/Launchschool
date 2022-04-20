def average(int_array)
  answer = 0
  counter = 0

  loop do
    break if counter == int_array.size
    answer = answer + int_array[counter]
    counter += 1
  end
  answer / int_array.size
end

def average2(some_array)
  answer2 = 0
  some_array.each do |number|
    answer2 = number + answer2
  end
  p answer2 / some_array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts average2([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average2([1, 5, 87, 45, 8, 8]) == 25
puts average2([9, 47, 23, 95, 16, 52]) == 40