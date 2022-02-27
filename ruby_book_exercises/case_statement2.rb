#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Please select a number between 0 and 100: "
user_number = gets.chomp.to_i

if user_number <= 50 && user_number >= 0
  puts "Your number is between 0 and 50!"
elsif user_number > 50 && user_number <= 100
  puts "Your number is between 51 and 100!"
elsif user_number > 100
  puts "Your number is above 100!"
else
  puts "Please select a number greater than or equal to 0"
end
