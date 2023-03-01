VALID_CHOICES = %w[rock paper scissors]

def prompt(msg)
  puts("=> #{msg}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
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

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("Your choice: #{choice} | Computer choice: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Would you like to play again?")
  play_again = gets.chomp

  break unless play_again.start_with?('y')
end

prompt("Thanks for playing")