VALID_CHOICES = %w[rock paper scissors lizard spock]
VALID_CHOICES_ABBR = %w[r p s l sp]

def prompt(msg)
  puts("=> #{msg}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') ||
  (first == 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'spock') ||
  (first == 'lizard' && second == 'paper') ||
  (first == 'spock' && second == 'rock') ||
  (first == 'spock' && second == 'scissors')
end

def choice_conversion(option)
  case option
  when 'r'
    option = 'rock'
  when 'p'
    option = 'paper'
  when 's'
    option = 'scissors'
  when 'l'
    option = 'lizard'
  when 'sp'
    option = 'spock'
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You win!')
  elsif win?(computer, player)
    prompt('Computer wins!')
  else
    prompt('Tie!')
  end
end

choice = ''
computer_wins = 0
player_wins = 0

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You may type: #{VALID_CHOICES_ABBR.join(', ')}")
    choice = gets.chomp

      choice = choice_conversion(choice)
      
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("Not a valid choice")
      end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("Your choice: #{choice} | Computer choice: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_wins += 1
  else win?(computer_choice, choice)
    computer_wins += 1
  end

  prompt("Total score: Player Wins: #{player_wins} | Computer Wins: #{computer_wins}")
  break if player_wins == 3 || computer_wins == 3
  
  prompt("Would you like to play again?")
  play_again = gets.chomp
  break unless play_again.start_with?('y')
end

prompt("Thanks for playing")