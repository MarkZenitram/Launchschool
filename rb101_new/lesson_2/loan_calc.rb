# Three inputs : loan amount, apr, loan duration
#Outputs: monthly interest rate, loan duration in months, monthly payment
#Loan formula: m = p * (j / (1 - (1 + j)**(-n)))
#m = monthly payment
#p = loan amount
#j = monthly interest rate
#n = loan duration in months

def prompt(msg)
  puts "=> #{msg}"
end

def int_float_validation(number)
  number.to_i.to_s == number || number.to_f.to_s == number
end

loop do
  loan_total = ''
  prompt('Please enter your total loan amount')

  loop do
    loan_total = gets.chomp
    if int_float_validation(loan_total)
      break
    else
      prompt("Please select a valid number")
    end
  end

  apr = ''
  prompt("Please enter your interest rate")

  loop do
    apr = gets.chomp
    if int_float_validation(apr)  && apr.to_f > 0
      apr = (apr.to_f/12)/100
      break
    else
      prompt("Please enter a number > 0. Example: 5 corresponds to 5%")
    end
  end

  prompt('Please enter the duration of your loan in years')
  loan_duration = ''

  loop do
    loan_duration = gets.chomp

    if int_float_validation(loan_duration) && loan_duration.to_i > 0
      loan_duration = loan_duration.to_i * 12
      break
    else
      prompt('Please enter a number greater than 0')
    end
  end

  payment = loan_total.to_i * (apr / (1 - (1 + apr)**(-loan_duration)))

  prompt("Your monthly payment is $#{format('%.2f', payment)}")
  prompt("Would you like to try another calculation?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for using the calculator')