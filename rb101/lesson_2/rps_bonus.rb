VALID_CHOICES = %w[r p s l sp]

@winner = {
  'r'  => ['s', 'l'],
  'p'  => ['r', 'sp'],
  's'  => ['p', 'l'],
  'l'  => ['sp', 'p'],
  'sp' => ['r', 's']
}

def find_winner(player, computer)
  @winner.fetch(player).include?(computer)
end

def prompt(message)
  puts "=> #{message}"
end

options_prompt = <<-MSG
=> Welcome to rock, paper, scissors, lizard, spock!
=> Please select one of the following:
=> r for rock
=> p for paper
=> s for scissors
=> l for lizard
=> sp for Spock
MSG

puts options_prompt

player_choice = ''
player_win = 0
computer_win = 0

loop do
  loop do
    player_choice = gets.chomp.downcase
    if VALID_CHOICES.include?(player_choice)
      break
    else
      puts "Invalid choice!"
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("Your choice: #{player_choice}, Computer choice: #{computer_choice}")

  if player_choice == computer_choice
    puts "You tied!"
  elsif find_winner(player_choice, computer_choice)
    puts "You win!"
    player_win += 1
  else
    puts "Computer wins!"
    computer_win += 1
  end
  puts "Current scores: You: #{player_win} Computer: #{computer_win}"
  break if player_win == 3 || computer_win == 3
end

if player_win == 3 then puts "You win! Thanks for playing"
else
  puts "You lose! Better luck next time!"
end
