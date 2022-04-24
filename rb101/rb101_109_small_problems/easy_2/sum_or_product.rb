counter = 0
total = 0
product_total = 1

puts "Please enter an integer greater than 0"
original_integer = gets.chomp.to_i

puts "Enter 's' to compuete the sum, 'p' to compute the product"
user_choice = gets.chomp

integer = original_integer
loop do
  break if integer < 1
  
  if user_choice == 's'
    total += integer
  else
    product_total *= integer
  end
  integer -= 1
  total
  product_total
end

if user_choice == 's'
  puts "The sum of the integers between 1 and #{original_integer} is #{total}"
else
  puts "The product of the integers between 1 and #{original_integer} is #{product_total}"
end




