def transpose(matrix)
  total_arrays = matrix.join.size / matrix[0].size
  output_arrays = matrix[0].size
  
  #new_matrix with empty version of input array
  new_matrix = []
  matrix[0].size.times { |_| new_matrix << []}

  index = 0
  main_index = 0
  row_counter = 0

  loop do
    break if main_index >= total_arrays
    counter = 0
    row_counter = 0

    loop do
      break if counter >= matrix[0].size
      p new_matrix[row_counter] << matrix[index][counter]
      counter += 1

      if output_arrays > 1
        row_counter += 1
      end
    end
    index += 1
    main_index += 1

  end
  p new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]