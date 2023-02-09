#Build a calcuator that does:
  # Asks for 2 numbers
  # Asks to add, subtract, multiply, or divide
  # prints result

require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')


def prompt(msg)
  puts "=> " + msg
end

def valid_number?(number)
  number != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = gets.chomp
  
  if name.empty?
    prompt("Make sure to enter a valid name")
  else
    break
  end
end

loop do

  number_1 = ''
  number_2 = ''

  loop do
    prompt("Please select a number")
    number_1 = gets.chomp.to_i

    if valid_number?(number_1)
      break
    else
      prompt("invalid number, try again")
    end
  end

  loop do
    prompt("Please select a second number")
    number_2 = gets.chomp.to_i

    if valid_number?(number_2)
      break
    else
      prompt("invalid number, try again")
    end
  end

  operator_prompt = <<-MSG
  Would you like to:
      1) add
      2) substract
      3) multiply
      4) divide
    MSG
  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      puts "Please select 1, 2, 3, or 4"
    end
  end

  prompt(operation_to_message(operator) + " your two numbers")

  result = case operator
          when '1'
            number_1 + number_2
          when '2'
            number_1 - number_2
          when '3'
            number_1 * number_2
          when '4'
            number_1 / number_2
  end
  prompt("The result is = #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')

end

