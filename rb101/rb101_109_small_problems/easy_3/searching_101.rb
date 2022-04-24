user_numbers = []

puts "Enter your first number:"
user_numbers << gets.chomp.to_i
puts "Enter your second number:"
user_numbers << gets.chomp.to_i
puts "Enter your third number:"
user_numbers << gets.chomp.to_i
puts "Enter your forth number:"
user_numbers << gets.chomp.to_i
puts "Enter your fifth number:"
user_numbers << gets.chomp.to_i
puts "Enter your sixth number:"
search_number = gets.chomp.to_i

if user_numbers.include?(search_number)
  puts "The number #{search_number} is included within #{user_numbers}."
else
  puts "The number #{search_number} is not within #{user_numbers}."
end


