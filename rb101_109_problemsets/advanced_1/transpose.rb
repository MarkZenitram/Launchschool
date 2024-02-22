def transpose(matrix)
  new_matrix = []
  matrix.size.times { |_| new_matrix << [] }

  
  column = 0
  loop do
    row = 0
    loop do
      break if row == matrix.size
      new_matrix[column] << matrix[row][column]
      row += 1
    end
    column += 1
    break if column == matrix.size
  end
  p new_matrix
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]