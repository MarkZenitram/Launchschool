puts "What is your name?"
user_name = gets.chomp

if user_name.include?("!")
  puts "Please don't yell at me #{user_name}"
else
  puts "Hello #{user_name}"
end
