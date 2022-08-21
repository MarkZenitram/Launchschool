def rotate90(matrix)
  new_matrix = []
  mtx_size = matrix[0].size
  mtx_size.times { |_| new_matrix << []}
  total_arrays = 0 
  matrix.each {| | total_arrays += 1}

  index = 0
  matrix_index = 0

  loop do
    counter = 1

    loop do
      new_matrix[matrix_index] << matrix[total_arrays - counter][index]
      counter += 1
      break if counter > total_arrays
    end

    matrix_index += 1
    index += 1
    break if matrix_index == mtx_size
  end
  new_matrix
end




matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
