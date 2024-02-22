def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
[[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
[[1, 5, 9], [3, 5, 7]]              # diagonals

fake_board = {1 => 'X', 2 => 'X', 3 => ' ', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => 'X', 9 => 'X'}

WINNING_LINES.each do |line|
  if fake_board.values_at(*line).count('X') == 2
    fake_board.select { |key, value| line.include?(key) && value == ' '}.keys.first
  else
    nil
  end
end

