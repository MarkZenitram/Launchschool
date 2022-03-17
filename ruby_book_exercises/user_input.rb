def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int_one = nil
int_two = nil

loop do
  puts "Hello! Please enter two integers, one positive and one negative"
  int_one = gets.chomp.to_i
  puts "Hello! Please enter two integers, one positive and one negative"
  int_two = gets.chomp.to_i
  break if int_one * int_two < 0
  puts "Try again, one must be positive and one must be negative"
end


puts "#{int_one + int_two}, I've added your numbers!"

if valid_number?(int_one) == true && valid_number?(int_two) == true
  puts "#{int_one + int_two}, I've added your numbers!"
end

