my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(number_array, mult_by)
  multiplied_array = []
  counter = 0

  loop do
    break if counter == number_array.size
    multiplied_array << number_array[counter] * mult_by

    counter += 1
  end
  multiplied_array
end



p multiply(my_numbers, 3)
p multiply(my_numbers, 3) == [3, 12, 9, 21, 6, 18]