def bubble_sort!(array)
  cycle = 0

  loop do
    index = 0
    loop do
      break if index >= array.size - 1

      number_one = array[index]
      number_two = array[index + 1]
      if number_one > number_two
        array[index] = number_two
        array[index + 1] = number_one
        index += 1
      else
        index += 1
      end
    end
    cycle += 1
    break if cycle == array.size
  end
  p array
end





arr = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(arr)
arr == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)