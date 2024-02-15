def bubble_sort!(arr)
  iteration = 0
  max_iterations = arr.size - 1
  size_of_array = arr.size

  loop do
    index = 0
    index2 = 1

    loop do
      break if index2 == size_of_array

      if arr[index] > arr[index2]
        arr[index], arr[index2] = arr[index2], arr[index]
      end
      index += 1
      index2 += 1
    end

    iteration += 1
    break if iteration == max_iterations
  end
  arr
end





p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)