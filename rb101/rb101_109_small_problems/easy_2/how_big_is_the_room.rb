puts "Enter the length of the room in meters"
length = gets.chomp.to_i
puts "Enter the width of the room in meters"
width = gets.chomp.to_i

square_meters = length * width
square_feet = square_meters * 10.7639

puts "The area of the room #{square_meters.round(2)} square meters (#{square_feet.round(2)} square feet)."