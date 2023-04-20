def transpose(matrix)
  index = 0
  second_index = 0
  new_matrix = [[],[],[]]
  loop do
    counter = 0
    break if index > 2
    loop do
      break if counter > 2
      p new_matrix[index] << matrix[counter][index]
      counter += 1
    end
    index += 1
  end
  p new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

transpose(matrix)

#new_matrix = transpose(matrix)

#p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
#p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]