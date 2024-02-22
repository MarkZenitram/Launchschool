def transpose(matrix)
  new_matrix = []
  matrix[0].size.times { |_| new_matrix << [] }

  
  column = 0
  loop do
    row = 0
    loop do
      break if row == matrix.size
      new_matrix[column] << matrix[row][column]
      row += 1
    end
    column += 1
    break if column == matrix[0].size
  end
  p new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1]]) == [[1]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]