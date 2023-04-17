def bubble_sort!(array)
  index = 0
  loop do
    index = 0
    swapped = false
    loop do
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        index += 1
        swapped = true
      else
        index += 1
      end
      break if index+1 == array.size
    end
    break if swapped == false
  end
  p array
end

bubble_sort!([5,3])
bubble_sort!([6, 2, 7, 1, 4])
bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))
