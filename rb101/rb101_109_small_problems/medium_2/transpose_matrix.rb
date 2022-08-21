def transpose(matrix)
  new_matrix = [[], [], []]
  index = 0
  main_index = 0

  loop do
    break if main_index > 2
    counter = 0

    loop do
      break if counter > 2
      new_matrix[main_index] << matrix[counter][index]
      counter += 1
    end
    index += 1
    main_index += 1
  end
  new_matrix
end

matrice = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose(matrice)
#p new_matrix = transpose(matrice)
#p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

#def transpose_two(matrix)
#  result = []
#  (0..2).each do |column_index|
#    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#    p result << new_row
#  end
#  result
#end
#transpose_two(matrice)