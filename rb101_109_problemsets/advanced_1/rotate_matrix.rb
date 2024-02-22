def rotate90(matrix)
  number_of_rows = matrix[0].size
  number_of_columns = matrix.size
  rotated_matrix = []
  row_index = 0

  loop do
    current_row = []
    starting_row = number_of_columns - 1

    loop do
      current_row << matrix[starting_row][row_index]
      starting_row -= 1
      break if starting_row < 0
    end
    row_index += 1
    rotated_matrix << current_row
    break if row_index == number_of_rows
  end
  p rotated_matrix
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