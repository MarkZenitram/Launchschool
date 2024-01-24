require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_PLAYER = ['Player', 'Computer'].sample

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
[[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
[[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end


def display_board(brd)
  system 'clear'
  prompt "You're a #{PLAYER_MARKER} and Computer is #{COMPUTER_MARKER}"
  prompt "First player will be randomly selected now...."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def find_winning_square(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def joinor(arr, punct = ', ', conj = 'or')
  if arr.size == 2
    arr.insert(-2, conj).join(' ')
  else
    arr.join(punct).insert(-2, conj + ' ')
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_winning_square(line, brd)
    if square
      break
    else
      WINNING_LINES.each do |line|
        square = find_at_risk_square(line, brd)
        break if square
      end
    end
  end

  if empty_squares(brd).include?(5)
    square = 5
  end

  if square == nil
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
       return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
       brd[line[1]] == COMPUTER_MARKER &&
       brd[line[2]] == COMPUTER_MARKER
       return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def place_piece!(brd, player)
  if player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current)
  if current == 'Player'
    current = 'Computer'
  else
    current = 'Player'
  end
end


player_wins = 0
computer_wins = 0
ties = 0

loop do
  board = initialize_board
  current_player = ['Player', 'Computer'].sample

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  if detect_winner(board) == 'Player'
    player_wins += 1
  elsif detect_winner(board) == 'Computer'
    computer_wins += 1
  else
   ties += 1
  end

  prompt "Current scores"
  prompt "You: #{player_wins} Computer: #{computer_wins} Ties: #{ties}"
  break if player_wins == 5 || computer_wins == 5


  prompt 'Play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank's for playing!"