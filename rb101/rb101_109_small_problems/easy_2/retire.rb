puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_time = Time.now
current_year = current_time.year

years_to_retirement = retirement_age - age

puts "It's #{current_year}. You will retire in #{current_year + years_to_retirement}"
puts "You only have #{years_to_retirement} years of work to go!"
