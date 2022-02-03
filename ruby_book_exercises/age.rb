#Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.


puts "Hello, how old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be: #{age+10}"
puts "In 20 years you will be: #{age+20}"
puts "In 30 years you will be: #{age+30}"
puts "In 40 years you will be: #{age+40}"

10.times {puts age}

#Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

puts "What is your first name? "
first_name = gets.chomp
puts "What is your last name? "
last_name = gets.chomp
puts first_name + " " + last_name


x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  x = y
end
puts x
