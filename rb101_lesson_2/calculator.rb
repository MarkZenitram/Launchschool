=begin
Create a calculator that: 
1. Asks user for TWO numbers
2. Asks for type of operation
  1. add
  2. substract
  3. multiply
  4. Divide
3. Displays results
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
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

prompt("Welcome to calculator! Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please enter a valid name!")
  else
    break
  end
end

number_one = ''
number_two = ''

loop do
  loop do
    prompt "Hello, please select a positive integer: "
    number_one = Kernel.gets().chomp()

    if valid_number?(number_one)
      break
    else
      prompt("Select again")
    end
  end

  loop do
    prompt "Please select another positive integer: "
    number_two = Kernel.gets().chomp()

    if valid_number?(number_two)
      break
    else
      prompt("Select again")
    end
  end

  operation_prompt = <<-MSG
    What operation would you like to perform:
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  
  prompt(operation_prompt)

  operation = ''

  loop do
    operation = Kernel.gets().chomp

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Must select 1, 2, 3, 4")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
          when "1"
            number_one.to_i + number_two.to_i
          when "2"
            number_one.to_i - number_two.to_i
          when "3"
            number_one.to_i * number_two.to_i 
          when "4"
            number_one.to_f / number_two.to_f
          end

  prompt "The result is: #{result}"

  prompt "Would you like to try again? (Y to try again)"
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt ("Thank you for using this calcaulator!")

