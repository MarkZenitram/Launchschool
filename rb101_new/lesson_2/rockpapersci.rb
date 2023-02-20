VALID_CHOICES = %w(rock paper scissors)

def prompt(msg)
  puts("=> #{msg}")
end

choice = ''
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

prompt("You choice: #{choice} | Computer choice: #{computer_choice}")

