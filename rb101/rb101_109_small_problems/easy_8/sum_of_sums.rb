def sum_of_sums(array)
  index = 0
  sum = 0

  loop do
    counter = 0
    loop do
      sum += array[index]
      counter += 1
      break if counter == (array.size - index)
    end
    index += 1
    break if index == array.size
  end
  sum
end



p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35