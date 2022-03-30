def valid_int?(input)
  input.to_i.to_s == input
end

def valid_float?(input)
  input.to_f.to_s == input
end

def valid_int_float?(input)
  valid_int?(input) || valid_float?(input)
end

def percentage?(input)
  input.to_f >= 0 && input.to_f <= 100
end

def monthly_apr(input)
  (input.to_f / 100) / 12
end

loan_amount = ''
loop do
  loop do
    puts 'Please enter your loan amount'
    loan_amount = gets.chomp
    if valid_int_float?(loan_amount)
      break
    else
      puts 'Invalid entry, try again'
    end
  end

  apr = ''
  loop do
    puts 'Enter your Annual Percentage Rate (APR) (0 to 100)'
    apr = gets.chomp
    if valid_int_float?(apr) && percentage?(apr)
      break
    else
      puts 'Invalid percentage. Try 0 to 100'
    end
  end

  loan_term_months = ''
  loop do
    puts 'How long is your loan term? (months)'
    loan_term_months = gets.chomp
    if valid_int_float?(loan_term_months)
      break
    else
      puts 'Invalid. Please select your loan term in months'
    end
  end

  monthly_interest = monthly_apr(apr)

  monthly_payment = loan_amount.to_f *
                    (monthly_interest /
                    (1 - (1 + monthly_interest)**(-loan_term_months.to_i)))

  puts "Your monthly payment will be #{monthly_payment}!"
  puts "Would you like to check another loan?"
  answer = gets.chomp

  break unless answer.downcase.start_with?("y")
end
